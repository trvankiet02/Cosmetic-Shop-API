package vn.iotstar.controller.order_delivery;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import vn.iotstar.entity.CartItem;
import vn.iotstar.entity.Delivery;
import vn.iotstar.entity.Order;
import vn.iotstar.entity.OrderItem;
import vn.iotstar.entity.User;
import vn.iotstar.repository.CartItemRepository;
import vn.iotstar.repository.DeliveryRepository;
import vn.iotstar.repository.OrderItemRepository;
import vn.iotstar.repository.OrderRepository;
import vn.iotstar.repository.StoreRepository;
import vn.iotstar.repository.UserRepository;

@RestController
@RequestMapping(path = "/api/order")
public class OrderController {
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	private OrderItemRepository orderItemRepository;
	
	@Autowired
	private CartItemRepository cartItemRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired 
	private DeliveryRepository deliveryRepository;	
	
	@Autowired
	private StoreRepository storeRepository;
	
	@GetMapping
	public ResponseEntity<?> getAllOrder(){
		return ResponseEntity.ok().body(orderRepository.findAll());
	}
	
	@PostMapping(path = "/addOrder")
	public ResponseEntity<?> addOrder(@Validated @RequestParam("cartItemIdList") List<Integer> cartItemIdList,
			@Validated @RequestParam("userId") Integer userId,
			@Validated @RequestParam("deliveryId") Integer deliveryId,
			@Validated @RequestParam("address") String address,
			@Validated @RequestParam("phone") String phone){
		Optional<User> optUser = userRepository.findById(userId);
		Optional<Delivery> optDelivery = deliveryRepository.findById(deliveryId);
		List<CartItem> cartItemList = new ArrayList<>();
		Integer maxStoreId = -1;
		Integer tempStoreId;
		for (Integer cartItemId : cartItemIdList) {
			Optional<CartItem> optCartItem = cartItemRepository.findById(cartItemId);
			tempStoreId = optCartItem.get().getProduct().getStore().getId();
			if (tempStoreId > maxStoreId) {
				maxStoreId = tempStoreId;
			}
			cartItemList.add(optCartItem.get());
		}
		
		Order[] orderList = new Order[maxStoreId + 1];
		boolean[] flag = new boolean[maxStoreId + 1];
		Arrays.fill(flag, false);
		
		List<OrderItem> orderItemNotSave = new ArrayList<>();
		
		for (CartItem cartItem : cartItemList) {
			Integer storeId = cartItem.getProduct().getStore().getId();
			OrderItem orderItem = new OrderItem();
			if (flag[storeId] == false) {
				orderList[storeId] = new Order();
				orderList[storeId].setUser(optUser.get());
				orderList[storeId].setDelivery(optDelivery.get());
				orderList[storeId].setStore(storeRepository.findById(storeId).get());
				orderList[storeId].setAddress(address.trim());
				orderList[storeId].setPhone(phone.trim());
				flag[storeId] = true;
			} else {
				orderItem.setOrder(orderList[storeId]);
				orderItem.setCartItem(cartItem);
				
				orderItemNotSave.add(orderItem);
				/*
				 * List<OrderItem> orderItemOfOrder = orderList[storeId].getOrderItems(); if
				 * (orderItemOfOrder == null) { orderItemOfOrder = new ArrayList<>(); }
				 * orderItemOfOrder.add(orderItem);
				 * orderList[storeId].setOrderItems(orderItemOfOrder);
				 */
				
				
			}
			for (int i = 0; i < orderList.length; i++) {
				if (orderList[i] != null) {
					orderRepository.save(orderList[i]);
				}
			}
			for (OrderItem oI : orderItemNotSave) {
				orderItemRepository.save(oI);
			}
		}
		
		return ResponseEntity.ok().body(orderRepository.findByUser(optUser.get()));
	}

}

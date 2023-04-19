package vn.iotstar.controller.order_delivery;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;

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

	private EntityManager entityManager;

	@GetMapping
	public ResponseEntity<?> getAllOrder() {
		return ResponseEntity.ok().body(orderRepository.findAll());
	}

	@PostMapping(path = "/addOrder")
	public ResponseEntity<?> addOrder(@Validated @RequestParam("cartItemIdList") List<Integer> cartItemIdList,
			@Validated @RequestParam("userId") Integer userId,
			@Validated @RequestParam("deliveryId") Integer deliveryId,
			@Validated @RequestParam("address") String address, @Validated @RequestParam("phone") String phone) {
		Optional<User> optUser = userRepository.findById(userId);
		Optional<Delivery> optDelivery = deliveryRepository.findById(deliveryId);
		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());
		List<CartItem> cartItemList = new ArrayList<>();
		List<OrderItem> orderItemList = new ArrayList<>();
		Integer maxStoreId = -1;
		Integer tempStoreId;
		for (Integer cartItemId : cartItemIdList) {
			Optional<CartItem> optCartItem = cartItemRepository.findById(cartItemId);
			tempStoreId = optCartItem.get().getProduct().getStore().getId();
			if (tempStoreId > maxStoreId) {
				maxStoreId = tempStoreId;
			}
			cartItemList.add(optCartItem.get());
			
			OrderItem orderItem = new OrderItem();
			orderItem.setCartItem(optCartItem.get());
			orderItem.setCreateAt(timestamp);
			
			orderItemList.add(orderItem);
			
			optCartItem.get().setIsPayed(true);
			cartItemRepository.save(optCartItem.get());
		}

		Order[] orderList = new Order[maxStoreId + 1];
		boolean[] flag = new boolean[maxStoreId + 1];
		Arrays.fill(flag, false);

		for (CartItem cartItem : cartItemList) {
			Integer storeId = cartItem.getProduct().getStore().getId();
			if (flag[storeId] == false) {
				orderList[storeId] = new Order();
				orderList[storeId].setUser(optUser.get());
				orderList[storeId].setDelivery(optDelivery.get());
				orderList[storeId].setStore(storeRepository.findById(storeId).get());
				orderList[storeId].setAddress(address.trim());
				orderList[storeId].setPhone(phone.trim());
				orderList[storeId].setPrice(priceEstimate(cartItemList, storeId));
				orderList[storeId].setCreateAt(timestamp);

				flag[storeId] = true;
				// luu lai cac orderItem (list)-> so sanh voi order.getorderItem -> luu
			} 
		}
		for (int i = 0; i < orderList.length; i++) {
			if (orderList[i] != null) {
				orderRepository.save(orderList[i]);
			}
		}
		
		List<Order> orders = orderRepository.findAll();
		for (Order o : orders) {
			for (OrderItem oI : orderItemList) {
				if (o.getCreateAt().equals(o.getCreateAt())){
					oI.setOrder(o);
					oI.setUnitPrice(oI.getCartItem().getQuantity() * oI.getCartItem().getProduct().getPromotionalPrice());
					orderItemRepository.save(oI);
				}
			}		
		}

		return ResponseEntity.ok().body("Suscess");
	}
	public Integer priceEstimate(List<CartItem> cartItemList, Integer storeId) {
		Integer sum = 0;
		for (CartItem cartItem: cartItemList) {
			if (cartItem.getProduct().getStore().getId() == storeId) {
				sum += cartItem.getQuantity() * cartItem.getProduct().getPromotionalPrice();
			}
		}
		return sum;
	}

}

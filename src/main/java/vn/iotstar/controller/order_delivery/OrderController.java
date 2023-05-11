package vn.iotstar.controller.order_delivery;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import vn.iotstar.Response;
import vn.iotstar.entity.CartItem;
import vn.iotstar.entity.Delivery;
import vn.iotstar.entity.Order;
import vn.iotstar.entity.OrderItem;
import vn.iotstar.entity.Product;
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
	public ResponseEntity<?> getAllOrder() {
		return new ResponseEntity<Response>(new Response(true, "Thành công", orderRepository.findAll()), HttpStatus.OK);
	}

	@PostMapping(path = "/getOrder")
	public ResponseEntity<?> getOrder(@Validated @RequestParam("userId") Integer userId,
			@Validated @RequestParam("status") Integer status) {
		Optional<User> optUser = userRepository.findById(userId);

		//return ResponseEntity.ok().body(orderRepository.findByUserAndStatus(optUser.get(), status));
		return new ResponseEntity<Response>(new Response(true, "Thành công", orderRepository.findByUserAndStatus(optUser.get(), status)), HttpStatus.OK);
	}
	
	@PostMapping(path = "/addOrder")
	public ResponseEntity<?> addOrder(@Validated @RequestParam("cartItemIdList") List<Integer> cartItemIdList,
	                                   @Validated @RequestParam("userId") Integer userId,
	                                   @Validated @RequestParam("name") String name,
	                                   @Validated @RequestParam("deliveryId") Integer deliveryId,
	                                   @Validated @RequestParam("address") String address,
	                                   @Validated @RequestParam("phone") String phone) {
	    Optional<User> optUser = userRepository.findById(userId);
	    Optional<Delivery> optDelivery = deliveryRepository.findById(deliveryId);
	    Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());
	    List<CartItem> cartItemList = new ArrayList<>();
	    List<Order> orderList = new ArrayList<>();

	    // Lấy danh sách các CartItem từ danh sách ID được cung cấp
	    for (Integer cartItemId : cartItemIdList) {
	        Optional<CartItem> optCartItem = cartItemRepository.findById(cartItemId);
	        cartItemList.add(optCartItem.get());
	    }

	    // Tạo danh sách các đơn hàng dựa trên Store và lưu vào cơ sở dữ liệu
	    Map<Integer, Order> orderMap = new HashMap<>();
	    for (CartItem cartItem : cartItemList) {
	        Integer storeId = cartItem.getProduct().getStore().getId();
	        if (!orderMap.containsKey(storeId)) {
	            Order order = new Order();
	            order.setUser(optUser.get());
	            order.setDelivery(optDelivery.get());
	            order.setStore(storeRepository.findById(storeId).get());
	            order.setAddress(address.trim());
	            order.setName(name.trim());
	            order.setPhone(phone.trim());
	            order.setPrice(priceEstimate(cartItemList, storeId));
	            order.setStatus(1);
	            order.setCreateAt(timestamp);
	            orderMap.put(storeId, order);
	        }
	        
	    }
	    for (Order order : orderMap.values()) {
	        orderList.add(orderRepository.save(order));
	    }

	    // Tạo danh sách các OrderItem và lưu vào cơ sở dữ liệu
	    for (CartItem cartItem : cartItemList) {
	        OrderItem orderItem = new OrderItem();
	        orderItem.setProduct(cartItem.getProduct());
	        orderItem.setSize(cartItem.getSize());
	        orderItem.setQuantity(cartItem.getQuantity());
	        orderItem.setCreateAt(timestamp);
	        orderItem.setUnitPrice(cartItem.getQuantity() * cartItem.getProduct().getPromotionalPrice());
	        Order order = orderMap.get(cartItem.getProduct().getStore().getId());
	        orderItem.setOrder(order);
	        orderItemRepository.save(orderItem);
	    }

	    // Cập nhật trạng thái của các CartItem
	    for (CartItem cartItem : cartItemList) {
	        cartItemRepository.delete(cartItem);
	    }
	    //return ResponseEntity.ok().body(orderRepository.findByCreateAt(timestamp));
	    return new ResponseEntity<Response>(new Response(true, "Thành công", orderRepository.findByCreateAt(timestamp)), HttpStatus.OK);
	}


	public Integer priceEstimate(List<CartItem> cartItemList, Integer storeId) {
		Integer sum = 0;
		for (CartItem cartItem : cartItemList) {
			if (cartItem.getProduct().getStore().getId() == storeId) {
				sum += cartItem.getQuantity() * cartItem.getProduct().getPromotionalPrice();
			}
		}
		return sum;
	}

}

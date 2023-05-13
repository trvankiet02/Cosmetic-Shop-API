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
import org.springframework.web.bind.annotation.PathVariable;
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
import vn.iotstar.entity.ProductQuantity;
import vn.iotstar.entity.User;
import vn.iotstar.entity.Voucher;
import vn.iotstar.repository.CartItemRepository;
import vn.iotstar.repository.DeliveryRepository;
import vn.iotstar.repository.OrderItemRepository;
import vn.iotstar.repository.OrderRepository;
import vn.iotstar.repository.ProductQuantityRepository;
import vn.iotstar.repository.ProductRepository;
import vn.iotstar.repository.StoreRepository;
import vn.iotstar.repository.UserRepository;
import vn.iotstar.repository.VoucherRepository;

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
	
	@Autowired 
	private VoucherRepository voucherRepository;
	
	@Autowired
	private ProductQuantityRepository productQuantityRepository;
	
	@Autowired
	private ProductRepository productRepository;
	

	@GetMapping
	public ResponseEntity<?> getAllOrder() {
		return new ResponseEntity<Response>(new Response(true, "Thành công", orderRepository.findAll()), HttpStatus.OK);
	}
	
	@GetMapping(path = "/{id}")
	public ResponseEntity<?> getOrderDetail(@PathVariable Integer id){
		Optional<Order> optOrder = orderRepository.findById(id);
		if (optOrder.isPresent()) {
			return new ResponseEntity<Response>(new Response(true, "Thành công", optOrder.get()), HttpStatus.OK);
		}
		else {
			return new ResponseEntity<Response>(new Response(false, "Đơn hàng không tồn tại", null), HttpStatus.BAD_REQUEST);
		}
	}

	@PostMapping(path = "/getOrder")
	public ResponseEntity<?> getOrder(@Validated @RequestParam("userId") Integer userId,
			@RequestParam(value = "status", required = false) Integer status) {
		Optional<User> optUser = userRepository.findById(userId);
		if (optUser.isPresent()) {
			if (status == null) {
				return new ResponseEntity<Response>(
						new Response(true, "Thành công", orderRepository.findByUser(optUser.get())),
						HttpStatus.OK);
			} else {
				// return
				// ResponseEntity.ok().body(orderRepository.findByUserAndStatus(optUser.get(),
				// status));
				return new ResponseEntity<Response>(
						new Response(true, "Thành công", orderRepository.findByUserAndStatus(optUser.get(), status)),
						HttpStatus.OK);
			}
		} else {
			return new ResponseEntity<Response>(new Response(false, "Người dùng không tồn tại", null), HttpStatus.BAD_REQUEST);
			
		}
	}
	@PostMapping(path="/cancelOrder")
	public ResponseEntity<?> cancelOrder(@Validated @RequestParam("orderId") Integer orderId){
		Optional<Order> optOrder = orderRepository.findById(orderId);
		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());
		optOrder.get().setStatus(0);
		optOrder.get().setUpdateAt(timestamp);
		for (OrderItem orderItem: optOrder.get().getOrderItems()) {
			Product product = orderItem.getProduct();
			for (ProductQuantity productQuantity: product.getProductQuantities()) {
				if (productQuantity.getSize().trim().equals(orderItem.getSize().trim())) {
					productQuantity.setQuantity(productQuantity.getQuantity() + orderItem.getQuantity());
					productQuantity.setUpdateAt(timestamp);
					productQuantityRepository.save(productQuantity);
				}
			}
		}
		orderRepository.save(optOrder.get());
		return new ResponseEntity<Response>(new Response(true, "Huỷ đơn thành công", optOrder.get()), HttpStatus.OK);
	}
	@PostMapping(path = "/receiveOrder")
	public ResponseEntity<?> receiveOrder(@Validated @RequestParam("orderId") Integer orderId){
		Optional<Order> optOrder = orderRepository.findById(orderId);
		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());
		optOrder.get().setStatus(4);
		optOrder.get().setUpdateAt(timestamp);
		for (OrderItem orderItem: optOrder.get().getOrderItems()) {
			Product product = orderItem.getProduct();
			product.setSold(product.getSold() + orderItem.getQuantity());
			productRepository.save(product);
		}
		orderRepository.save(optOrder.get());
		return new ResponseEntity<Response>(new Response(true, "Nhận hàng thành công", optOrder.get()), HttpStatus.OK);
	}

	@PostMapping(path = "/addOrder")
	public ResponseEntity<?> addOrder(@Validated @RequestParam("cartItemIdList") List<Integer> cartItemIdList,
			@Validated @RequestParam("userId") Integer userId, @Validated @RequestParam("name") String name,
			@Validated @RequestParam("deliveryId") Integer deliveryId,
			@Validated @RequestParam("address") String address, @Validated @RequestParam("phone") String phone,
			@Validated @RequestParam("voucherId") Integer voucherId,
			@Validated @RequestParam("totalPrice") Integer totalPrice) {
		// tong price*quantity cua tung mon * 110% - phieu giam gia = unit price
		//total price truyền vào
		Optional<User> optUser = userRepository.findById(userId);
		Optional<Voucher> optVoucher = voucherRepository.findById(voucherId);
		Optional<Delivery> optDelivery = deliveryRepository.findById(deliveryId);
		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());
		List<CartItem> cartItemList = new ArrayList<>();
		List<Order> orderList = new ArrayList<>();

		// Lấy danh sách các CartItem từ danh sách ID được cung cấp
		for (Integer cartItemId : cartItemIdList) {
			Optional<CartItem> optCartItem = cartItemRepository.findById(cartItemId);
			cartItemList.add(optCartItem.get());
			Product product = optCartItem.get().getProduct();
			for (ProductQuantity productQuantity: product.getProductQuantities()) {
				if (productQuantity.getSize().trim().equals(optCartItem.get().getSize().trim())) {
					productQuantity.setQuantity(productQuantity.getQuantity() - optCartItem.get().getQuantity());
					productQuantity.setUpdateAt(timestamp);
					productQuantityRepository.save(productQuantity);
				}
			}
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
				order.setPrice(priceEstimate(cartItemList, storeId, optVoucher));
				order.setStatus(1);
				order.setVoucher(optVoucher.get());
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
			Integer unitPrice = cartItem.getQuantity() * cartItem.getProduct().getPromotionalPrice();
			if (unitPrice*optVoucher.get().getDiscount() > optVoucher.get().getMaxDiscount()) {
				orderItem.setUnitPrice((int) (unitPrice*1.1 - optVoucher.get().getMaxDiscount()));
			} else {
				orderItem.setUnitPrice((int) (unitPrice*1.1*(1 - optVoucher.get().getDiscount())));
			}
			Order order = orderMap.get(cartItem.getProduct().getStore().getId());
			orderItem.setOrder(order);
			orderItemRepository.save(orderItem);
		}

		// Cập nhật trạng thái của các CartItem
		for (CartItem cartItem : cartItemList) {
			cartItemRepository.delete(cartItem);
		}
		optVoucher.get().setQuantity(optVoucher.get().getQuantity() - 1);
		voucherRepository.save(optVoucher.get());
		// return ResponseEntity.ok().body(orderRepository.findByCreateAt(timestamp));
		return new ResponseEntity<Response>(new Response(true, "Thành công", orderRepository.findByCreateAt(timestamp)),
				HttpStatus.OK);
	}

	public Integer priceEstimate(List<CartItem> cartItemList, Integer storeId, Optional<Voucher> optVoucher) {
		Integer sum = 0;
		for (CartItem cartItem : cartItemList) {
			if (cartItem.getProduct().getStore().getId() == storeId) {
				Integer unitPrice = cartItem.getQuantity() * cartItem.getProduct().getPromotionalPrice();
				if (unitPrice*optVoucher.get().getDiscount() > optVoucher.get().getMaxDiscount()) {
					sum += (int) (unitPrice*1.1 - optVoucher.get().getMaxDiscount());
				} else {
					sum += (int) (unitPrice*1.1*(1 - optVoucher.get().getDiscount()));
				}
			}
		}
		return sum;
	}

}

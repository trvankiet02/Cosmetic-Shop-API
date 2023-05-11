package vn.iotstar.controller.cart;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import vn.iotstar.Response;
import vn.iotstar.entity.Cart;
import vn.iotstar.entity.CartItem;
import vn.iotstar.entity.Product;
import vn.iotstar.entity.ProductQuantity;
import vn.iotstar.entity.Store;
import vn.iotstar.entity.User;
import vn.iotstar.repository.CartItemRepository;
import vn.iotstar.repository.CartRepository;
import vn.iotstar.repository.ProductQuantityRepository;
import vn.iotstar.repository.ProductRepository;
import vn.iotstar.repository.StoreRepository;
import vn.iotstar.repository.UserRepository;

@RestController
@RequestMapping(path = "/api/cartItem")
public class CartItemController {

	@Autowired
	private CartItemRepository cartItemRepository;
	
	@Autowired 
	private CartRepository cartRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private ProductQuantityRepository productQuantityRepository;
	
	@Autowired
	private StoreRepository storeRepository;
	
	//chưa sài
	@PostMapping(path = "/getCartItem")
	public ResponseEntity<?> getCartItem(){
		return ResponseEntity.ok().body(cartItemRepository.findAll());
	}
	
	@DeleteMapping(path = "/deleteCartItem")
	public ResponseEntity<?> deleteCartItem(@Validated @RequestParam("cartItemId") Integer cartItemId){
		Optional<CartItem> optCartItem = cartItemRepository.findById(cartItemId);
		
		if (optCartItem.isPresent()) {
			cartItemRepository.delete(optCartItem.get());
			//return ResponseEntity.ok().body("Xoá sản phẩm trong giỏ hàng thành công");
			return new ResponseEntity<Response>(new Response(true, "Xoá sản phẩm trong giỏ hàng thành công", null), HttpStatus.OK);
		}
		
		//return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Quá trình xử lý gặp lỗi");
		return new ResponseEntity<Response>(new Response(false, "Quá trình xử lý gặp lỗi", null), HttpStatus.BAD_REQUEST);
	}
	@PutMapping(path = "/updateCartItem")
	public ResponseEntity<?> updateCartItem(@RequestBody CartItem cartItem, @RequestParam("cartId") Integer cartId){
		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());
		cartItem.setCart(cartRepository.findById(cartId).get());
		cartItem.setUpdateAt(timestamp);
		cartItemRepository.save(cartItem);
		return new ResponseEntity<Response>(new Response(true, "Cập nhật thành công", cartItemRepository.findById(cartItem.getId())), HttpStatus.OK);
	}
	
	@PostMapping(path = "/addCartItem")
	public ResponseEntity<?> addCartItem(@Validated @RequestParam("userId") Integer userId,
										@Validated @RequestParam("productId") Integer productId,
										@Validated @RequestParam("size") String size,
										@Validated @RequestParam("quantity") Integer quantity){
		Optional<User> optUser = userRepository.findById(userId);
		Optional<Product> optProduct = productRepository.findById(productId);
		Optional<Store> optStore = storeRepository.findByProducts(optProduct.get());
		Optional<Cart> optCart = cartRepository.findByUserAndStore(optUser.get(), optStore.get());
		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());
		CartItem cartItem = new CartItem();
		Boolean flag = false;
		
		//neu cart null thi them cart
		if (optCart.isEmpty()) {
			optCart = optCart.ofNullable(new Cart());			
			
			optCart.get().setUser(optUser.get());
			optCart.get().setStore(optStore.get());
			optCart.get().setCreateAt(timestamp);
			

			cartRepository.save(optCart.get());
		}
		optCart = cartRepository.findByUserAndStore(optUser.get(), optStore.get());
		optCart.get().setUpdateAt(timestamp);
		
		//them cartitem vao cart
		List<CartItem> cartItemList = optCart.get().getCartItems();
		
		if (cartItemList != null) {
			for (CartItem cI : cartItemList) {
				if (cI.getProduct().getId() == productId && cI.getSize().trim().equals(size.trim())) {
					int newQuantity = cI.getQuantity() + quantity;
					
					//Kiem tra so luong them
					for (ProductQuantity pQ: cI.getProduct().getProductQuantities()) {
						if (pQ.getSize().trim().equals(size.trim())) {
							if (pQ.getQuantity() < newQuantity) {
								return new ResponseEntity<Response>(new Response(false, "Thêm thất bại", null), HttpStatus.BAD_REQUEST);
							}
						}
					}
					
					cI.setQuantity(newQuantity);
					cartItem = cI;
					flag = true;
					break;
				}
			}
		} else {
			cartItemList = new ArrayList<>();
		}
		if (flag == false) {
			cartItem.setCreateAt(timestamp);
			cartItem.setProduct(optProduct.get());
			cartItem.setCart(optCart.get());
			cartItem.setQuantity(quantity);
			cartItem.setSize(size.trim());
			
			cartItemRepository.save(cartItem);
		}
		
		cartRepository.save(optCart.get());
		
		//return ResponseEntity.ok().body(cartItem);
		return new ResponseEntity<Response>(new Response(true, "Thành công", cartItem), HttpStatus.OK);
	}
}

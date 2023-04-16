package vn.iotstar.controller.cart;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

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
	
	@PostMapping(path = "/getCartItem")
	public ResponseEntity<?> getCartItem(){
		return ResponseEntity.ok().body(cartItemRepository.findAll());
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
		
		if (optCart.isEmpty()) {
			optCart = optCart.ofNullable(new Cart());			
			
			optCart.get().setUser(optUser.get());
			optCart.get().setStore(optStore.get());
			optCart.get().setCreateAt(timestamp);
			

			cartRepository.save(optCart.get());
		} 	
		optCart = cartRepository.findByUserAndStore(optUser.get(), optStore.get());
		optCart.get().setUpdateAt(timestamp);
		
		List<CartItem> cartItemList = optCart.get().getCartItems();
		
		if (cartItemList.size() != 0) {
			for (CartItem cI : cartItemList) {
				if (cI.getProduct().getId() == productId && cI.getSize().trim().equals(size.trim())) {
					cI.setQuantity(cI.getQuantity() + quantity);
					cartItem = cI;
					flag = true;
					break;
				}
			}
		} 
		if (flag == false) {
			cartItem.setCreateAt(timestamp);
			cartItem.setProduct(optProduct.get());
			cartItem.setCart(optCart.get());
			cartItem.setQuantity(quantity);
			cartItem.setSize(size);
			
			cartItemRepository.save(cartItem);
		}
		
		cartRepository.save(optCart.get());
		
		return ResponseEntity.ok().body(cartItem);
	}
}

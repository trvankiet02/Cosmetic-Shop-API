package vn.iotstar.controller.cart;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import vn.iotstar.entity.User;
import vn.iotstar.repository.CartRepository;
import vn.iotstar.repository.UserRepository;

@RestController
@RequestMapping(path = "/api/cart")
public class CartController {

	@Autowired
	private CartRepository cartRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@PostMapping(path = "/getCart")
	public ResponseEntity<?> getCart(@Validated @RequestParam("userId") Integer userId){
		Optional<User> user = userRepository.findById(userId);
		if (user.isPresent()) {
			return ResponseEntity.ok().body(user.get().getCarts());
		} else {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Mã khách hàng không tồn tại");
		}
	}
	
	
}

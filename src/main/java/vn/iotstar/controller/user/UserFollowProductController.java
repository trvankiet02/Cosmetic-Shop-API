package vn.iotstar.controller.user;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import vn.iotstar.Response;
import vn.iotstar.entity.User;
import vn.iotstar.entity.UserFollowProduct;
import vn.iotstar.repository.UserFollowProductRepository;
import vn.iotstar.repository.UserRepository;

@RestController
@RequestMapping(path = "/api/userFollowProduct")
public class UserFollowProductController {

	@Autowired
	private UserFollowProductRepository userFollowProductRepository;
	
	@Autowired 
	private UserRepository userRepository;
	
	@PostMapping(path = "/getUserFollowProduct")
	public ResponseEntity<?> getUserFollowProduct(@Validated @RequestParam("userId") Integer userId){
		Optional<User> optUser = userRepository.findById(userId);
		if (optUser.isEmpty()) {
			return new ResponseEntity<Response>(new Response(true, "Người dùng không tồn tại", null), HttpStatus.BAD_REQUEST);
		} else {
			List<UserFollowProduct> userFollowProductList = userFollowProductRepository.findByUser(optUser.get());
			return new ResponseEntity<Response>(new Response(true, "Thành công", userFollowProductList), HttpStatus.OK);
		}
	}
}

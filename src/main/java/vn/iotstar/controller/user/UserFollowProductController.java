package vn.iotstar.controller.user;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import vn.iotstar.Response;
import vn.iotstar.entity.Product;
import vn.iotstar.entity.User;
import vn.iotstar.entity.UserFollowProduct;
import vn.iotstar.repository.ProductRepository;
import vn.iotstar.repository.UserFollowProductRepository;
import vn.iotstar.repository.UserRepository;

@RestController
@RequestMapping(path = "/api/userFollowProduct")
public class UserFollowProductController {

	@Autowired
	private UserFollowProductRepository userFollowProductRepository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private ProductRepository productRepository;

	@PostMapping(path = "/getFollowProduct")
	public ResponseEntity<?> getUserFollowProduct(@Validated @RequestParam("userId") Integer userId) {
		Optional<User> optUser = userRepository.findById(userId);
		if (optUser.isEmpty()) {
			return new ResponseEntity<Response>(new Response(false, "Người dùng không tồn tại", null),
					HttpStatus.BAD_REQUEST);
		} else {
			List<UserFollowProduct> userFollowProductList = userFollowProductRepository.findByUser(optUser.get());
			return new ResponseEntity<Response>(new Response(true, "Thành công", userFollowProductList), HttpStatus.OK);
		}
	}

	@PostMapping(path = "/followOrUnfollow")
	public ResponseEntity<?> addUserFollowProduct(@Validated @RequestParam("userId") Integer userId,
			@Validated @RequestParam("productId") Integer productId) {

		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());

		Optional<User> optUser = userRepository.findById(userId);
		Optional<Product> optProduct = productRepository.findById(productId);

		Optional<UserFollowProduct> optUserFollowProduct = userFollowProductRepository
				.findByUserAndProduct(optUser.get(), optProduct.get());

		if (optUserFollowProduct.isPresent()) {
			userFollowProductRepository.delete(optUserFollowProduct.get());
			return new ResponseEntity<Response>(new Response(true, "Thành công", null), HttpStatus.OK);
		} else {
			UserFollowProduct userFollowProduct = new UserFollowProduct();

			if (optUser.isEmpty()) {
				return new ResponseEntity<Response>(new Response(false, "Người dùng không tồn tại", null),
						HttpStatus.BAD_REQUEST);
			} else {
				userFollowProduct.setCreateAt(timestamp);
				userFollowProduct.setProduct(optProduct.get());
				userFollowProduct.setUser(optUser.get());
				return new ResponseEntity<Response>(new Response(true, "Thành công", null), HttpStatus.OK);
			}
		}
	}
}

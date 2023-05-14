package vn.iotstar.controller.user;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
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
import vn.iotstar.entity.Product;
import vn.iotstar.entity.Store;
import vn.iotstar.entity.User;
import vn.iotstar.entity.UserFollowProduct;
import vn.iotstar.entity.UserFollowStore;
import vn.iotstar.repository.StoreRepository;
import vn.iotstar.repository.UserFollowStoreRepository;
import vn.iotstar.repository.UserRepository;

@RestController
@RequestMapping(path = "/api/userFollowStore")
public class UserFollowStoreController {

	@Autowired
	private UserFollowStoreRepository userFollowStoreRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private StoreRepository storeRepository;
	
	@PostMapping(path = "/followOrUnfollow")
	public ResponseEntity<?> addUserFollowStore(@Validated @RequestParam("userId") Integer userId,
			@Validated @RequestParam("storeId") Integer storeId) {

		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());

		Optional<User> optUser = userRepository.findById(userId);
		Optional<Store> optStore = storeRepository.findById(storeId);

		Optional<UserFollowStore> optUserFollowStore = userFollowStoreRepository
				.findByUserAndStore(optUser.get(), optStore.get());
		
		List<UserFollowStore> nullList = new ArrayList<>();

		if (optUserFollowStore.isPresent()) {
			userFollowStoreRepository.delete(optUserFollowStore.get());
			return new ResponseEntity<Response>(new Response(true, "Unfollow thành công", nullList), HttpStatus.OK);
		} else {
			UserFollowStore userFollowStore = new UserFollowStore();

			if (optUser.isEmpty()) {
				return new ResponseEntity<Response>(new Response(false, "Người dùng không tồn tại", null),
						HttpStatus.BAD_REQUEST);
			} else {
				userFollowStore.setCreateAt(timestamp);
				userFollowStore.setStore(optStore.get());
				userFollowStore.setUser(optUser.get());
				userFollowStoreRepository.save(userFollowStore);
				return new ResponseEntity<Response>(new Response(true, "Follow thành công", nullList), HttpStatus.OK);
			}
		}
	}
}

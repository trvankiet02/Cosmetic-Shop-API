package vn.iotstar.controller.store_voucher;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

import vn.iotstar.Response;
import vn.iotstar.entity.Store;
import vn.iotstar.entity.User;
import vn.iotstar.repository.StoreRepository;
import vn.iotstar.repository.UserRepository;

@RestController
@RequestMapping(path = "/api/store")
public class StoreController {

	@Autowired
	private StoreRepository storeRepository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private Cloudinary cloudinary;

	@PostMapping(path = "/getStore")
	public ResponseEntity<?> getStoreDetail(@Validated @RequestParam("storeId") Integer storeId) {
		Optional<Store> optStore = storeRepository.findById(storeId);
		if (optStore.isPresent()) {
			return new ResponseEntity<Response>(new Response(true, "Thành công", optStore.get()), HttpStatus.OK);
		} else {
			return new ResponseEntity<Response>(new Response(false, "Thất bại", null), HttpStatus.BAD_REQUEST);
		}
	}

	@PostMapping(path = "/getStoreByUser")
	public ResponseEntity<?> getStoreByUser(@Validated @RequestParam("userId") Integer userId) {
		Optional<User> optUser = userRepository.findById(userId);
		if (optUser.isPresent()) {
			if (optUser.get().getStore() != null) {
				return new ResponseEntity<Response>(new Response(true, "Thành công", optUser.get().getStore()),
						HttpStatus.OK);
			} else {
				return new ResponseEntity<Response>(
						new Response(false, "Người dùng chưa có cửa hàng hoặc chưa là người bán", null),
						HttpStatus.BAD_REQUEST);
			}
		} else {
			return new ResponseEntity<Response>(new Response(false, "Người dùng không tồn tại", null),
					HttpStatus.BAD_REQUEST);
		}
	}

	@PostMapping(path = "/signup")
	public ResponseEntity<?> storeSignUp(@Validated @RequestParam("userId") Integer userId,
			@Validated @RequestParam("storeName") String storeName,
			@Validated @RequestParam("storeEmail") String storeEmail,
			@Validated @RequestParam("storePhone") String storePhone, @RequestParam("image") MultipartFile image) {
		Optional<User> optUser = userRepository.findById(userId);
		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());

		if (optUser.isPresent()) {
			Store store = new Store();
			store.setName(storeName);
			store.setEmail(storeEmail);
			store.setPhone(storePhone);
			store.setCreateAt(timestamp);
			store.setUser(optUser.get());
			store.setEWallet(0);
			store.setRating(0);
			try {
				Map map = this.cloudinary.uploader().upload(image.getBytes(),
						ObjectUtils.asMap("resource_type", "auto"));
				String img = (String) map.get("secure_url");

				store.setStoreImage(img);
			} catch (Exception e) {
				e.printStackTrace();
			}
			storeRepository.save(store);
			optUser.get().setRole(1);
			userRepository.save(optUser.get());
			return new ResponseEntity<Response>(new Response(true, "Thành công", store), HttpStatus.OK);
		} else {
			return new ResponseEntity<Response>(new Response(false, "Thất bại", null), HttpStatus.BAD_REQUEST);
		}
	}

}

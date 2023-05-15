package vn.iotstar.controller.user;



import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

import vn.iotstar.Response;
import vn.iotstar.entity.User;
import vn.iotstar.repository.UserRepository;

@RestController
@RequestMapping("/api/user")
public class UserController {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private Cloudinary cloudinary;

	@GetMapping
	public List<User> findAllUsers() {
		return userRepository.findAll();
	}

	@GetMapping(path = "/{id}")
	public ResponseEntity<?> findUserById(@PathVariable(value = "id") Integer id) {
		Optional<User> user = userRepository.findById(id);

		if (user.isPresent()) {
			return new ResponseEntity<Response>(new Response(true, "Thanh cong", user.get()), HttpStatus.OK);
		} else {
			return ResponseEntity.notFound().build();
		}
	}

	@PostMapping(path = "/addUser")
	public User saveUser(@Validated @RequestBody User user) {
		return userRepository.save(user);
	}

	@PostMapping(path = "/getUser")
	public ResponseEntity<User> getUserById(@Validated @RequestBody User userRequest) {
		Optional<User> user = userRepository.findById(userRequest.getId());

		if (user.isPresent()) {
			return ResponseEntity.ok().body(user.get());
		} else {
			return ResponseEntity.notFound().build();
		}
	}
	@PostMapping(path = "/updateAvatar")
	public ResponseEntity<?> updateAvatar(@RequestParam("userId") Integer userId,
			@RequestParam("image") MultipartFile image){
		Optional<User> optUser = userRepository.findById(userId);
		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());

		if (optUser.isPresent()) {
			try {
				Map map = this.cloudinary.uploader().upload(image.getBytes(),
						ObjectUtils.asMap("resource_type", "auto"));
				String img = (String) map.get("secure_url");
				optUser.get().setProfileImage(img);
				optUser.get().setUpdateAt(timestamp);
				
				userRepository.save(optUser.get());
			} catch (Exception e) {
				e.printStackTrace();
			}
			return new ResponseEntity<Response>(new Response(true, "Cập nhật ảnh đại diện thành công", optUser.get()), HttpStatus.OK);
		}
		else {
			return new ResponseEntity<Response>(new Response(false, "Cập nhật thất bại", null), HttpStatus.BAD_REQUEST);
		}
	}
	
	@PostMapping(path = "/updateName")
	public ResponseEntity<?> updateUser(@Validated @RequestParam("userId") Integer userId, 
			@Validated @RequestParam("firstName") String firstName, 
			@Validated @RequestParam("lastName") String lastName){
		Optional<User> optUser = userRepository.findById(userId);
		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());
		
		if (optUser.isPresent()) {
			optUser.get().setFirstName(firstName);
			optUser.get().setLastName(lastName);
			optUser.get().setUpdateAt(timestamp);
			userRepository.save(optUser.get());
			return new ResponseEntity<Response>(new Response(true, "Cập nhật ảnh đại diện thành công", optUser.get()), HttpStatus.OK);
		} else {
			return new ResponseEntity<Response>(new Response(false, "Cập nhật thất bại", null), HttpStatus.BAD_REQUEST);
		}
	}
	
	@PostMapping(path = "/updatePhone")
	public ResponseEntity<?> updatePhone(@Validated @RequestParam("userId") Integer userId, 
			@Validated @RequestParam("phone") String phone){
		Optional<User> optUser = userRepository.findById(userId);
		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());
		
		if (optUser.isPresent()) {
			optUser.get().setPhone(phone);
			optUser.get().setUpdateAt(timestamp);
			userRepository.save(optUser.get());
			return new ResponseEntity<Response>(new Response(true, "Cập nhật số điện thoại thành công", optUser.get()), HttpStatus.OK);
		} else {
			return new ResponseEntity<Response>(new Response(false, "Cập nhật thất bại", null), HttpStatus.BAD_REQUEST);
		}	
	}
	@PostMapping(path = "/updatePassword")
	public ResponseEntity<?> updatePassword(@Validated @RequestParam("userId") Integer userId, 
			@Validated @RequestParam("password") String password){
		Optional<User> optUser = userRepository.findById(userId);
		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());
		
		if (optUser.isPresent()) {
			optUser.get().setPassword(password);
			optUser.get().setUpdateAt(timestamp);
			userRepository.save(optUser.get());
			return new ResponseEntity<Response>(new Response(true, "Cập nhật mật khẩu thành công", optUser.get()), HttpStatus.OK);
		} else {
			return new ResponseEntity<Response>(new Response(false, "Cập nhật thất bại", null), HttpStatus.BAD_REQUEST);
		}	
	}
	
}

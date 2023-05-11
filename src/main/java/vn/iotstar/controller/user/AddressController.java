package vn.iotstar.controller.user;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import vn.iotstar.Response;
import vn.iotstar.entity.Address;
import vn.iotstar.entity.User;
import vn.iotstar.repository.AddressRepository;
import vn.iotstar.repository.UserRepository;

@RestController
@RequestMapping(path = "/api/address")
public class AddressController {

	@Autowired
	private AddressRepository addressRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@PutMapping(path = "/addOrUpdate")
	public ResponseEntity<?> addOrUpdate(@RequestBody Address address, @RequestParam("userId") Integer userId){
		Optional<Address> optAddress = addressRepository.findById(address.getId());
		Optional<User> optUser = userRepository.findById(userId);
		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());
		String message = "";
		
		if (optAddress.isPresent()) {
			message = "Cập nhật thông tin địa chỉ thành công";
			address.setUpdateAt(timestamp);
			address.setUser(optUser.get());
			addressRepository.save(address);
		} else {
			address.setUser(optUser.get());
			address.setCreateAt(timestamp);
			addressRepository.save(address);
		}
		return new ResponseEntity<Response>(new Response(true, "Thành công", address), HttpStatus.OK);
	}
	
	@GetMapping (path = "/{id}")
	public ResponseEntity<?> getAddress(@PathVariable Integer id){
		return new ResponseEntity<Response>(new Response(true, "Thành công", addressRepository.findById(id).get()), HttpStatus.OK);
	}
}

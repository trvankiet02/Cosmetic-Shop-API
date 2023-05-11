package vn.iotstar.controller.user;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
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
		if (optUser.isEmpty()) {
			return new ResponseEntity<Response>(new Response(false, "Người dùng không tồn tại", null), HttpStatus.NOT_FOUND); 
		}
		
		if (optAddress.isPresent()) {
			message = "Cập nhật thông tin địa chỉ thành công";
			address.setCreateAt(optAddress.get().getCreateAt());
			address.setUpdateAt(timestamp);
			address.setUser(optUser.get());
		} else {
			message = "Thêm địa chỉ thành công";
			address.setUser(optUser.get());
			address.setCreateAt(timestamp);
		}
		if (address.getIsDefault() == true) {
			List<Address> addressList = addressRepository.findByUser(optUser.get());
			for (Address adr : addressList) {
				adr.setIsDefault(false);
				addressRepository.save(adr);
			}
		}
		return new ResponseEntity<Response>(new Response(true, message, address), HttpStatus.OK);
	}
	
	@GetMapping(path = "/{id}")
	public ResponseEntity<?> getAddress(@PathVariable Integer id){
	    Optional<Address> address = addressRepository.findById(id);
	    if (address.isPresent()) {
	        return new ResponseEntity<Response>(new Response(true, "Thành công", address.get()), HttpStatus.OK);
	    } else {
	        return new ResponseEntity<Response>(new Response(false, "Không tìm thấy địa chỉ", null), HttpStatus.NOT_FOUND);
	    }
	}
	
	@GetMapping(path = "/user/{id}")
	public ResponseEntity<?> getAddressByUserId(@PathVariable Integer id){
		Optional<User> optUser = userRepository.findById(id);
		if (optUser.isEmpty()) {
			return new ResponseEntity<Response>(new Response(false, "Không tìm thấy người dùng", null), HttpStatus.NOT_FOUND);
		} else {
			return new ResponseEntity<Response>(new Response(true, "Thành công", addressRepository.findByUser(optUser.get())), HttpStatus.OK);
		}
	}
	
	@DeleteMapping(path = "/{id}")
	public ResponseEntity<?> deleteAddress(@PathVariable Integer id){
		Optional<Address> optAddress = addressRepository.findById(id);
		if (optAddress.isEmpty()) {
			return new ResponseEntity<Response>(new Response(false, "Không tìm thấy địa chỉ", null), HttpStatus.NOT_FOUND);
		} else {
			addressRepository.delete(optAddress.get());
			return new ResponseEntity<Response>(new Response(true, "Xoá địa chỉ thành công", null), HttpStatus.OK);
		}
	}
}

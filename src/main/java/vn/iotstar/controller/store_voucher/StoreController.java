package vn.iotstar.controller.store_voucher;

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
import vn.iotstar.entity.Store;
import vn.iotstar.repository.StoreRepository;

@RestController
@RequestMapping(path = "/api/store")
public class StoreController {

	@Autowired
	private StoreRepository storeRepository;
	
	@PostMapping(path = "/getStore")
	public ResponseEntity<?> getStoreDetail(@Validated @RequestParam("storeId") Integer storeId){
		Optional<Store> optStore = storeRepository.findById(storeId);
		if (optStore.isPresent()) {
			return new ResponseEntity<Response>(new Response(true, "Thành công", optStore.get()), HttpStatus.OK);
		} else {
			return new ResponseEntity<Response>(new Response(false, "Thất bại", null), HttpStatus.BAD_REQUEST);
		}
	}
	
}

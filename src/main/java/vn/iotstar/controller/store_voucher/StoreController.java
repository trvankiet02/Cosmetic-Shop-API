package vn.iotstar.controller.store_voucher;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import vn.iotstar.repository.StoreRepository;

@RestController
@RequestMapping(path = "/api/store")
public class StoreController {

	@Autowired
	private StoreRepository storeRepository;
	
	@PostMapping(path = "/getStore")
	
}

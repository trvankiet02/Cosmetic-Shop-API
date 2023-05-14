package vn.iotstar.controller.order_delivery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import vn.iotstar.Response;
import vn.iotstar.repository.DeliveryRepository;

@RestController
@RequestMapping(path = "/api/delivery")
public class DeliveryController {

	@Autowired
	private DeliveryRepository deliveryRepository;
	
	@GetMapping
	public ResponseEntity<?> getAllDelivery(){
		return new ResponseEntity<Response>(new Response(true, "Thành công", deliveryRepository.findAll()), HttpStatus.OK);
	}
}

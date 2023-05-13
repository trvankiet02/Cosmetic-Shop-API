package vn.iotstar.controller.store_voucher;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import vn.iotstar.Response;
import vn.iotstar.repository.VoucherRepository;

@RestController
@RequestMapping(path = "/api/voucher")
public class VoucherController {
	@Autowired
	private VoucherRepository voucherRepository;

	@GetMapping
	private ResponseEntity<?> getAllVoucher(){
		return new ResponseEntity<Response>(new Response(true, "Thành công", voucherRepository.findAll()), HttpStatus.OK);
	}
}

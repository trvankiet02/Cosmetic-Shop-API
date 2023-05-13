package vn.iotstar.controller.store_voucher;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import vn.iotstar.Response;
import vn.iotstar.entity.Voucher;
import vn.iotstar.repository.VoucherRepository;

@RestController
@RequestMapping(path = "/api/voucher")
public class VoucherController {
	@Autowired
	private VoucherRepository voucherRepository;

	@GetMapping
	private ResponseEntity<?> getAllVoucher(){
		List<Voucher> voucherList = voucherRepository.findAll();
		List<Voucher> returnList = new ArrayList<>();
		Date now = new Date(System.currentTimeMillis());
		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());
		for (Voucher voucher: voucherList) {
			if (voucher.getExpireAt().after(now) && voucher.getStatus() == true) {
				returnList.add(voucher);
			}
		}
		return new ResponseEntity<Response>(new Response(true, "Thành công", returnList), HttpStatus.OK);
	}
}

package vn.iotstar.controller.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import vn.iotstar.repository.CartRepository;

@RestController
@RequestMapping(path = "/api/cart")
public class CartController {

	@Autowired
	private CartRepository cartRepository;
	
	
}

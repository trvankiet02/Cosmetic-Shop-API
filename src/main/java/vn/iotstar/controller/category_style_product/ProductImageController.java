package vn.iotstar.controller.category_style_product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cloudinary.Cloudinary;

import vn.iotstar.repository.ProductImageRepository;

@RestController
@RequestMapping(path = "/api/productImage")
public class ProductImageController {
	
	@Autowired
	private ProductImageRepository productImageRepository;
	
	@Autowired
	private Cloudinary cloudinary;
	
	@GetMapping
	public ResponseEntity<?> getAllProductImage(){
		return ResponseEntity.ok().body(productImageRepository.findAll());
	}

}

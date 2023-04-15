package vn.iotstar.controller.category_style_product;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import vn.iotstar.entity.Product;
import vn.iotstar.entity.ProductImage;
import vn.iotstar.entity.Style;
import vn.iotstar.repository.CategoryRepository;
import vn.iotstar.repository.ProductImageRepository;
import vn.iotstar.repository.ProductRepository;
import vn.iotstar.repository.StoreRepository;
import vn.iotstar.repository.StyleRepository;

@RestController
@RequestMapping(path = "/api/product")
public class ProductController {
	
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private ProductImageRepository productImageRepository;
	
	@Autowired
	private StoreRepository storeRepository;
	
	@Autowired
	private StyleRepository styleRepository;
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	@Autowired
	private Cloudinary cloudinary;
	
	@GetMapping
	public ResponseEntity<?> getAllStyle(){
		return ResponseEntity.ok().body(productRepository.findAll());
	}
	
	@PostMapping(path = "/getProduct")
	public ResponseEntity<?> getProduct(@Validated @RequestParam("id") Integer id){
		Optional<Product> product = productRepository.findById(id);
		
		if (product.isPresent()) {
			return ResponseEntity.ok().body(product.get());
		} else {
			return ResponseEntity.notFound().build();
		}
	}
	
	@PostMapping(path = "/addProduct")
	public ResponseEntity<?> addProduct(@Validated @RequestParam("productName") String productName,
			@RequestParam("productImages") MultipartFile[] productImages,
			@Validated @RequestParam("productPrice") Integer productPrice,
			@Validated @RequestParam("productPromotionalPrice") Integer promotionalPrice,
			@Validated @RequestParam("productDescription") String productDescription,
			@Validated @RequestParam("madeOf") String madeOf,
			@Validated @RequestParam("color") String color,
			@Validated @RequestParam("madeIn") String madeIn,
			@Validated @RequestParam("styleId") Integer styleId,
			@Validated @RequestParam("categoryId") Integer categoryId,
			@Validated @RequestParam("storeId") Integer storeId){
		Optional<Product> optProduct = productRepository.findByName(productName);
		
		if (optProduct.isPresent()) {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Sản phẩm này đã tồn tại trong hệ thống");
		} else {
			Product product = new Product();
			Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());

			try {
				product.setName(productName);
				product.setPrice(productPrice);
				product.setPromotionalPrice(promotionalPrice);
				product.setDescription(productDescription);
				product.setMadeOf(madeOf);
				product.setColor(color);
				product.setMadeIn(madeIn);
				product.setStore(storeRepository.findById(storeId).get());
				product.setCategory(categoryRepository.findById(categoryId).get());
				product.setStyle(styleRepository.findById(styleId).get());
				product.setCreateAt(timestamp);
				
				productRepository.save(product);
				
				optProduct = productRepository.findByName(product.getName());
				for (MultipartFile multipartFile : productImages) {
					ProductImage productImage = new ProductImage();
					productImage.setProduct(optProduct.get());
					try {
						Map map = this.cloudinary.uploader().upload(multipartFile.getBytes(),
								ObjectUtils.asMap("resource_type", "auto"));
						String img = (String) map.get("secure_url");
						
						productImage.setImage(img);
					} catch (Exception e) {
						e.printStackTrace();
					}
					productImage.setCreateAt(timestamp);
					
					productImageRepository.save(productImage);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return ResponseEntity.ok().body(product);
		}
	}
}

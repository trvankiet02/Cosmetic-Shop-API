package vn.iotstar.controller.category_style_product;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
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

import vn.iotstar.Response;
import vn.iotstar.entity.Category;
import vn.iotstar.entity.Product;
import vn.iotstar.entity.Style;
import vn.iotstar.repository.CategoryRepository;
import vn.iotstar.repository.ProductRepository;
import vn.iotstar.repository.StyleRepository;

@RestController
@RequestMapping(path = "/api/category")
public class CategoryController {

	@Autowired
	private CategoryRepository categoryRepository;
	
	@Autowired
	private StyleRepository styleRepository;
	
	@Autowired
	private ProductRepository productRepository;

	@Autowired
	private Cloudinary cloudinary;
	
	@GetMapping(path = "/getCategoryByIsSelling")
	public ResponseEntity<?> getCategoryByIsSelling(){
		return new ResponseEntity<Response>(new Response(true, "Thành công", categoryRepository.findByIsSelling(true)), HttpStatus.OK);
	}

	@GetMapping
	public ResponseEntity<?> getAllCategory() {
		//return ResponseEntity.ok().body(categoryRepository.findAll());
		return new ResponseEntity<Response>(new Response(true, "Thành công", categoryRepository.findAll()), HttpStatus.OK);
	}
	
	@PostMapping(path = "/getCategoryAndStyleOfProduct")
	public ResponseEntity<?> getCategoryAndStyleIfProduct(@Validated @RequestParam("productId") Integer productId){
		Optional<Product> optProduct = productRepository.findById(productId);
		Category category = optProduct.get().getCategory();
		
		Style style = optProduct.get().getStyle();
		List<Style> productStyleList = new ArrayList<>();
		productStyleList.add(style);
		category.setStyles(productStyleList);
		List<Category> productCategoryList = new ArrayList<>();
		productCategoryList.add(category);
		return new ResponseEntity<Response>(new Response(true, "Thành công", productCategoryList), HttpStatus.OK);		
	}

	@PostMapping(path = "/getCategory")
	public ResponseEntity<?> getCategory(@Validated @RequestParam("id") Integer id) {
		Optional<Category> category = categoryRepository.findById(id);

		if (category.isPresent()) {
			//return ResponseEntity.ok().body(category.get());
			return new ResponseEntity<Response>(new Response(true, "Thành công", category.get()), HttpStatus.OK);
		} else {
			//return ResponseEntity.notFound().build();
			return new ResponseEntity<Response>(new Response(false, "Thất bại", null), HttpStatus.NOT_FOUND);
		}
	}
	
	@PostMapping(path = "/getCategoryByStyle")
	public ResponseEntity<?> getCategoryByStyle(@Validated @RequestParam("styleId") Integer styleId){
		Optional<Style> optStyle = styleRepository.findById(styleId);
		
		if (optStyle.isEmpty()) {
			//return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Loại phong cách này không tồn tại trong hệ thống");
			return new ResponseEntity<Response>(new Response(false, "Loại phong cách này không tồn tại trong hệ thống", null), HttpStatus.NOT_FOUND);
		} else {
			List<Category> categoryList = categoryRepository.findByStyles(optStyle.get());
			if (categoryList.size() == 0) {
				//return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Loại sản phẩm này không có sản phẩm");
				return new ResponseEntity<Response>(new Response(false, "Loại sản phẩm này không có sản phẩm", null), HttpStatus.NOT_FOUND);
			} else {
				//return ResponseEntity.ok().body(categoryList);
				return new ResponseEntity<Response>(new Response(true, "Thành công", categoryList), HttpStatus.OK);
			}
		}
	}

	@PostMapping(path = "/addCategory")
	public ResponseEntity<?> addCategory(@Validated @RequestParam("categoryName") String categoryName,
			@Validated @RequestParam("categoryImage") MultipartFile categoryImage) {
		Optional<Category> optCategory = categoryRepository.findByName(categoryName);

		if (optCategory.isPresent()) {
			//return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Loại sản phẩm này đã tồn tại trong hệ thống");
			return new ResponseEntity<Response>(new Response(false, "Loại sản phẩm này đã tồn tại trong hệ thống", optCategory.get()), HttpStatus.BAD_REQUEST);
		} else {
			Category category = new Category();
			Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());

			try {
				Map map = this.cloudinary.uploader().upload(categoryImage.getBytes(),
						ObjectUtils.asMap("resource_type", "auto"));
				String img = (String) map.get("secure_url");
				System.out.println(img);

				category.setName(categoryName);
				category.setCategoryImage(img);
				category.setCreateAt(timestamp);

				categoryRepository.save(category);

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//return ResponseEntity.ok().body(category);
			return new ResponseEntity<Response>(new Response(true, "Thành công", category), HttpStatus.OK);
		}
	}
}

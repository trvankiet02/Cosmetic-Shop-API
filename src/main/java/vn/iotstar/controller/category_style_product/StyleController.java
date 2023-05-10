package vn.iotstar.controller.category_style_product;

import java.io.IOException;
import java.sql.Timestamp;
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
import vn.iotstar.entity.Style;
import vn.iotstar.repository.CategoryRepository;
import vn.iotstar.repository.StyleRepository;

@RestController
@RequestMapping(path = "/api/style")
public class StyleController {
	
	@Autowired
	private CategoryRepository categoryRepository;

	@Autowired
	private StyleRepository styleRepository;
	
	@Autowired
	private Cloudinary cloudinary;
	
	@GetMapping
	public ResponseEntity<?> getAllStyle(){
		//return ResponseEntity.ok().body(styleRepository.findAll());
		return new ResponseEntity<Response>(new Response(true, "Thành công", styleRepository.findAll()), HttpStatus.OK);
	}
	
	@PostMapping(path = "/getStyle")
	public ResponseEntity<?> getStyle(@Validated @RequestParam("id") Integer id){
		Optional<Style> style = styleRepository.findById(id);
		
		if (style.isPresent()) {
			//return ResponseEntity.ok().body(style.get());
			return new ResponseEntity<Response>(new Response(true, "Thành công", style.get()), HttpStatus.OK);
		} else {
			//return ResponseEntity.notFound().build();
			return new ResponseEntity<Response>(new Response(false, "Thất bại", null), HttpStatus.NOT_FOUND);
		}
	}
	
	@PostMapping(path = "/getStyleSelling")
	public ResponseEntity<?> getStyleIsSelling(@Validated @RequestParam("styleId") Integer styleId){
		Optional<Style> optStyle = styleRepository.findById(styleId);
		if (optStyle.isPresent()) {
			List<Style> styleList = styleRepository.findByCategoryAndIsSelling(optStyle.get().getCategory(), true);
			return new ResponseEntity<Response>(new Response(true, "Thành công", styleList), HttpStatus.OK);
			
		} else {
			return new ResponseEntity<Response>(new Response(false, "Thất bại", null), HttpStatus.BAD_REQUEST);
		}
	}
	
	@PostMapping(path = "/getStyleByCategory")
	public ResponseEntity<?> getStyleByCategory(@Validated @RequestParam("categoryId") Integer categoryId){
		Optional<Category> optCategory = categoryRepository.findById(categoryId);
		String message = "";
		
		if (optCategory.isEmpty()) {
			return new ResponseEntity<Response>(new Response(true, "Thất bại", null), HttpStatus.NOT_FOUND);
		} else {
			if (optCategory.get().getStyles().isEmpty()) {
				message = "Loại sản phẩm này không có phong cách sản phẩm";
			} else {
				message = "Thành công";
			}
		}
		return new ResponseEntity<Response>(new Response(true, message, optCategory.get().getStyles()), HttpStatus.OK);
	}
	
	@PostMapping(path = "/addStyle")
	public ResponseEntity<?> addStyle(@Validated @RequestParam("styleName") String styleName,
			@Validated @RequestParam("styleImage") MultipartFile styleImage,
			@Validated @RequestParam("categoryId") Integer categoryId) {
		Optional<Style> optStyle = styleRepository.findByName(styleName);

		if (optStyle.isPresent()) {
			//return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Phong cách sản phẩm này đã tồn tại trong hệ thống");
			return new ResponseEntity<Response>(new Response(false, "Phong cách sản phẩm này đã tồn tại trong hệ thống", optStyle.get()), HttpStatus.BAD_REQUEST);
		} else {
			Style style = new Style();
			Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());

			try {
				Map map = this.cloudinary.uploader().upload(styleImage.getBytes(),
						ObjectUtils.asMap("resource_type", "auto"));
				String img = (String) map.get("secure_url");

				style.setName(styleName);
				style.setStyleImage(img);
				style.setCategory(categoryRepository.findById(categoryId).get());
				style.setCreateAt(timestamp);

				styleRepository.save(style);

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//return ResponseEntity.ok().body(style);
			return new ResponseEntity<Response>(new Response(true, "Thành công", style), HttpStatus.OK);
		}
	}
	
	
	
	
	
}

package vn.iotstar.controller.category_style_product;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
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

import vn.iotstar.Response;
import vn.iotstar.entity.Category;
import vn.iotstar.entity.Product;
import vn.iotstar.entity.ProductImage;
import vn.iotstar.entity.Store;
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

	@PostMapping(path = "/getRandomProduct")
	ResponseEntity<?> getRandomProduct(@Validated @RequestParam("quantity") Integer quantity) {

		long totalCount = productRepository.count();

		int randomPage = new Random().nextInt((int) totalCount / (quantity));

		Pageable pageable = PageRequest.of(randomPage, quantity);

		Page<Product> randomProductPage = productRepository.findAll(pageable);

		return new ResponseEntity<Response>(new Response(true, "Thành công", randomProductPage.getContent()),
				HttpStatus.OK);

	}

	@GetMapping
	public ResponseEntity<?> getAllProduct() {
		return new ResponseEntity<Response>(new Response(true, "Thành công", productRepository.findByIsSelling(true)),
				HttpStatus.OK);
	}

	@PostMapping(path = "/getProductByStore")
	public ResponseEntity<?> getProductByStoreId(@Validated @RequestParam("storeId") Integer storeId) {
		Optional<Store> optStore = storeRepository.findById(storeId);

		if (optStore.isPresent()) {
			List<Product> productList = productRepository.findByStore(optStore.get());
			return new ResponseEntity<Response>(new Response(true, "Thành công", productList), HttpStatus.OK);
		} else {
			return new ResponseEntity<Response>(new Response(false, "Thất bại", null), HttpStatus.BAD_REQUEST);
		}
	}

	@PostMapping(path = "/getProduct")
	public ResponseEntity<?> getProduct(@Validated @RequestParam("id") Integer id) {
		Optional<Product> product = productRepository.findById(id);

		if (product.isPresent()) {
			// return ResponseEntity.ok().body(product.get());
			return new ResponseEntity<Response>(new Response(true, "Thành công", product.get()), HttpStatus.OK);
		} else {
			// return ResponseEntity.notFound().build();
			return new ResponseEntity<Response>(new Response(false, "Thất bại", null), HttpStatus.NOT_FOUND);
		}
	}

	@PostMapping(path = "/getProductByCategory")
	public ResponseEntity<?> getProductByCategory(@Validated @RequestParam("categoryId") Integer categoryId) {
		Optional<Category> optCategory = categoryRepository.findById(categoryId);
		String message = "";
		if (optCategory.isEmpty()) {
			// return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Loại sản phẩm này
			// không tồn tại trong hệ thống");
			return new ResponseEntity<Response>(
					new Response(false, "Loại sản phẩm này không tồn tại trong hệ thống", null), HttpStatus.NOT_FOUND);
		} else {
			List<Product> productList = productRepository.findByCategory(optCategory.get());
			if (productList.size() == 0) {
				// return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Loại sản phẩm này
				// không có sản phẩm");
				// return new ResponseEntity<Response>(new Response(true, "Loại sản phẩm này
				// không có sản phẩm", productList), HttpStatus.OK);
				message = "Loại sản phẩm này không có sản phẩm";
			} else {
				// return ResponseEntity.ok().body(productList);
				// return new ResponseEntity<Response>(new Response(true, "Thành công",
				// productList), HttpStatus.OK);
				message = "Thành công";
			}
			return new ResponseEntity<Response>(new Response(true, message, productList), HttpStatus.OK);
		}
	}

	@PostMapping(path = "/getProductByStyle")
	public ResponseEntity<?> getProductByStyle(@Validated @RequestParam("styleId") Integer styleId, @Validated @RequestParam("isSelling") Boolean isSelling) {
		Optional<Style> optStyle = styleRepository.findById(styleId);
		String message = "";
		if (optStyle.isEmpty()) {
			// return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Loại phong cách
			// này không tồn tại trong hệ thống");
			return new ResponseEntity<Response>(
					new Response(false, "Loại phong cách này không tồn tại trong hệ thống", null),
					HttpStatus.NOT_FOUND);
		} else {
			List<Product> productList = productRepository.findByStyleAndIsSelling(optStyle.get(), isSelling);
			if (productList.size() == 0) {
				// return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Loại sản phẩm này
				// không có sản phẩm");
				message = "Loại sản phẩm này không có sản phẩm";
			} else {
				// return ResponseEntity.ok().body(productList);
				message = "Thành công";
			}
			return new ResponseEntity<Response>(new Response(true, message, productList), HttpStatus.OK);
		}
	}

	@PostMapping(path = "/addProduct")
	public ResponseEntity<?> addProduct(@Validated @RequestParam("productName") String productName,
			@RequestParam("productImages") MultipartFile[] productImages,
			@Validated @RequestParam("productPrice") Integer productPrice,
			@Validated @RequestParam("productPromotionalPrice") Integer promotionalPrice,
			@Validated @RequestParam("productDescription") String productDescription,
			@Validated @RequestParam("madeOf") String madeOf, @Validated @RequestParam("color") String color,
			@Validated @RequestParam("madeIn") String madeIn, @Validated @RequestParam("styleId") Integer styleId,
			@Validated @RequestParam("categoryId") Integer categoryId,
			@Validated @RequestParam("storeId") Integer storeId) {
		Optional<Product> optProduct = productRepository.findByName(productName);

		if (optProduct.isPresent()) {
			// return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Sản phẩm này đã
			// tồn tại trong hệ thống");
			return new ResponseEntity<Response>(
					new Response(false, "Sản phẩm này đã tồn tại trong hệ thống", optProduct.get()),
					HttpStatus.BAD_REQUEST);
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
				product.setSold(0);
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
			// return ResponseEntity.ok().body(product);
			return new ResponseEntity<Response>(new Response(true, "Thành công", product), HttpStatus.OK);
		}
	}
}

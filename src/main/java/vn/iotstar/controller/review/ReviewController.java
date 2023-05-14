package vn.iotstar.controller.review;

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
import vn.iotstar.entity.CartItem;
import vn.iotstar.entity.Order;
import vn.iotstar.entity.OrderItem;
import vn.iotstar.entity.Product;
import vn.iotstar.entity.Review;
import vn.iotstar.entity.ReviewImage;
import vn.iotstar.entity.User;
import vn.iotstar.repository.CartItemRepository;
import vn.iotstar.repository.OrderItemRepository;
import vn.iotstar.repository.OrderRepository;
import vn.iotstar.repository.ProductRepository;
import vn.iotstar.repository.ReviewImageRepository;
import vn.iotstar.repository.ReviewRepository;
import vn.iotstar.repository.UserRepository;

@RestController
@RequestMapping(path = "/api/review")
public class ReviewController {

	@Autowired
	private ReviewRepository reviewRepository;

	@Autowired
	private CartItemRepository cartItemRepository;

	@Autowired
	private OrderItemRepository orderItemRepository;

	@Autowired
	private OrderRepository orderRepository;

	@Autowired
	private ProductRepository productRepository;

	@Autowired
	private ReviewImageRepository reviewImageRepository;

	@Autowired
	private Cloudinary cloudinary;

	@PostMapping(path = "/getReview")
	public ResponseEntity<?> getReview(@Validated @RequestParam("productId") Integer productId) {
	    // order -> orderItem -> cartItem -> product
	    Product product = productRepository.findById(productId).get();
	    List<Order> orders = new ArrayList<>();
	    for (OrderItem orderItem : product.getOrderItems()) {
	        if (orderItem != null) {
	            Order order = orderItem.getOrder();
	            if (order != null && order.getReview() != null) {
	                orders.add(order);
	            }
	        }
	    }

	    List<Review> reviews = new ArrayList<>();
	    for (Order order : orders) {
	        reviews.add(order.getReview());
	    }
	    
	    return new ResponseEntity<Response>(new Response(true, "Thành công", reviews), HttpStatus.OK);
	}

	@PostMapping(path = "/addReview")
	public ResponseEntity<?> addReview(@Validated @RequestParam("orderId") Integer orderId,
			@Validated @RequestParam("rating") float rating, 
			@Validated @RequestParam("content") String content,
			@RequestParam("reviewImages") List<MultipartFile> reviewImages) {
		Optional<Order> optOrder = orderRepository.findById(orderId);
		User user = optOrder.get().getUser();

		// luu danh sach san pham duoc review
		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());

		Review review = new Review();

		review.setOrder(optOrder.get());
		review.setUser(user);
		review.setContent(content.trim());
		review.setRating(rating);
		review.setCreateAt(timestamp);

		reviewRepository.save(review);

		Optional<Review> optReview = reviewRepository.findByOrder(optOrder.get());

		for (MultipartFile multipartFile : reviewImages) {
			ReviewImage reviewImage = new ReviewImage();
			reviewImage.setReview(optReview.get());
			try {
				Map map = this.cloudinary.uploader().upload(multipartFile.getBytes(),
						ObjectUtils.asMap("resource_type", "auto"));
				String img = (String) map.get("secure_url");

				reviewImage.setImage(img);
			} catch (Exception e) {
				e.printStackTrace();
			}
			reviewImage.setCreateAt(timestamp);

			reviewImageRepository.save(reviewImage);
		}
		//return ResponseEntity.ok().body(reviewRepository.findByOrder(optOrder.get()));
		return new ResponseEntity<Response>(new Response(true, "Thành công", reviewRepository.findByOrder(optOrder.get())), HttpStatus.OK);
	}
}

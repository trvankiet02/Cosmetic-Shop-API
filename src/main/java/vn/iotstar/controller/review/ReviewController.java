package vn.iotstar.controller.review;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

import vn.iotstar.entity.Order;
import vn.iotstar.entity.Review;
import vn.iotstar.entity.ReviewImage;
import vn.iotstar.entity.User;
import vn.iotstar.repository.OrderRepository;
import vn.iotstar.repository.ReviewImageRepository;
import vn.iotstar.repository.ReviewRepository;
import vn.iotstar.repository.UserRepository;

@RestController
@RequestMapping(path = "/api/review")
public class ReviewController {

	@Autowired
	private ReviewRepository reviewRepository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private OrderRepository orderRepository;

	@Autowired
	private ReviewImageRepository reviewImageRepository;

	@Autowired
	private Cloudinary cloudinary;

	@PostMapping(path = "/addReview")
	public ResponseEntity<?> addReview(@Validated @RequestParam("orderId") Integer orderId,
			@Validated @RequestParam("rating") float rating, 
			@Validated @RequestParam("content") String content,
			@RequestParam("reviewImages") List<MultipartFile> reviewImages) {
		Optional<Order> optOrder = orderRepository.findById(orderId);
		User user = optOrder.get().getUser();
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

		return ResponseEntity.ok().body(reviewRepository.findByOrder(optOrder.get()));
	}
}

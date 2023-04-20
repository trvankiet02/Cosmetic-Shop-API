package vn.iotstar.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Order;
import vn.iotstar.entity.Review;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Integer>{
	Optional<Review> findByOrder(Order order);
}

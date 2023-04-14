package vn.iotstar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Review;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Integer>{

}

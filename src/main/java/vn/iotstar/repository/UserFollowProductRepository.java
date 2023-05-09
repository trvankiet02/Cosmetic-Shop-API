package vn.iotstar.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Product;
import vn.iotstar.entity.User;
import vn.iotstar.entity.UserFollowProduct;

@Repository
public interface UserFollowProductRepository extends JpaRepository<UserFollowProduct, Integer>{
	List<UserFollowProduct> findByUser(User user);
	
	Optional<UserFollowProduct> findByUserAndProduct (User user, Product product);
}

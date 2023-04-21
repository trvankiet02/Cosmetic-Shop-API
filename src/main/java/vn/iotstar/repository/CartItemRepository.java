package vn.iotstar.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.CartItem;
import vn.iotstar.entity.Product;

@Repository
public interface CartItemRepository extends JpaRepository<CartItem, Integer>{

	//Optional<CartItem> findByProduct(Product product);
	List<CartItem> findByProduct(Product product);
}

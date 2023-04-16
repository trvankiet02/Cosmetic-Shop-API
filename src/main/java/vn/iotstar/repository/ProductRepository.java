package vn.iotstar.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Category;
import vn.iotstar.entity.Product;
import vn.iotstar.entity.Style;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer>{
	Optional<Product> findByName(String name);
	
	List<Product> findByCategory(Category category);
	
	List<Product> findByStyle(Style style);

}

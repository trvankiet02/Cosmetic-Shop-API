package vn.iotstar.repository;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import org.springframework.data.domain.Sort;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Category;
import vn.iotstar.entity.Product;
import vn.iotstar.entity.Store;
import vn.iotstar.entity.Style;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer>{
	Optional<Product> findByName(String name);
	
	List<Product> findByCategory(Category category);
	
	List<Product> findByStyle(Style style);
	
	List<Product> findByStyleAndIsSelling(Style style, Boolean isSelling);
	
	List<Product> findByIsSelling(Boolean isSelling);
	
	List<Product> findByStore(Store store);
	
	List<Product> findByStoreAndIsSelling(Store store, Boolean isSelling, Sort sort);
	
	Optional<Product> findByCreateAt(Date createAt);
	

}

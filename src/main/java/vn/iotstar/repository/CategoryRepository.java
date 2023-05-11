package vn.iotstar.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import vn.iotstar.entity.Category;
import vn.iotstar.entity.Style;

public interface CategoryRepository extends JpaRepository<Category, Integer>{
	Optional<Category> findByName(String name);

	List<Category> findByStyles(Style styles);
	
	List<Category> findByIsSelling(Boolean isSelling);
}

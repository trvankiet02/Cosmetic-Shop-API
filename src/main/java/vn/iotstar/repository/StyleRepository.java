package vn.iotstar.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Category;
import vn.iotstar.entity.Style;

@Repository
public interface StyleRepository extends JpaRepository<Style, Integer>{

	Optional<Style> findByName(String name);
	

}

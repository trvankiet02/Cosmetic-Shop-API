package vn.iotstar.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Product;
import vn.iotstar.entity.Store;

@Repository
public interface StoreRepository extends JpaRepository<Store, Integer>{

	Optional<Store> findByProducts(Product product);
	
}

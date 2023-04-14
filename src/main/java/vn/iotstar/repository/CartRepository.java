package vn.iotstar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer>{

}

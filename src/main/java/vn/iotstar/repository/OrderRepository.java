package vn.iotstar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer>{

}

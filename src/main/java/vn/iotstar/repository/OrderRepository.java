package vn.iotstar.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Order;
import vn.iotstar.entity.User;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer>{
	
	List<Order> findByUser(User user);

	List<Order> findByUserAndStatus(User user, Integer status);
	
	List<Order> findByCreateAt(Date createAt);
}

package vn.iotstar.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Address;
import vn.iotstar.entity.User;

@Repository
public interface AddressRepository extends JpaRepository<Address, Integer>{
	
	List<Address> findByUser(User user);

}

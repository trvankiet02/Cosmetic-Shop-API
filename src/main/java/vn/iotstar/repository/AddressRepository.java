package vn.iotstar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Address;

@Repository
public interface AddressRepository extends JpaRepository<Address, Integer>{

}

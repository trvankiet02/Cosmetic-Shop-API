package vn.iotstar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Store;

@Repository
public interface StoreRepository extends JpaRepository<Store, Integer>{

}

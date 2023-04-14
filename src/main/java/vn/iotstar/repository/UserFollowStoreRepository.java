package vn.iotstar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.UserFollowStore;

@Repository
public interface UserFollowStoreRepository extends JpaRepository<UserFollowStore, Integer>{

}

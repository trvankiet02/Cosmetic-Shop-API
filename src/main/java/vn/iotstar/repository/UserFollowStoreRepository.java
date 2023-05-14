package vn.iotstar.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Store;
import vn.iotstar.entity.User;
import vn.iotstar.entity.UserFollowStore;

@Repository
public interface UserFollowStoreRepository extends JpaRepository<UserFollowStore, Integer>{

	Optional<UserFollowStore> findByUserAndStore(User user, Store store);

	List<UserFollowStore> findByUser(User user);

}

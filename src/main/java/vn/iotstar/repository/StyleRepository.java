package vn.iotstar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Style;

@Repository
public interface StyleRepository extends JpaRepository<Style, Integer>{

}

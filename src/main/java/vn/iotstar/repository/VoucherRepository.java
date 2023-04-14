package vn.iotstar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iotstar.entity.Voucher;

@Repository
public interface VoucherRepository extends JpaRepository<Voucher, Integer>{

}

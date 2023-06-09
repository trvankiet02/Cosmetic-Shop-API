package vn.iotstar.entity;


import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "[Order]")
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	//private int userId;
	@JsonBackReference
	@ManyToOne
	@JoinColumn(name = "userId")
	private User user;
	
	//private int deliveryId;
	@ManyToOne
	@JoinColumn(name = "deliveryId")
	private Delivery delivery;
	
	private String name;
	
	//private int storeId;
	@ManyToOne
	@JoinColumn(name = "storeId")
	private Store store;
	
	@ManyToOne
	@JoinColumn(name = "voucherId")
	private Voucher voucher;
	
	@Column(columnDefinition = "nvarchar(255)")
	private String address;
	
	private Integer price;
	
	private String phone;
	
	//0: ship code, 1: eWaller
	private Integer payMethod;
	
	//0: da huy, 1: cho xac nhan, 2: da xac nhan, 3: dạng giao, 4: da nhan hang 
	private Integer status;

	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "YYYY-MM-DD hh:mi:ss")
	private Date createAt;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "YYYY-MM-DD hh:mi:ss")
	private Date updateAt;
	
	//mapping to OrderItem
	@JsonManagedReference
	@OneToMany(mappedBy = "order")
	private List<OrderItem> orderItems;
	
	//mapping to Review
	@OneToOne(mappedBy = "order")
	private Review review;
}

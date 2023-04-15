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

import com.fasterxml.jackson.annotation.JsonIgnore;

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
	@ManyToOne
	@JoinColumn(name = "userId")
	private User user;
	
	//private int deliveryId;
	@ManyToOne
	@JoinColumn(name = "deliveryId")
	private Delivery delivery;
	
	@ManyToOne
	@JoinColumn(name = "storeId")
	private Store store;
	
	@Column(columnDefinition = "nvarchar(255)")
	private String address;
	
	private String phone;
	
	private Integer status;

	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "YYYY-MM-DD hh:mi:ss")
	private Date createAt;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "YYYY-MM-DD hh:mi:ss")
	private Date updateAt;
	
	//mapping to OrderItem
	@OneToMany(mappedBy = "order")
	private List<OrderItem> orderItems;
	
	//mapping to Review
	@JsonIgnore
	@OneToOne(mappedBy = "order")
	private Review review;
}

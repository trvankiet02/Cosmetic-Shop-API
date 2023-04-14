package vn.iotstar.entity;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "[Store]")
public class Store {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(columnDefinition = "nvarchar(255)")
	private String name;
	
	@Column(columnDefinition = "nvarchar(255)")
	private String address;
	
	private String phone;
	
	private String email;
	
	//private int userId;
	@OneToOne
	@JoinColumn(name = "userId")
	private User user;
	
	private String storeImage;
	
	private String featureImage;
	
	private float rating;
	
	private Integer eWallet;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "YYYY-MM-DD hh:mi:ss")
	private Date createAt;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "YYYY-MM-DD hh:mi:ss")
	private Date updateAt;
	
	//mapping to UserFolowSore
	@OneToMany(mappedBy = "store")
	private List<UserFollowStore> userFollowStores;
	
	//mapping to Product
	@OneToMany(mappedBy = "store")
	private List<Product> products;
	
	//mapping to Cart
	@OneToMany(mappedBy = "store")
	private List<Cart> carts;
	
	//mapping to order
	@OneToMany(mappedBy = "store")
	private List<Order> orders;
}

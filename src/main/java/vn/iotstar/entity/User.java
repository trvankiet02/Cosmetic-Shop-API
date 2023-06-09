package vn.iotstar.entity;


import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "[User]")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	private String email;
	@JsonIgnore
	private String password;
	
	@Column(columnDefinition = "nvarchar(50)")
	private String firstName;
	
	@Column(columnDefinition = "nvarchar(50)")
	private String lastName;
	
	private String phone;
	
	private String profileImage;
	
	private Integer role; //0: user, 1: seller, 2: admin
	
	private Integer eWallet;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "YYYY-MM-DD hh:mi:ss")
	private Date createAt;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "YYYY-MM-DD hh:mi:ss")
	private Date updateAt;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "YYYY-MM-DD hh:mi:ss")
	private Date lastLogin;
	
	//mapping to address
	@JsonManagedReference
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	private List<Address> addresses;
	
	//mapping to store
	@JsonIgnore
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "user")
	private Store store;
	
	//mapping to UserFolowStore
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	private List<UserFollowStore> userFollowStores;
	
	//mapping to UserFollowProduct
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	private List<UserFollowProduct> userFollowProducts;
	
	//mapping to Cart
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	private List<Cart> carts;
	
	//mapping to Order
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	private List<Order> orders;
	
	//mapping to Review
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	private List<Review> reviews;
}

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
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
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
@Table(name = "[Product]")
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(columnDefinition = "nvarchar(255)")
	private String name;
	
	private Integer price;
	
	private Integer promotionalPrice;
	
	@Column(columnDefinition = "nvarchar(255)")
	private String description;
	
	@Column(columnDefinition = "nvarchar(255)")
	private String madeOf;
	
	@Column(columnDefinition = "nvarchar(255)")
	private String color;
	
	@Column(columnDefinition = "nvarchar(255)")
	private String madeIn;
	
	//private int styleId;
	@JsonIgnore
	@ManyToOne
	@JoinColumn(name = "styleId")
	private Style style;
	
	//private int categoryId;
	@JsonIgnore
	@ManyToOne
	@JoinColumn(name = "categoryId")
	private Category category;
	
	//private int storeId;
	@JsonIgnore
	@ManyToOne
	@JoinColumn(name = "storeId")
	private Store store;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "YYYY-MM-DD hh:mi:ss")
	private Date createAt;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "YYYY-MM-DD hh:mi:ss")
	private Date updateAt;
	
	//mapping to Product Image
	@JsonManagedReference
	@OneToMany(mappedBy = "product")
	private List<ProductImage> productImages;
	
	//mapping to ProductQuantity
	@JsonIgnore
	@JsonManagedReference
	@OneToMany(mappedBy = "product")
	private List<ProductQuantity> productQuantities;
	
	//mapping to UserFollowProduct
	@JsonIgnore
	@ManyToMany(mappedBy = "product")
	private List<UserFollowProduct> userFollowProducts;
	
	//mapping to CartItem
	@JsonIgnore
	@OneToMany(mappedBy = "product")
	private List<CartItem> cartItems;
	
	//mapping to Product
	@JsonIgnore
	@OneToMany(mappedBy = "product")
	private List<Review> reviews;
}
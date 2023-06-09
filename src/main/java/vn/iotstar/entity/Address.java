package vn.iotstar.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonBackReference;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "[Address]")
public class Address {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	//private int userId;
	@JsonBackReference
	@ManyToOne
	@JoinColumn(name = "userId")
	private User user;
	
	@Column(columnDefinition = "nvarchar(50)")
	private String firstName;

	@Column(columnDefinition = "nvarchar(50)")
	private String lastName;
	
	private String phone;
	
	@Column(columnDefinition = "nvarchar(255)")
	private String address;
	
	private Boolean isDefault;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "YYYY-MM-DD hh:mi:ss")
	private Date createAt;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "YYYY-MM-DD hh:mi:ss")
	private Date updateAt;
}

package vn.iotstar.util;

import java.sql.Timestamp;
import java.util.Date;

public class CodeDetail {
	
	private String email;
	
	private String code;
	
	private Date createAt;
	
	private Date expireAt;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public Date getExpireAt() {
		return expireAt;
	}

	public void setExpireAt(Date expireAt) {
		this.expireAt = expireAt;
	}

	public CodeDetail(String email, String code, Date createAt, Date expireAt) {
		super();
		this.email = email;
		this.code = code;
		this.createAt = createAt;
		this.expireAt = expireAt;
	}
	
	

}

package vn.iotstar;

import org.springframework.http.ResponseEntity;

public class Response {
	private Boolean status;
	
	private String message;
	
	private ResponseEntity<?> body;

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public ResponseEntity<?> getBody() {
		return body;
	}

	public void setBody(ResponseEntity<?> body) {
		this.body = body;
	}

	public Response(Boolean status, String message, ResponseEntity<?> body) {
		super();
		this.status = status;
		this.message = message;
		this.body = body;
	}
	
	

}

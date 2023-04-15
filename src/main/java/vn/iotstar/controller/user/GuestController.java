package vn.iotstar.controller.user;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Optional;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import vn.iotstar.entity.User;
import vn.iotstar.repository.UserRepository;
import vn.iotstar.util.CodeDetail;
import vn.iotstar.util.RandomCodeGenerator;

@RestController
@RequestMapping(path = "/api")
public class GuestController {

	public CodeDetail codeDetail;

	@Autowired
	private UserRepository userRepository;

	@PostMapping(path = "/login")
	public ResponseEntity<?> login(@Validated @RequestParam("email") String email,
			@Validated @RequestParam("password") String password) {
		Optional<User> user = userRepository.findByEmail(email);
		String message = "";

		if (user.isPresent()) {
			if (user.get().getPassword().equals(password)) {
				Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());

				user.get().setLastLogin(timestamp);

				return ResponseEntity.ok().body(user.get());
			} else {
				message = "Mật khẩu bạn đã nhập không chĩnh xác";
				return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(message);
			}
		} else {
			message = "Địa chỉ email bạn đã nhập không tồn tại";
			return ResponseEntity.status(HttpStatus.NOT_FOUND).body(message);
		}

	}

	@PostMapping(path = "/signup")
	public ResponseEntity<?> signup(@Validated @RequestParam("email") String email,
			@Validated @RequestParam("password") String password,
			@Validated @RequestParam("rePassword") String rePassword) {
		Optional<User> user = userRepository.findByEmail(email);
		String message = "";

		if (user.isPresent()) {
			message = "Tài khoản email đã tồn tại trong hệ thống";
			return ResponseEntity.status(HttpStatus.CONFLICT).body(message);
		} else {
			if (password.equals(rePassword)) {
				Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());

				user.get().setEmail(email);
				user.get().setPassword(password);
				user.get().setRole(false);
				user.get().setEWallet(0);
				user.get().setCreateAt(timestamp);

				userRepository.save(user.get());

				return ResponseEntity.ok().body(user.get());
			} else {
				message = "Mật khẩu và xác nhận mật khẩu không khớp";
				return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(message);
			}
		}
	}

	@PostMapping(path = "/sendMail")
	public ResponseEntity<?> sendMail(@Validated @RequestParam("email") String email) {
		String message = "";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("20110665@student.hcmute.edu.vn", "12345678abc@");
			}
		});

		try {
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress("sender_email"));
			mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
			mimeMessage.setSubject("Password Reset Request");
			
			Transport.send(mimeMessage);

			String code = RandomCodeGenerator.generateRandomCode();
			Date createAt = new Date(System.currentTimeMillis());
			Date updateAt = new Date(System.currentTimeMillis());
			updateAt.setMinutes(updateAt.getMinutes() + 10);

			codeDetail = new CodeDetail(email, code, createAt, updateAt);
			mimeMessage.setText("Code to reset your password :" + code);
		} catch (Exception e) {
			message = "Gặp sự cố trong quá trình xử lý";
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(message);
		}

		return ResponseEntity.ok().body(message);
	}

	@PostMapping(path = "/forgotPassword")
	public String forgotPassword(@Validated @RequestParam("email") String email,
			@Validated @RequestParam("newPassword") String newPassword,
			@Validated @RequestParam("rePassword") String rePassword) {
		Optional<User> user = userRepository.findByEmail(email);
		

		return null;
	}

}

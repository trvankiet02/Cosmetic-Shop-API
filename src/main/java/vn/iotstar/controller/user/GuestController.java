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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import vn.iotstar.Response;
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
	@ResponseBody
	public ResponseEntity<Response> login(@Validated @RequestParam("email") String email,
			@Validated @RequestParam("password") String password) {
		Optional<User> user = userRepository.findByEmail(email);
		String message = "";

		if (user.isPresent()) {
			if (user.get().getPassword().equals(password)) {
				Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());

				user.get().setLastLogin(timestamp);
				userRepository.save(user.get());
				message = "Đăng nhập thành công";
				//return ResponseEntity.ok().body(user.get());
				return new ResponseEntity<Response>(new Response(true, message, user.get()), HttpStatus.OK);
			} else {
				message = "Mật khẩu bạn đã nhập không chĩnh xác";
				//return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(message);
				return new ResponseEntity<Response>(new Response(false, message, null), HttpStatus.UNAUTHORIZED);
			}
		} else {
			message = "Địa chỉ email bạn đã nhập không tồn tại";
			//return ResponseEntity.status(HttpStatus.NOT_FOUND).body(message);
			return new ResponseEntity<Response>(new Response(false, message, null), HttpStatus.UNAUTHORIZED);
		}

	}

	@PostMapping(path = "/signup")
	public ResponseEntity<?> signup(@Validated @RequestParam("email") String email,
			@Validated @RequestParam("password") String password,
			@Validated @RequestParam("rePassword") String rePassword) {
		Optional<User> optUser = userRepository.findByEmail(email);
		String message = "";

		if (optUser.isPresent()) {
			message = "Tài khoản email đã tồn tại trong hệ thống";
			//return ResponseEntity.status(HttpStatus.CONFLICT).body(message);
			return new ResponseEntity<Response>(new Response(false, message, null), HttpStatus.CONFLICT);
		} else {
			if (password.equals(rePassword)) {
				Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());
				User user = new User();
				user.setEmail(email);
				user.setPassword(password);
				user.setRole(false);
				user.setEWallet(0);
				user.setCreateAt(timestamp);

				userRepository.save(user);

				//return ResponseEntity.ok().body(user);
				message = "Đăng ký thành công";
				return new ResponseEntity<Response>(new Response(true, message, user), HttpStatus.OK);
			} else {
				message = "Mật khẩu và xác nhận mật khẩu không khớp";
				//return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(message);
				return new ResponseEntity<Response>(new Response(false, message, null), HttpStatus.BAD_REQUEST);
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

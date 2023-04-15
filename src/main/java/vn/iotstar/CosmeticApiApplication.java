package vn.iotstar;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

@SpringBootApplication
public class CosmeticApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(CosmeticApiApplication.class, args);
	}
	
	@Bean
	public Cloudinary cloudinary() {
		Cloudinary c = new Cloudinary(ObjectUtils.asMap(
				"cloud_name", "dl0vbutga",
				"api_key", "376622535619794",
				"api_secret", "ZiUTg4cwctErfi5TXgOBlIihPV0",
				"secure", true));
		return c;
	}

}

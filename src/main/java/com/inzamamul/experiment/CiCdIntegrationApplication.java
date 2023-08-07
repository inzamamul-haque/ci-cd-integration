package com.inzamamul.experiment;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class CiCdIntegrationApplication {

	@GetMapping()
	public String get() {
		return "inzamamul";
	}

	@GetMapping("hello")
	public String hello() {
		return "inzamamul";
	}

	public static void main(String[] args) {
		SpringApplication.run(CiCdIntegrationApplication.class, args);
	}

}

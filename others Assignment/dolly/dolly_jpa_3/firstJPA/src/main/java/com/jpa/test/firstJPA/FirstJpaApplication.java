package com.jpa.test.firstJPA;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class FirstJpaApplication {

	public static void main(String[] args) {
		SpringApplication.run(FirstJpaApplication.class, args);
		System.out.println("*** application starting ***");
	}
}

package com.uncc.ce;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootApplication
public class CampusEatsApplication {

	public static void main(String[] args) {
		log.debug("*****APP is getting started***");
		SpringApplication.run(CampusEatsApplication.class, args);
	}
}

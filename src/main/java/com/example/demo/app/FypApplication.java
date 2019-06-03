package com.example.demo.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.example.demo.app.controller.ApplicationController;

@SpringBootApplication
public class FypApplication {

	public static void main(String[] args) {
		SpringApplication.run(FypApplication.class, args);
	}
}

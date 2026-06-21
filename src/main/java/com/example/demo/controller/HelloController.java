/**
 * 
 */
package com.example.demo.controller;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 
 */
@RestController
public class HelloController {

	private Logger logger = LoggerFactory.getLogger(HelloController.class);

	private static int i = 0;

	@Value("${hello.name}")
	private String name;

	@GetMapping("/hello")
	public ResponseEntity<String> hello() throws UnknownHostException {
		String message = "Hello, " + this.name + "! V1: " + i++ + " - " + InetAddress.getLocalHost().getHostName();
		logger.info(message);
		return ResponseEntity.ok(message);
	}

}

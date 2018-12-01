package com.ssm.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author 小书包
 * @date 2018/12/1 13:30
 */
@RestController
public class IndexController {
	@GetMapping("/")
	public String index() {
		return "Hello,World!";
	}
}

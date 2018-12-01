package com.ssm.web;

import com.ssm.entity.Shoper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author 小书包
 * @date 2018/12/1 16:08
 */
@RequestMapping("/shoper")
@Controller
public class ShoperController {

	@PostMapping("/addShoper")
	public String addShoper(Shoper shoper) {
		return "shoper/list";
	}

	@GetMapping("/listShoper")
	public String listShoper() {
		return "shoper/list";
	}

	@PostMapping("/updateShoper")
	public String updateShoper(Shoper shoper) {
		return "shoper/list";
	}
}

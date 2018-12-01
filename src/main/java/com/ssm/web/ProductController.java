package com.ssm.web;

import com.ssm.entity.Product;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 小书包
 * @date 2018/12/1 16:08
 */
@RequestMapping("/product")
@Controller
public class ProductController {

	@PostMapping("/applyProduct")
	public String addProduct(Product product) {
		return "product/list";
	}

	@PostMapping("/checkProduct")
	public String checkProduct(Product product) {
		return "product/list";
	}

	@GetMapping("/listProduct")
	public String listProduct() {
		return "product/list";
	}

	@PostMapping("/updateProduct")
	public String updateProduct(Product product) {
		return "product/list";
	}
}

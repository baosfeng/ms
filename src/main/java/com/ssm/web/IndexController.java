package com.ssm.web;

import com.ssm.dao.UserDao;
import com.ssm.entity.User;
import com.ssm.utils.MD5Enccode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;

/**
 * @author 小书包
 * @date 2018/12/1 13:30
 */
@Controller
public class IndexController {

	@Autowired
	private UserDao userDao;

	@GetMapping("/")
	public String index() {
		return "index";
	}

	@PostMapping("/login")
	public String login(HttpSession session, User user) {
		User userByUserName = userDao.findUserByUserName(user.getUserName());
		if (userByUserName != null) {
			if (MD5Enccode.encode(user.getPassword()).equals(userByUserName.getPassword())) {
				session.setAttribute("userName", userByUserName.getName());
				return "success";
			}
		}
		return "error";
	}
	@GetMapping("/register")
	public String register() {
		return "user/add";
	}
	@GetMapping("/exit")
	public String exit(HttpSession session) {
		session.removeAttribute("userName");
		return "index";
	}
}

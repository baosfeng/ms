package com.ssm.web;

import com.ssm.dao.UserDao;
import com.ssm.entity.User;
import com.ssm.utils.MD5Enccode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.security.NoSuchAlgorithmException;
import java.util.List;

/**
 * @author 小书包
 * @date 2018/12/1 16:08
 */
@RequestMapping("/user")
@Controller
public class UserController {

	@Autowired
	private UserDao userDao;

	@GetMapping("/")
	public String add() {
		return "user/add";
	}

	@PostMapping("/addUser")
	public String addUser(User user) {
		user.setPassword(MD5Enccode.encode(user.getPassword()));
		userDao.insert(user);
		return "index";
	}

	@GetMapping("/listUser")
	public String listUser(Model model) {
		List<User> userList = userDao.findUserList();
		model.addAttribute("userList", userList);
		return "user/list";
	}

	@RequestMapping("/update")
	public String update(Model model, int id) {
		User user = userDao.selectByPrimaryKey(id);
		model.addAttribute("user", user);
		return "user/update";
	}
	@PostMapping("/updateUser")
	public String updateUser(User user) {
		userDao.updateByPrimaryKeySelective(user);
		return "redirect:/user/listUser";
	}

	@PostMapping("/checkUserName")
	public @ResponseBody String checkUserName(String userName) {
		User user = userDao.findUserByUserName(userName);
		if (user != null) {
			return "true";
		}
		return "false";
	}

	@GetMapping("/delUser")
	public String deleteUser(int id) {
		userDao.deleteByPrimaryKey(id);
		return "redirect:/user/listUser";
	}

	@GetMapping("/queryUserById")
	public String queryUserById(Model model, int id) {
		User user = userDao.selectByPrimaryKey(id);
		model.addAttribute("user", user);
		return "user/detail";
	}
}

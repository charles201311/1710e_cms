package com.bobo.cms.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bobo.cms.domain.User;
import com.bobo.cms.service.UserService;
import com.github.pagehelper.PageInfo;

@Controller
public class UserController {
	@Resource
	private UserService userService;
	
	@RequestMapping("users")
	public String users(Model model,User user , @RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "5")Integer pageSize) {
		PageInfo<User> info = userService.selects(user, page, pageSize);
		model.addAttribute("info", info);
		model.addAttribute("user", user);
		return "admin/user/users";	
		
	}
	

}

package com.bobo.cms.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bobo.cms.domain.User;
import com.bobo.cms.service.UserService;

/**
 * 
 * @ClassName: PassportController 
 * @Description: 注册、登录、注销的控制器
 * @author: charles
 * @date: 2020年1月11日 上午10:03:17
 */
@RequestMapping("passport")
@Controller
public class PassportController {
	
	@Resource
	private UserService userService;
	//去注册
	@GetMapping("reg")
	public String reg() {
		return "passport/reg";
	}
	
	//执行注册
	
	@ResponseBody
	@PostMapping("reg")
	public boolean reg(User user) {
		return  userService.insert(user);
	}
	
	//去登录
	@GetMapping("login")
	public String login() {
		
		return "passport/login";
		
	}

}

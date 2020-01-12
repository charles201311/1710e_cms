package com.bobo.cms.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bobo.cms.domain.User;
import com.bobo.cms.service.UserService;
import com.bobo.cms.util.CMSException;
import com.bobo.cms.util.Result;

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

	// 去注册
	@GetMapping("reg")
	public String reg() {
		return "passport/reg";
	}

	// 执行注册

	@ResponseBody
	@PostMapping("reg")
	public Result<User> reg(User user) {
		Result<User> result = new Result<User>();
		try {
			userService.insert(user);
			result.setCode(200);
			result.setMsg("注册成功");
		} catch (CMSException e) {
			result.setCode(300);
			result.setMsg(e.getMessage());// 封装错误消息

		} catch (Exception e) {
			result.setCode(500);
			result.setMsg("未知错误，请联系管理员");// 封装错误消息
		}

		return result;
	}

	// 校验用户是否存在
	@ResponseBody
	@RequestMapping("checkname")
	public boolean checkname(String username) {
		return userService.selectByName(username) == null;
	}

	// 去登录
	@GetMapping("login")
	public String login() {

		return "passport/login";

	}

	// 管理员去登录
	@GetMapping("admin/login")
	public String adminLogin() {

		return "passport/adminlogin";

	}

	// 执行登录
	@ResponseBody
	@PostMapping("login")
	public Result<User> login(User user, HttpSession session) {
		Result<User> result = new Result<User>();
		try {
			User u = userService.login(user);

			result.setCode(200);
			result.setMsg("登录成功");
			// 存入session
			// 根据等录的用户的角色进入 存储不同的session key
			if (u.getRole().equals("1")) {// 1：管理员 0：普通用户
				session.setAttribute("admin", u);
			} else {
				session.setAttribute("user", u);
			}

		} catch (CMSException e) {
			e.printStackTrace();
			result.setCode(300);
			result.setMsg(e.getMessage());// 封装错误消息

		} catch (Exception e) {
			e.printStackTrace();
			result.setCode(500);
			result.setMsg("未知错误，请联系管理员");// 封装错误消息
		}

		return result;

	}

	// 注销系统
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";

	}

}

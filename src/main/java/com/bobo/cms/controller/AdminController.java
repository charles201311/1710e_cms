package com.bobo.cms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @ClassName: AdminController 
 * @Description: 管理员后台控制器
 * @author: charles
 * @date: 2020年1月7日 下午3:46:27
 */
@Controller
public class AdminController {
   /**
    * 
    * @Title: index 
    * @Description: 后台首页
    * @return
    * @return: String
    */
	@RequestMapping("index")
	public String index() {
		
		
		return "admin/index";
	}
}

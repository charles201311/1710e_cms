package com.bobo.cms.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bobo.cms.domain.Article;
import com.bobo.cms.domain.User;
import com.bobo.cms.service.ArticleService;
import com.bobo.cms.service.UserService;
import com.github.pagehelper.PageInfo;

/**
 * 
 * @ClassName: AdminController 
 * @Description: 管理员后台控制器
 * @author: charles
 * @date: 2020年1月7日 下午3:46:27
 */
@RequestMapping("admin")
@Controller
public class AdminController {
	@Resource
	private UserService userService;
	@Resource
	private ArticleService articleService;
   /**
    * 
    * @Title: index 
    * @Description: 后台首页
    * @return
    * @return: String
    */
	@RequestMapping(value = {"","/","index"})
	public String index() {
		
		
		return "admin/index";
	}
	

	/**
	 * 
	 * @Title: articles 
	 * @Description: 文章列表
	 * @param model
	 * @param article
	 * @param page
	 * @param pageSize
	 * @return
	 * @return: String
	 */
	@RequestMapping("article/articles")
	public String articles(Model model ,Article article ,@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "5")Integer pageSize) {
		PageInfo<Article> info = articleService.selects(article, page, pageSize);
		model.addAttribute("info", info);
		model.addAttribute("article", article);
		return "admin/article/articles";
	}
	
	
	//修改文章
	@ResponseBody
	@RequestMapping("article/update")
	public boolean update(Article article) {
		return articleService.update(article);
	}
	//查询单个文章
	@ResponseBody
	@RequestMapping("article/select")
	public Article select(Integer id) {
		return articleService.select(id);
	}
	
	/**
	 * 
	 * @Title: users 
	 * @Description: 用户模块的列表
	 * @param model
	 * @param user
	 * @param page
	 * @param pageSize
	 * @return
	 * @return: String
	 */
	@RequestMapping("user/users")
	public String users(Model model,User user , @RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "5")Integer pageSize) {
		PageInfo<User> info = userService.selects(user, page, pageSize);
		model.addAttribute("info", info);
		model.addAttribute("user", user);
		return "admin/user/users";	
		
	}
	/**
	 * 
	 * @Title: update
	 * @Description: 更新用户信息
	 * @param user
	 * @return
	 * @return: boolean
	 */
	@ResponseBody
	@RequestMapping("user/update")
	public boolean update(User user) {
		
		return userService.update(user);
		
	}
}

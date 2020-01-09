package com.bobo.cms.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bobo.cms.domain.Article;
import com.bobo.cms.service.ArticleService;
import com.github.pagehelper.PageInfo;
/**
 * 
 * @ClassName: MyController 
 * @Description: 个人中心
 * @author: charles
 * @date: 2020年1月9日 上午9:07:28
 */
@RequestMapping("my")
@Controller
public class MyController {
	
	@Resource
	private ArticleService articleService;

	/**
	 * 
	 * @Title: index 
	 * @Description: 进入个人中心首页
	 * @return
	 * @return: String
	 */
	@RequestMapping(value = {"","/","index"})
	public  String index() {
		return "my/index";
		
	}
	/**
	 * 
	 * @Title: articles 
	 * @Description: 我的文章
	 * @return
	 * @return: String
	 */
	@RequestMapping("/article/articles")
	public String articles(Model model,Article article,@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "3") Integer pageSize) {
	    
		//article.setUserId(userId);
		//暂时先把所有文章查询出来。
		PageInfo<Article> info = articleService.selects(article, page, pageSize);
		model.addAttribute("info", info);
		model.addAttribute("article", article);
		return "my/article/articles";
	}
	
	
	//查询单个文章
		@ResponseBody
		@RequestMapping("article/select")
		public Article select(Integer id) {
			return articleService.select(id);
		}
}

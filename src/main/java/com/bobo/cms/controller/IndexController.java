package com.bobo.cms.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bobo.cms.domain.Article;
import com.bobo.cms.domain.Category;
import com.bobo.cms.domain.Channel;
import com.bobo.cms.domain.Slide;
import com.bobo.cms.service.ArticleService;
import com.bobo.cms.service.ChannelService;
import com.bobo.cms.service.SlideService;
import com.github.pagehelper.PageInfo;
import com.yangchunbo.util.DateUtil;

@Controller
public class IndexController {
	
	@Resource
	private ChannelService channelService;
	
	@Resource
	private ArticleService articleService;
	
	@Resource
	private SlideService slideService;
	
	@RequestMapping(value = {"","/","index"})
	public String index(Model model,Article article,@RequestParam(defaultValue = "1")Integer page,
			@RequestParam(defaultValue = "5")Integer pageSize) {
		article.setStatus(1);//查询审核过的文章
		article.setDeleted(0);//未删除
		//查询出所有的栏目
		List<Channel> channels = channelService.selects();
		model.addAttribute("channels", channels);
		
		
		if(article.getChannelId()!=null) {//如果栏目不为空空则显示栏目及分类下文章
		//根据栏目查询其下所有分类
		List<Category> categorys = channelService.selectsByCid(article.getChannelId());
		model.addAttribute("categorys", categorys);
		model.addAttribute("article", article);
		//根据栏目或分类查询文章
		PageInfo<Article> info = articleService.selects(article, page, pageSize);
		model.addAttribute("info", info);
		}else {
	       //显示热点文章
			PageInfo<Article> hotInfo = articleService.selects(article, page, pageSize);
			model.addAttribute("info", hotInfo);
			//查询广告
			List<Slide> slides = slideService.selects();
			model.addAttribute("slides",slides);
		}
		
		
		//查询出最新的5篇文章
		
		Article lastArticle = new Article();
		lastArticle.setStatus(1);//只能查询最新的并且审过的文章
		lastArticle.setDeleted(0);//未删除
		PageInfo<Article> lastInfo = articleService.selects(null, 1, 5);
		model.addAttribute("lastInfo", lastInfo);
		
		
		//查询24小时热文
		
		Article hot24Article = new Article();
		hot24Article.setStatus(1);//审核过的
		hot24Article.setHot(1);//热门文章
		
		hot24Article.setCreated(DateUtil.subDate(new Date()));//调用工具类，系统时间向前推荐24个小时
		PageInfo<Article> hot24ArticleInfo = articleService.selects(hot24Article, 1, 4);//24小时热文，默认显示4条
		model.addAttribute("hot24ArticleInfo", hot24ArticleInfo);
		return "index/index";
		
	}
	
	//文章详情
	@RequestMapping("articleDetail")
	public String articleDetail(Model model ,Integer id) {
		
		Article article = articleService.select(id);
		model.addAttribute("article", article);
		return "index/article";
	}

}

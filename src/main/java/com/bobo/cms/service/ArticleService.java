package com.bobo.cms.service;

import com.bobo.cms.domain.Article;
import com.github.pagehelper.PageInfo;

public interface ArticleService {

	/**
	 * 
	 * @Title: selects 
	 * @Description: 文章的列表
	 * @param article
	 * @return
	 * @return: List<Article>
	 */
	PageInfo<Article> selects(Article article,Integer page,Integer pageSize);
	
	/**
	 * 
	 * @Title: update 
	 * @Description: 更新文章
	 * @param article
	 * @return
	 * @return: int
	 */
	boolean update(Article article);
	
	
	/**
	 * 
	 * @Title: select 
	 * @Description: 根据id 查询文章内容
	 * @param id
	 * @return
	 * @return: Article
	 */
	Article select(Integer id);
}

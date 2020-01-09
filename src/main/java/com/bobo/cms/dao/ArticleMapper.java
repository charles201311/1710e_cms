package com.bobo.cms.dao;

import java.util.List;

import com.bobo.cms.domain.Article;

public interface ArticleMapper {
	/**
	 * 
	 * @Title: selects 
	 * @Description: 文章的列表
	 * @param article
	 * @return
	 * @return: List<Article>
	 */
	List<Article> selects(Article article);
	
	/**
	 * 
	 * @Title: update 
	 * @Description: 更新文章
	 * @param article
	 * @return
	 * @return: int
	 */
	int update(Article article);
	/**
	 * 
	 * @Title: select 
	 * @Description: 根据id 查询文章内容
	 * @param id
	 * @return
	 * @return: Article
	 */
	Article select(Integer id);
	/**
	 * 
	 * @Title: insert 
	 * @Description: 增加文章
	 * @param article
	 * @return
	 * @return: int
	 */
	int insert(Article article);

}

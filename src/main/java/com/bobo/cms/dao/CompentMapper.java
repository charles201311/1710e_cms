package com.bobo.cms.dao;

import java.util.List;

import com.bobo.cms.domain.Compent;

public interface CompentMapper {

	/**
	 * 
	 * @Title: insert 
	 * @Description: 增加一条评论
	 * @param compent
	 * @return
	 * @return: int
	 */
	int insert(Compent compent);
	
	
	/**
	 * 
	 * @Title: selects 
	 * @Description: 根据文章的ID 查询评论
	 * @param articleId
	 * @return
	 * @return: List<Compent>
	 */
	List<Compent> selects(Integer articleId);
	
	
	
}

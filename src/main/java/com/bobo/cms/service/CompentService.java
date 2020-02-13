package com.bobo.cms.service;

import java.util.List;

import com.bobo.cms.domain.Compent;
import com.github.pagehelper.PageInfo;
/**
 * 
 * @ClassName: CompentService 
 * @Description: 评论
 * @author: charles
 * @date: 2020年2月13日 上午9:49:23
 */
public interface CompentService {

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
	 * @Description:  根据文章的ID 查询评论
	 * @param articleId
	 * @param page
	 * @param pageSize
	 * @return
	 * @return: PageInfo<Compent>
	 */
	PageInfo<Compent> selects(Integer articleId,Integer page,Integer pageSize);
}

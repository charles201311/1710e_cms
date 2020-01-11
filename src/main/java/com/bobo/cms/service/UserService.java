package com.bobo.cms.service;

import com.bobo.cms.domain.User;
import com.github.pagehelper.PageInfo;

public interface UserService {

	
	PageInfo<User> selects(User user,Integer page,Integer pageSize);
	
	/**
	 * 
	 * @Title: update 
	 * @Description:修改
	 * @param user
	 * @return
	 * @return: int
	 */
	boolean update(User user);
	
	/**
	 * 
	 * @Title: insert 
	 * @Description: TODO
	 * @param user
	 * @return
	 * @return: 
	 */
	boolean insert(User user);
}

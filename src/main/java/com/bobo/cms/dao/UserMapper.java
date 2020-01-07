package com.bobo.cms.dao;

import java.util.List;

import com.bobo.cms.domain.User;

public interface UserMapper {

	/**
	 * 
	 * @Title: selects 
	 * @Description: 用户列表
	 * @param user
	 * @return
	 * @return: List<User>
	 */
	List<User> selects(User user);
	
	
	
}

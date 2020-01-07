package com.bobo.cms.service;

import com.bobo.cms.domain.User;
import com.github.pagehelper.PageInfo;

public interface UserService {

	
	PageInfo<User> selects(User user,Integer page,Integer pageSize);
}

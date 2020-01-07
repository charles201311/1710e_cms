package com.bobo.cms.service.impl;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bobo.cms.domain.User;
import com.bobo.cms.service.UserService;
import com.github.pagehelper.PageInfo;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-beans.xml")
public class UserServiceImplTest {
	@Resource
	UserService userService;

	@Test
	public void testSelects() {
		PageInfo<User> info = userService.selects(null, 1, 10);
		System.out.println(info);
	}

}

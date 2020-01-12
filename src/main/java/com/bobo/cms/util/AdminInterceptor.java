package com.bobo.cms.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
/**
 * 
 * @ClassName: AdminInterceptor 
 * @Description: 管理员拦截器
 * @author: charles
 * @date: 2020年1月11日 下午4:13:20
 */
public class AdminInterceptor extends HandlerInterceptorAdapter {

	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//拦截规则：
		//1：如果用户已经登录不拦截
		HttpSession session = request.getSession();
		Object object = session.getAttribute("admin");
		if(null!=object)
			return true;//管理员登录不拦截
		
		
		response.sendRedirect("/passport/admin/login"); 		
		
		return false;
	}
	
}

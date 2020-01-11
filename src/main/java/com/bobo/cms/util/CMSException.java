package com.bobo.cms.util;
/**
 * 
 * @ClassName: CMSException 
 * @Description:  CMS 自定义异常
 * @author: charles
 * @date: 2020年1月11日 下午3:01:52
 */
public class CMSException extends RuntimeException {
	
	private  String message;

	public CMSException() {

	}

	public CMSException(String message) {
		super(message);
		this.message =message;
	}
	

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}

package com.bobo.cms.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @ClassName: Collect 
 * @Description: 文章的收集
 * @author: charles
 * @date: 2020年2月15日 上午8:41:22
 */
public class Collect  implements Serializable{
	
	/**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: TODO
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String text;//文章的标题
	private String url;//文章的url
	private  User user;//收藏人
	private Date created;//收藏时间
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	
	
	

}

package com.bobo.cms.domain;

import java.io.Serializable;

public class Ill implements Serializable {

	/**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: TODO
	 */
	private static final long serialVersionUID = 1L;

	private Integer cityId;
	private Integer number1;
	private Integer number2;
	private Integer number3;
	private Integer pid;
	private City city;//市
	private City pro;//省
	public Integer getCityId() {
		return cityId;
	}
	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}
	public Integer getNumber1() {
		return number1;
	}
	public void setNumber1(Integer number1) {
		this.number1 = number1;
	}
	public Integer getNumber2() {
		return number2;
	}
	public void setNumber2(Integer number2) {
		this.number2 = number2;
	}
	public Integer getNumber3() {
		return number3;
	}
	public void setNumber3(Integer number3) {
		this.number3 = number3;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public City getCity() {
		return city;
	}
	public void setCity(City city) {
		this.city = city;
	}
	public City getPro() {
		return pro;
	}
	public void setPro(City pro) {
		this.pro = pro;
	}
	
	
	
}

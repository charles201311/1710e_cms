package com.bobo.cms.dao;

import java.util.List;

import com.bobo.cms.domain.City;
import com.bobo.cms.domain.Ill;

public interface IllMapper {

	/**
	 * 
	 * @Title: insert 
	 * @Description: 数据的来源：导入 txt 文件  
	 * @param ill
	 * @return
	 * @return: int
	 */
	int insert(Ill ill);//增加
	/**
	 * 
	 * @Title: selectByCityName 
	 * @Description: 根据城市的名称获取城市id
	 * @param cityname
	 * @return
	 * @return: City
	 */
	City selectByCityName(String cityname);
	
	
	
	/**
	 * 
	 * @Title: selectTotal 
	 * @Description: 返回全国总数量
	 * @return
	 * @return: Ill
	 */
	Ill selectTotal();
	/**
	 * 
	 * @Title: selects 
	 * @Description: 查询出省的疫情信息
	 * @return
	 * @return: List<Ill>
	 */
	List<Ill> selects();
	
	/**
	 * 
	 * @Title: selectsByPid 
	 * @Description: 查询某个省下的疫情
	 * @return 
	 * @return: List<Ill>
	 */
	List<Ill> selectsByPid(Integer pid);
	
	
	
}

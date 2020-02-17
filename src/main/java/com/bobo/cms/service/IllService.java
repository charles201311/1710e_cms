package com.bobo.cms.service;

import java.util.List;

import com.bobo.cms.domain.City;
import com.bobo.cms.domain.Ill;
import com.github.pagehelper.PageInfo;

public interface IllService {


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
	 * @return: id
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
	 * @Description: 每个省的信息
	 * @return
	 * @return: List<Ill>
	 */
	PageInfo<Ill> selects(Integer page,Integer pageSize);
	
	/**
	 * 
	 * @Title: selectsByPid 
	 * @Description: 查询某个省下的疫情
	 * @return 
	 * @return: List<Ill>
	 */
	List<Ill> selectsByPid(Integer pid);
}

package com.bobo.cms.dao;

import com.bobo.cms.domain.Channel;

public interface ChannelMapper {
	/**
	 * 
	 * @Title: select 
	 * @Description: 根据id返回栏目对象
	 * @param id
	 * @return
	 * @return: Channel
	 */
	Channel select(Integer id);

}

package com.bobo.cms.dao;

import java.util.List;

import com.bobo.cms.domain.Slide;

/**
 * 
 * @ClassName: SlideMapper 
 * @Description: 首页广告
 * @author: charles
 * @date: 2020年1月10日 下午3:06:51
 */
public interface SlideMapper {
	
	List<Slide> selects();
}

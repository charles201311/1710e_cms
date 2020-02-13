package com.bobo.cms.service.impl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bobo.cms.domain.Article;
import com.bobo.cms.domain.Compent;
import com.bobo.cms.domain.User;
import com.bobo.cms.service.CompentService;
import com.yangchunbo.util.DateUtil;
import com.yangchunbo.util.RandomUtil;
import com.yangchunbo.util.StringUtil;
/**
 * 启动 spring容器
 * @ClassName: CompentServiceImplTest 
 * @Description: TODO
 * @author: charles
 * @date: 2020年2月13日 上午9:56:41
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-beans.xml")
public class CompentServiceImplTest {
	
  
	@Resource
	private CompentService compentService;
	
	@Test
	public void testInsert() {
		
		 //1 评论人
		User user = new User();
		user.setId(217);//test用户
		
		//1000条模拟评论数据到表中（10分）
		for (int i = 0; i < 1000; i++) {
		
			Compent c = new Compent();
			c.setUser(user);
			//2 文章ID需要在10个以上随机分配（5分）
			  //如何产生  数据库文章ID 82-94之间随机值
		  
			int articleId = RandomUtil.random(82, 94);
			Article article = new Article();
			article.setId(articleId);
			c.setArticle(article);
			
			//3 评论内容需要用随机字符串生成，最少100字以上（5分）
			String content = StringUtil.randomChineseString(200);
			c.setContent(content);//封装
			
			// 4 发布时间从2019-1-1 00:00:00至今随机（5分）
			Calendar calendar = Calendar.getInstance();
			calendar.set(2019, 0, 1);//2019-1-1 00:00:00
			  //调用工具类
			Date created = DateUtil.randomDate(calendar.getTime(), new Date());
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			c.setCreated(format.format(created));
			
			//执行增加
	           compentService.insert(c);
		
		}
	}


}

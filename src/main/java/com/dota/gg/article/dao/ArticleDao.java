package com.dota.gg.article.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.dota.gg.article.entity.Article;

/**
   * 描述：数据库相关操作
   * @author: ning.li
   * @version: 2016年11月23日 下午5:25:41
 */
@MapperScan
public interface ArticleDao {
	
	public List<Article> getAll();
	
	public Article getById(Long id);
}

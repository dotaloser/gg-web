package com.dota.gg.article.service;

import java.util.List;

import com.dota.gg.article.entity.Article;

/**
   * 描述：服务接口
   * @author: ning.li
   * @version: 2016年11月23日 下午5:27:27
 */
public interface ArticleService {

	public Article getById(Long id);
	
	public List<Article> getAll();
	
	public boolean add(Article article);
}

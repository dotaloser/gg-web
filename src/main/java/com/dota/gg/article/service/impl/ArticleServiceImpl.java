package com.dota.gg.article.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dota.gg.article.dao.ArticleDao;
import com.dota.gg.article.entity.Article;
import com.dota.gg.article.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService{

	@Autowired
	private ArticleDao articleDao;
	
	@Override
	public Article getById(Long id) {
		return articleDao.getById(id);
	}

	@Override
	public List<Article> getAll() {
		return articleDao.getAll();
	}

	@Override
	public boolean add(Article article) {
		article.setAuthorId(1L);
		article.setCreateTime(new Date());
		article.setModifyTime(new Date());
		return articleDao.insert(article) == 1;
	}

	@Override
	public boolean update(Article article) {
		article.setModifyTime(new Date());
		return articleDao.update(article) == 1;
	}

}

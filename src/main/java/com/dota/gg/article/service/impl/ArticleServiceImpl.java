package com.dota.gg.article.service.impl;

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

}

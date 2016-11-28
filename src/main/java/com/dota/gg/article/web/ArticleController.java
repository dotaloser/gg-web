package com.dota.gg.article.web;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dota.gg.article.service.ArticleService;
import com.dota.gg.web.BaseController;

/**
   * 描述：
   * @author: ning.li
   * @version: 2016年11月23日 下午5:27:38
 */
@Controller
@RequestMapping(value = "${adminPath}/article")
public class ArticleController extends BaseController{

	@Autowired
	ArticleService articleService;
	
	@RequestMapping(value = "/list")
	public ModelAndView getList(){
		return new ModelAndView("article/list", "articles", articleService.getAll());
	}
	
	@RequestMapping(value = "/{id}")
	public ModelAndView getArticle(@PathVariable Long id){
		return new ModelAndView("article/article", "article", articleService.getById(id));
	}

	@RequestMapping(value = "/add")
	public ModelAndView add(){
		return new ModelAndView("article/add");
	}
	
	@RequestMapping(value = "/uploadPic")
	public ModelAndView uploadPic(@RequestParam(value = "upload", required = false) MultipartFile file ){
		String fileName = file.getOriginalFilename();
		try {
			String root = System.getProperty("gw.root");
			logger.info("gw.root:" + root);
			file.transferTo(new File(fileName));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ModelAndView("article/add");
	}
}

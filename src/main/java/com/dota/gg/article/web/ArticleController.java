package com.dota.gg.article.web;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dota.gg.article.entity.Article;
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
	public ModelAndView addPage(){
		return new ModelAndView("article/add");
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ModelAndView add(Article article){
		articleService.add(article);
		return getList();
	}
	
	@RequestMapping(value = "/test")
	public ModelAndView test(){
		return new ModelAndView("article/test");
	}
	
	@RequestMapping(value = "/uploadPic")
	public void uploadPic(@RequestParam(value = "upload", required = false) MultipartFile file , 
			HttpServletRequest request, HttpServletResponse response){
		String fileName = file.getOriginalFilename();
		String callback = request.getParameter("CKEditorFuncNum");
		try {
			String folder = System.getProperty("gw.root")+"\\uploadImage";
			file.transferTo(new File(folder, fileName));
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">");
			out.println("window.parent.CKEDITOR.tools.callFunction(" + callback
					+ ",'" + request.getContextPath() + "/uploadImage/" + fileName + "','')");
			out.println("</script>");
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

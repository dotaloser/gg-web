package com.dota.gg.test.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dota.gg.common.AjaxJson;
import com.dota.gg.user.entity.User;
import com.dota.gg.user.service.UserService;

@Controller
@RequestMapping(value = "${adminPath}/test")
public class TestController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/test")
	public String getTestPage(){
		return "/test/test";
	}
	
	@RequestMapping(value = "/bootstrap")
	public String bootstrapDemo(){
		return "test/bootstrap";
	}
	
	@RequestMapping(value = "/bdmap")
	public ModelAndView bdMap(){
		return new ModelAndView("test/bdmap");
	}
	
	@RequestMapping(value = "/users")
	@ResponseBody
	public List<User> getUsers(){
		List<User> users = userService.getUsers(null);
		return users;
	}
	
	@RequestMapping(value = "/string")
	@ResponseBody
	public String getString(){
		return "dennis";
	}
	
	@RequestMapping(value = "/tiny")
	@ResponseBody
	public String getTiny(){
		return "踢尼";
	}
	
	@RequestMapping(value = "/true")
	@ResponseBody
	public Boolean getTrue(){
		return true;
	}
	
	@RequestMapping(value = "/false")
	@ResponseBody
	public Boolean getFalse(){
		return false;
	}
	
	@RequestMapping(value = "/user")
	@ResponseBody
	public AjaxJson getAUser(){
		AjaxJson ajaxJson = new AjaxJson();
		try {
			ajaxJson.setObj(userService.getUsers(null).get(0));
			ajaxJson.setSucFlag(true);
		} catch (Exception e) {
			ajaxJson.setMsg(e.getMessage());
		}
		return ajaxJson;
	}
	
	@RequestMapping(value = "/nav")
	public ModelAndView navTest(){
		return new ModelAndView("nav/nav");
	}
	
	@RequestMapping(value = "/ckeditor")
	public ModelAndView ckEditor(){
		return new ModelAndView("ckeditor/samples/index.html");
	}
}

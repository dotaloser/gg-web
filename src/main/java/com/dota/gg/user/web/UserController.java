package com.dota.gg.user.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dota.gg.user.entity.User;
import com.dota.gg.user.service.UserService;
import com.dota.gg.web.BaseController;

/**
   * 描述：User Controller
   * @author: ning.li
   * @version: 2016年11月18日 下午1:51:32
 */
@Controller
@RequestMapping(value = "${adminPath}/user")
public class UserController extends BaseController{
	
	@Autowired
	UserService userService;

	/**
	   * 描述：fetch users via condition
	   * @author: ning.li
	   * @version: 2016年11月18日 下午1:53:26
	 */
	@RequestMapping(value = "/list")
	public ModelAndView usersPageModelAndView(@ModelAttribute("condition") User condition){
		return new ModelAndView("user/list","users", userService.getUsers(condition));
	}
	
	/**
	   * 描述：add page
	   * @author: ning.li
	   * @version: 2016年11月18日 下午1:54:07
	 */
	@RequestMapping(value = "/add" , method = RequestMethod.GET)
	public String addPage(Model model){
		model.addAttribute("op", "添加");
		return "user/add-update";
	}
	
	/**
	   * 描述：add user
	   * @author: ning.li
	   * @version: 2016年11月18日 下午1:54:16
	 */
	@RequestMapping(value = "/add" , method = RequestMethod.POST)
	public String add(User userEntity){
		userService.insert(userEntity);
		return "redirect:" + adminPath + "/user/list";
	}
	
	/**
	   * 描述：update page
	   * @author: ning.li
	   * @version: 2016年11月18日 下午1:54:26
	 */
	@RequestMapping(value = "/{id}/update" , method = RequestMethod.GET)
	public String updatePage(@PathVariable Long id, Model model){
		model.addAttribute("op", "修改");
		model.addAttribute("user", userService.getById(id));
		return "/user/add-update";
	}
	
	/**
	   * 描述：update user
	   * @author: ning.li
	   * @version: 2016年11月18日 下午1:54:34
	 */
	@RequestMapping(value = "/{id}/update" , method = RequestMethod.POST)
	public String update(@PathVariable Long id, User user){
		userService.update(user);
		return "redirect:" + adminPath + "/user/list";
	}
	
	/**
	   * 描述：delete user
	   * @author: ning.li
	   * @version: 2016年11月18日 下午1:54:43
	 */
	@RequestMapping(value = "/{id}/delete")
	public String delete(@PathVariable Long id){
		userService.delete(id);
		return "redirect:" + adminPath + "/user/list";
	}
}

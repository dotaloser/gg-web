package com.dota.gg.web;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.ModelAttribute;


/**
   * 描述：Controller 基类
   * @author: ning.li
   * @version: 2016年11月18日 下午3:47:26
 */
public abstract class BaseController {
	protected Logger logger = LoggerFactory.getLogger(getClass());
	
	/**
	 * web基础路径
	 */
	@Value("${adminPath}")
	protected String adminPath;
	
	@ModelAttribute
	protected void preCall(){
		System.out.println("I'm be called before the real function call");
	}
}

package com.dota.gg.idea;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
   * 描述：
   * @author: ning.li
   * @version: 2016年10月20日 下午3:25:49
 */
@Controller
@RequestMapping(value = "${adminPath}/idea")
public class IdeaControl {
	
	
	
	@RequestMapping(value = "/dennis")
	public String gg(){
		return "idea/dennis";
	}
}

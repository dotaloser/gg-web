package com.dota.gg.user.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@RequestMapping(value = "/test")
	public String test(){
		return "test";
	}
}

package com.dota.gg.test.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/test")
public class TestController {
	
	@RequestMapping(value = "/a")
	public String getTestPage(){
		return "/test/test";
	}
	
	@RequestMapping(value = "/bootstrap")
	public String bootstrapDemo(){
		return "test/bootstrap";
	}
}

package com.dota.gg.test.service.impl;

import java.util.Date;

import org.springframework.stereotype.Service;

import com.dota.gg.test.service.TestService;
import com.dota.gg.user.entity.User;

@Service
public class TestServiceImpl implements TestService{

	@Override
	public User testGetUser() {
		User user = new User();
		user.setUserName("ted");
		user.setCreateTime(new Date());
		user.setEmail("1@1.com");
		user.setPhone("110");
		return user;
	}

	@Override
	public int testThrow() {
		throw new RuntimeException("some thing is wrong!!!");
	}

	@Override
	public String testString(String input) {
		return "testString:" + input;
	}

}

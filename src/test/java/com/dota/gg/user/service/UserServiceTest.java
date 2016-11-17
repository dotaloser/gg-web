package com.dota.gg.user.service;


import java.util.List;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dota.gg.user.entity.UserEntity;

import junit.framework.Assert;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-context-mybatis.xml"})
public class UserServiceTest {

	@Autowired
	private UserService userService;
	
	@Test
	public void testInsert() {
		UserEntity userEntity = new UserEntity();
		userEntity.setUserName("ted");
		userEntity.setNickName("st");
		userEntity.setPassword("123456");
		userEntity.setCreateTime(new Date());
		userEntity.setEmail("1@1.com");
		userEntity.setPhone("110");
		int count = userService.insert(userEntity);
		Assert.assertTrue(count > 0);
	}

	@Test
	public void testUpdate() {
		
	}

	@Test
	public void testDelete() {
		
	}

	@Test
	public void testGetUsers() {
		List<UserEntity> users = userService.getUsers();
		for (UserEntity userEntity : users) {
			System.out.println(userEntity);
		}
	}

}
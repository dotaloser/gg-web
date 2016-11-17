package com.dota.gg.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dota.gg.user.dao.UserDao;
import com.dota.gg.user.entity.UserEntity;
import com.dota.gg.user.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDao userDao;
	
	@Override
	public int insert(UserEntity user) {
		return userDao.insert(user);
	}

	@Override
	public int update(UserEntity user) {
		return userDao.update(user);
	}

	@Override
	public int delete(UserEntity user) {
		return userDao.delete(user);
	}

	@Override
	public List<UserEntity> getUsers() {
		return userDao.getUsers();
	}

}

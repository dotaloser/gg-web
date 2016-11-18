package com.dota.gg.user.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dota.gg.user.dao.UserDao;
import com.dota.gg.user.entity.User;
import com.dota.gg.user.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDao userDao;
	
	public User getById(Long id){
		return userDao.getById(id);
	}

	@Override
	public List<User> getUsers(User condition) {
		if(condition == null)
			return userDao.getUsers(new User());
		return userDao.getUsers(condition);
	}

	@Override
	public int insert(User user) {
		user.setCreateTime(new Date());
		return userDao.insert(user);
	}

	@Override
	public int update(User user) {
		return userDao.update(user);
	}

	@Override
	public int delete(Long id) {
		return userDao.delete(id);
	}

}

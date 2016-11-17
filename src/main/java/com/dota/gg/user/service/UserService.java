package com.dota.gg.user.service;

import java.util.List;

import com.dota.gg.user.entity.UserEntity;

public interface UserService {
	public int insert(UserEntity user);
	
	public int update(UserEntity user);
	
	public int delete(UserEntity user);
	
	public List<UserEntity> getUsers();
}

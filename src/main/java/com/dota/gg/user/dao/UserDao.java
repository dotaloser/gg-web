package com.dota.gg.user.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.dota.gg.user.entity.UserEntity;

@MapperScan
public interface UserDao {
	public List<UserEntity> getUsers();
	
	public int insert(UserEntity user);
	
	public int update(UserEntity user);
	
	public int delete(UserEntity user);
}

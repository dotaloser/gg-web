package com.dota.gg.user.service;

import java.util.List;

import com.dota.gg.user.entity.User;

public interface UserService {
	
	/**
	   * 描述：get a User
	   * @author: ning.li
	   * @version: 2016年11月18日 下午1:55:38
	 */
	public User getById(Long id);
	
	/**
	   * 描述：fetch user via condition
	   * @author: ning.li
	   * @version: 2016年11月18日 下午1:59:04
	 */
	public List<User> getUsers(User condition);
	
	/**
	   * 描述：insert a user
	   * @author: ning.li
	   * @version: 2016年11月18日 下午1:55:53
	 */
	public int insert(User user);
	
	/**
	   * 描述：update a user
	   * @author: ning.li
	   * @version: 2016年11月18日 下午1:55:53
	 */
	public int update(User user);
	
	/**
	   * 描述：delete a user
	   * @author: ning.li
	   * @version: 2016年11月18日 下午1:55:53
	 */
	public int delete(Long id);
}

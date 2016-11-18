package com.dota.gg.user.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.dota.gg.user.entity.User;

/**
   * 描述：User Dao
   * @author: ning.li
   * @version: 2016年11月18日 下午1:55:10
 */
@MapperScan
public interface UserDao {
	
	/**
	   * 描述：fetch users via condition
	   * @author: ning.li
	   * @version: 2016年11月18日 下午1:57:57
	 */
	public List<User> getUsers(User condition);
	
	/**
	   * 描述：get user by id
	   * @author: ning.li
	   * @version: 2016年11月18日 下午1:58:14
	 */
	public User getById(Long id);
	
	/**
	   * 描述：insert a user
	   * @author: ning.li
	   * @version: 2016年11月18日 下午1:58:27
	 */
	public int insert(User user);
	
	/**
	   * 描述：update a user
	   * @author: ning.li
	   * @version: 2016年11月18日 下午1:58:27
	 */
	public int update(User user);
	
	/**
	   * 描述：delete a user
	   * @author: ning.li
	   * @version: 2016年11月18日 下午1:58:27
	 */
	public int delete(Long id);
}

package com.smart.topology.service;

import java.util.List;

import com.smart.topology.pojo.User;

public interface UserService {
	/**
	 * 获取所有用户信息
	 * 
	 * @return
	 */
	List<User> findAllUser();

	/**
	 * 通过ID获取用户
	 * 
	 * @param id
	 * @return
	 */
	User findById(Integer id);

	/**
	 * 更新用户
	 * 
	 * @param user
	 */
	void update(User user);
}


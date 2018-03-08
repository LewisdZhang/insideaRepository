package com.smart.topology.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.IncorrectUpdateSemanticsDataAccessException;
import org.springframework.stereotype.Service;

import com.smart.topology.dao.UserMapper;
import com.smart.topology.pojo.User;
import com.smart.topology.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	// 注入用户Mapper
	@Autowired
	private UserMapper userMapper;


	public List<User> findAllUser() {
		return userMapper.selectByExample(null);
	}

	public User findById(Integer id) {
		return userMapper.selectByPrimaryKey(id);
	}

	public void update(User user) {
		if (userMapper.updateByPrimaryKeySelective(user) != 1) {
			throw new IncorrectUpdateSemanticsDataAccessException("更新异常");
		}
	}

}


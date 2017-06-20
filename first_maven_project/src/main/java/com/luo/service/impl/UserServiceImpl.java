package com.luo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.luo.dao.UserDao;
import com.luo.domain.User;
import com.luo.service.UserService;

//@Service("UserService") 注解用于标示此类为业务层组件,在使用时会被注解的类会自动由spring进行注入,无需我们创建实例
@Service("UserService") 
public class UserServiceImpl implements UserService {

	//自动注入userdao 用于访问数据库
	@Autowired 
    private UserDao userDao; 
	
	//登录方法的实现,从jsp页面获取username与password
	public boolean login(String userName,String userPassword) {
		System.out.println("输入的账号:" + userName + "输入的密码:" + userPassword);
		//对输入账号进行查询,取出数据库中保存对信息
		User ui = userDao.selectUserByName(userName);
		if (ui != null){		
			System.out.println("查询出来的账号："+ ui.getUserName() + "密码:" +ui.getUserPassword());
			if (ui.getUserName().equals(userName) && ui.getUserPassword().equals(userPassword))
				return true;
			
		}
		return false;
	}

	public boolean insertUser(User user) {
		return userDao.insertUser(user);
	}

	public User selectUserByName(String userName) {		
		return userDao.selectUserByName(userName);
	}

	public boolean updateUserById(User user) {
		return userDao.updateUserById(user);
	}

	public User selectUserById(Integer userId) {
		return userDao.selectUserById(userId);
	}

	  
}

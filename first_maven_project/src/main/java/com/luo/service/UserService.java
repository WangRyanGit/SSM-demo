package com.luo.service;

import com.luo.domain.User;

public interface UserService {
	/*User selectUserById(Integer userId);
	List<User> selectUserAll();*/
	// 通过用户名及密码核查用户登录
	public boolean login(String userName,String userPassword);
	public boolean insertUser(User user);  //注册用户
	public boolean updateUserById(User user);  //更新用户
	public User selectUserByName(String userName); //查询用户
	public User selectUserById(Integer userId); //根据id查询用户

}

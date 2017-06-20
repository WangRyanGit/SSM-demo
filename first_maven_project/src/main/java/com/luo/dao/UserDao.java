package com.luo.dao;

import com.luo.domain.User;

public interface UserDao {
	
	/**
	 * @param userId
	 * @return User
	 */
	//这里以接口形式定义了数据库操作方法,我们只需
	// 在Mybatis映射文件中对其进行映射就可以直接使用
	public User selectUserById(Integer userId); 	
//	public List<User> selectUserAll();
	public User selectUserByName(String userName); 
	public boolean insertUser(User user);  //注册用户
	public boolean updateUserById(User user);  //更新用户

}

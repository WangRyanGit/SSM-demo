package com.luo.dao;

import java.util.HashMap;
import java.util.List;

import com.luo.domain.Customer;


public interface customerDao {

	int deleteCustomerById(Integer id);  //根据主键删除一条用户数据
	int insertCustomer(Customer customer);  //添加
	int updateCustomerById(Customer customer);  //更新
	Customer selectCustomerById(Integer id);  //查找单个3
	List<Customer> selectCustomerList();   //查找所有
	
	int selectCount();  //总记录数
	
	/**
     * 分页操作，调用selectCustomerByPage limit分页方法
     * @param map
     * @return
     */
	List<Customer> selectCustomerByPage(HashMap<String, Object> map);
	
	
}

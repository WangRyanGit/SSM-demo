package com.luo.service;

import java.util.List;

import com.luo.domain.Customer;
import com.luo.domain.PageBean;

/**
 * CustomerService类业务层接口
 * @author Ryan
 */
public interface CustomerService {
	int deleteCustomerById(Integer id);  //根据主键删除一条用户数据
	int insertCustomer(Customer customer);  //添加
	int updateCustomerById(Customer customer);  //更新
	Customer selectCustomerById(Integer id);  //查找单个
	List<Customer> selectCustomerList();   //查找所有
	
	int selectCount();  //总记录数

	PageBean<Customer> selectCustomerByPage(int currPage);

}

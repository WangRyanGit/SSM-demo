package com.luo.service.impl;

import java.util.HashMap;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luo.dao.customerDao;
import com.luo.domain.Customer;
import com.luo.domain.PageBean;
import com.luo.service.CustomerService;

/**
 * Customer类业务层实现类
 * @author Ryan
 */
@Service("CustomerService")
public class CustomerServiceImpl implements CustomerService{
	
	@Autowired
	private customerDao customerDao;

	public int deleteCustomerById(Integer id) {
		return customerDao.deleteCustomerById(id);
	}

	public int insertCustomer(Customer customer) {
		return customerDao.insertCustomer(customer);
	}

	public int selectCount() {
		return customerDao.selectCount();
	}

	public Customer selectCustomerById(Integer id) {
		return customerDao.selectCustomerById(id);
	}

	public List<Customer> selectCustomerList() {
		return customerDao.selectCustomerList();
	}

	public int updateCustomerById(Customer customer) {
		return customerDao.updateCustomerById(customer);
	}

	public PageBean<Customer> selectCustomerByPage(int currPage) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		PageBean<Customer> pageBean = new PageBean<Customer>();
		
		pageBean.setCurrPage(currPage);//封装当前页数
		
		int pageSize=2; //每页显示的数据
		pageBean.setPageSize(pageSize);
		
		int totalCount = customerDao.selectCount(); //封装总记录数
		pageBean.setTotalCount(totalCount);
		
		double tc = totalCount;  //封装总页数
		Double num = Math.ceil(tc/pageSize); //向上取整
		pageBean.setTotalPage(num.intValue());
		
		map.put("start", (currPage-1)*pageSize);
		map.put("size", pageBean.getPageSize());
		
		//封装每页显示的数据
		List<Customer> lists = customerDao.selectCustomerByPage(map);
		pageBean.setLists(lists);
		
		return pageBean;
	}


}

package com.luo.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.luo.dao.EmployeeDao;
import com.luo.domain.Employee;
import com.luo.domain.PageBean;
import com.luo.service.EmployeeService;

@Service("EmployeeService")
public class EmployeeServiceImpl implements EmployeeService{
	
	@Resource
	private EmployeeDao employeeDao;

	/**
	 * 根据id删除数据
	 * */
	public boolean deleteEmployeeById(Integer id) {
		return employeeDao.deleteEmployeeById(id);
	}

	/**
	 * 新增数据
	 * */
	public void insertEmployee(Employee employee) {
		employeeDao.insertEmployee(employee);
	}

	/**
	 * 查询employee所有数据
	 * */
	public List<Employee> selectEmployeeAll() {
		return employeeDao.selectEmployeeAll();
	}

	/**
	 * 根据id查询数据
	 * */
	public Employee selectEmployeeById(Integer id) {
		return employeeDao.selectEmployeeById(id);
	}

	/**
	 * 根据name模糊查询数据
	 * */
	public List<Employee> selectEmployeeByName(String name) {
		return employeeDao.selectEmployeeByName(name);
	}

	/**  
     * 根据 id 修改对应数据  
     */ 
	public boolean updateEmployeeById(Employee employee) {
		return employeeDao.updateEmployeeById(employee);
	}

	public int selectCount() {
		return employeeDao.selectCount();
	}

	public PageBean<Employee> selectEmployeeByPage(int currPage) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		PageBean<Employee> pageBean = new PageBean<Employee>();
		
		pageBean.setCurrPage(currPage); //封装当前页数
		
		int pageSize = 3;//每页显示的数据
		pageBean.setPageSize(pageSize);
		
		int totalCount = employeeDao.selectCount();//封装总记录数
		pageBean.setTotalCount(totalCount);
		
		double tc = totalCount;  //封装总页数
		Double num = Math.ceil(tc/pageSize); //向上取整
		pageBean.setTotalPage(num.intValue());
		
		map.put("start", (currPage-1)*pageSize);
		map.put("size", pageBean.getPageSize());
		
		List<Employee> lists = employeeDao.selectEmployeeByPage(map);
		pageBean.setLists(lists);
		return pageBean;
	}

	

}

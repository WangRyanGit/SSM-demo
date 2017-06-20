package com.luo.service;

import java.util.List;

import com.luo.domain.Employee;
import com.luo.domain.PageBean;

public interface EmployeeService {
	
	
	public List<Employee> selectEmployeeByName(String name);
	public Employee selectEmployeeById(Integer id);
	public void insertEmployee(Employee employee);
	public boolean updateEmployeeById(Employee employee);
	public boolean deleteEmployeeById(Integer id);
	
	public List<Employee> selectEmployeeAll();
	public int selectCount();  //总记录数
	/**
     * 分页操作，调用selectEmployeeByPage limit分页方法
     * @param map
     * @return
     */
	public PageBean<Employee> selectEmployeeByPage(int currPage);

}

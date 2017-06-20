package com.luo.dao;

import java.util.HashMap;
import java.util.List;

import com.luo.domain.Employee;

public interface EmployeeDao {
	//这里以接口形式定义了数据库操作方法,我们只需
	// 在Mybatis映射文件中对其进行映射就可以直接使用
		
	public List<Employee> selectEmployeeByName(String name); //模糊查询
	public Employee selectEmployeeById(Integer id);
	public void insertEmployee(Employee employee);
	public boolean updateEmployeeById(Employee employee);
	public boolean deleteEmployeeById(Integer id);
	
	public List<Employee> selectEmployeeAll();//查找所有
	public int selectCount();  //总记录数
	/**
     * 分页操作，调用selectEmployeeByPage limit分页方法
     * @param map
     * @return
     */
	public List<Employee> selectEmployeeByPage(HashMap<String, Object> map);

}

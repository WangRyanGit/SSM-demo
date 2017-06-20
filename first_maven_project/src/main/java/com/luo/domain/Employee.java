package com.luo.domain;

import java.io.Serializable;

public class Employee implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;
	private String name;
	private String sex;
	private Integer age;
	private String salary;
	private String address;
	
	public Employee(){
		
	}
	
	public Employee(String name,String sex,Integer age,String salary,String address){
		super();
		this.name = name;
		this.sex = sex;
		this.age = age;
		this.salary = salary;
		this.address = address;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Employee [address=" + address + ", age=" + age + ", id=" + id
				+ ", name=" + name + ", salary=" + salary + ", sex=" + sex
				+ "]";
	}
	
	
	
}

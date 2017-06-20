package com.luo.domain;

import java.io.Serializable;
import java.util.Date;


import org.springframework.format.annotation.DateTimeFormat;

public class Customer implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -5050885654323228285L;
	
	private Integer id;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date   created_at;
	private String name;
	private String sex;
	private String city;
	private String mail;
	private String phone;
	private String type;
	private String status;
	private String degree;
	private String source;
	private String maturity;
	private String company;
	private String address;
	private String industry;
	private String telphone;
	private String infomation;
	
	public Customer(){
		
	}
	
	public Customer(Date created_at,String name,String sex,String city,String mail,String phone,String type,String status,
			String degree,String source,String maturity,String company,String address,String industry,String telphone,String infomation){
		super();
		this.created_at = created_at;
		this.name = name;
		this.sex = sex;
		this.city = city;
		this.mail = mail;
		this.phone = phone;
		this.type = type;
		this.status = status;
		this.degree = degree;
		this.source = source;
		this.maturity = maturity;
		this.company = company;
		this.address = address;
		this.industry = industry;
		this.telphone = telphone;
		this.infomation = infomation;
			
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date createdAt) {
		created_at = createdAt;
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getMaturity() {
		return maturity;
	}
	public void setMaturity(String maturity) {
		this.maturity = maturity;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	public String getInfomation() {
		return infomation;
	}
	public void setInfomation(String infomation) {
		this.infomation = infomation;
	}
	
	
	
	

}

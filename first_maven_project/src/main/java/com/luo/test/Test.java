package com.luo.test;

import java.util.Date;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.luo.dao.EmployeeDao;
import com.luo.dao.OfferDao;
import com.luo.dao.UserDao;
import com.luo.dao.customerDao;
import com.luo.domain.Employee;
import com.luo.domain.Offer;
import com.luo.domain.User;
import com.luo.domain.Customer;

public class Test {
	private static ApplicationContext ac;
	     static {
	        ac = new ClassPathXmlApplicationContext("/application.xml");
	     }
	 
	     public static void main(String[] args) {
	    	 //查找
	         /*UserDao mapper =  (UserDao) ac.getBean("userDao");
	         System.out.println("获取");
	         User user = mapper.selectUserByName("admin");
	 
	         System.out.println(user.getUserId()+":"+"  username:"+user.getUserName()+"  password:"+user.getUserPassword());
	    	 */
	    	//更新
	          /*try {
	        	 OfferDao mapper2 =   (OfferDao) ac.getBean("offerDao");
	             Offer em = mapper2.selectOfferById(1);
	             if (em != null) {
	            	 em.setCountry("US");
	                 mapper2.updateOfferById(em);
	                 System.out.println("更新完");
	             }
	         } finally {
	             
	         }*/
	         
	    	 //查找
	    	 /*EmployeeDao mapper =  (EmployeeDao) ac.getBean("employeeDao");
	         System.out.println("获取");
	         List<Employee> empList = mapper.selectEmployeeAll();
	 
	         for (Employee em : empList){
	        	 System.out.println(em.getId()+em.getName()+em.getSex()+em.getAge()+em.getSalary()+em.getAddress());
	         }*/
	         
	         /* List<Employee> list = mapper.selectEmployeeByLikeName("1");
	         System.out.println(list.size()+"   size");
	         for (Employee li : list){
	        	 System.out.println(li.getName()+ "   like");
	         }*/
	    	 
	    	 EmployeeDao mapper =  (EmployeeDao) ac.getBean("employeeDao");
	         System.out.println("获取");
	         List<Employee> empList = mapper.selectEmployeeByName("曹");
	         
	         System.out.println(empList+"  查询大小");
	         for (Employee em : empList){
	        	 System.out.println(em.getName()+  " name");
	         }
	         
	         //添加
	    	 /*System.out.println("123");
	         Customer customer = new Customer();
	         customer.setCreated_at(new Date());
	         customer.setName("风映寒");
	         customer.setCompany("疾风剑如");
	         try {
	        	 customerDao mapper1 = (customerDao) ac.getBean("customerDao");
	        	 mapper1.insertCustomer(customer);
	             System.out.println("当前增加的用户 id为:"+customer.getId());
	         } finally {
	           
	         }*/
	         
	         //更新
	         /*try {
	        	 EmployeeDao mapper2 =  (EmployeeDao) ac.getBean("employeeDao");
	             Employee em = mapper2.selectEmployeeByName("李世民");
//	        	 Employee em = mapper2.selectEmployeeById(6);
	             if (em != null) {
	                 em.setAddress("开元盛世");
	                 mapper2.updateEmployeeById(em);
	                 System.out.println("更新完");
	             }
	         } finally {
	             
	         }*/
	         
	        /* //删除
	         try {
	        	 OfferDao mapper1 =  (OfferDao) ac.getBean("offerDao");
	             mapper1.deleteOfferById(4);
	             System.out.println("删除完");

	         } finally {
	             
	         }*/
	 
	         //注册用户
	         /*User user=new User();
	         user.setUserName("风映寒");
	         user.setUserPassword("888888");
	         
	         try {
	        	 UserDao mapper1 =   (UserDao) ac.getBean("userDao");
	        	 mapper1.insertUser(user);
	             System.out.println("当前增加的用户 id为:"+user.getUserId());
	         } finally {
	           
	         }*/
	    	 
	    	 /*OfferDao mapper = (OfferDao) ac.getBean("offerDao");
	         System.out.println("获取"+mapper);*/
	        /* List<Offer> empList = mapper.selectOfferAll();
	         
	         for (Offer em : empList){
	        	 System.out.println(em.getId()+em.getCountry()+em.getProvider());
	         }*/
	         
	         
	         
	     }
}

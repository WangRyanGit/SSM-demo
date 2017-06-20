package com.luo.service;

import java.util.List;

import org.junit.Test;  
import org.springframework.beans.factory.annotation.Autowired;  
import com.luo.baseTest.SpringTestCase;  
import com.luo.domain.Offer;
import com.luo.domain.User;

public class UserServiceTest extends SpringTestCase {
	
	@Autowired  
    private UserService userService; 
	
	@Autowired
	private OfferService offerService;

	/*@Test
	public void getselectUserTest(){
		System.out.println("开始了");
		User user = userService.selectUserById(1);
		System.out.println(user.getUserName() + " : " + user.getUserPassword());
		List<User> rows = userService.selectUserAll();
		if (rows.size() > 0){
			for (User li : rows){
				System.out.println(li.getUserId() + " : " +li.getUserPassword()+" : "+li.getUserName());
			}
		}
	}*/
	@Test
	public void getselect(){
		Offer offer = offerService.selectOfferById(1);
		List<Offer> list = offerService.selectOfferAll();
		for (Offer li : list){
			System.out.println(li.getName());
		}
	}
}

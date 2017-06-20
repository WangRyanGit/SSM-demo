package com.luo.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.luo.domain.Offer;
import com.luo.domain.User;
import com.luo.service.UserService;

@Controller //@Controller注解用于标示本类为web层控制组件
@RequestMapping("/register")  //@RequestMapping("/register")用于标定访问时对url位置
@Scope("prototype")  //在默认情况下springmvc的实例都是单例模式,所以使用scope域将其注解为每次都创建一个新的实例,来保证每一个请求有一个单独的Action来处理，避免struts中Action的线程安全问题
public class UserController {  
	
	@Autowired//自动注入
	private UserService userService;

	/**向数据库中添加一条用户信息
	 * @param user
	 * @return int   @ResponseBody
	 */
	//注册业务的访问位置为/register/adduser
    @RequestMapping(value="/adduser",method=RequestMethod.POST)   
	public String addUser(User user){
    	boolean insertSuccess = userService.insertUser(user);
    	System.out.println("注册成功");
    	if (insertSuccess){
    		return "/loginview/login";
    	}
		return "/error";
		
	}
    /**  
     *编辑用户  
     * @param user  
     * @param request  
     * @return  
     */ 
	@RequestMapping(value="/updateUser",method=RequestMethod.POST)
	public String updateUser(User user,HttpServletRequest request,Model model){
		if (userService.updateUserById(user)){
			user = userService.selectUserById(user.getUserId());
			request.setAttribute("user", user);
			try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			model.addAttribute("user", user);
			return "redirect:/user/login";
		}else {
			return "/error";
		}
		
	}
   /*        
//    @RequestMapping("/")    
    public ModelAndView getIndex(){      
        ModelAndView mav = new ModelAndView("login");   
        User user = userService.selectUserById(1);  
        mav.addObject("user", user);   
        return mav;    
    }*/
    
	/**
	 * 
	 * 测试json传值
	 * 
	 */
	@RequestMapping(value="{name}",method=RequestMethod.POST)
	@ResponseBody
	public User getJsonUser(@PathVariable String name){
		
		User user = new User();
		
		user.setUserName(name);
		user.setUserPassword("admin");
		return user;		
	}
    
 
}  

package com.luo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.luo.domain.User;
import com.luo.service.UserService;


@Controller //@Controller注解用于标示本类为web层控制组件
@RequestMapping("/user")  //@RequestMapping("/user")用于标定访问时对url位置
@Scope("prototype")  //在默认情况下springmvc的实例都是单例模式,所以使用scope域将其注解为每次都创建一个新的实例,来保证每一个请求有一个单独的Action来处理，避免struts中Action的线程安全问题
public class LoginController{
	
	@Autowired  //自动注入业务层的userService类
	private UserService userService;

	//login业务的访问位置为/user/login
    @RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(User user,HttpServletRequest request) throws Exception{
		
		//调用login方法来验证是否是注册用户
        boolean loginType = userService.login(user.getUserName(),user.getUserPassword());
        if(loginType){
            //如果验证通过,则将用户信息传到前台
            request.setAttribute("user",user);
            //并跳转到main.jsp页面
            return "/main";
        }else{
            //若不对,则将错误信息显示到错误页面error.jsp
            request.setAttribute("message","用户名密码错误");
            return "/error";
        }

	}
    
    
}

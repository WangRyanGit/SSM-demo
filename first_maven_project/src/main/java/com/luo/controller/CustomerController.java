package com.luo.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.luo.domain.Customer;
import com.luo.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/showAllCustomer")
	public String showAllCustomer(@RequestParam(value="currentPage",defaultValue="1",required=false)int currPage,Model model){		
		List<Customer> lists = customerService.selectCustomerList();
		model.addAttribute("lists", lists);  //输出总数据
		model.addAttribute("pagemsg", customerService.selectCustomerByPage(currPage));  //回显分页数据
		return "customerview/customerList";
		
	}
	
	
	/**  
     * 跳转到添加用户界面  
     * @param request  
     * @return  
     */
	@RequestMapping("/toaddCustomer")
	public String toaddEmployee(){
		return "customerview/customerAdd";		
	}
	
	/**  
     * 添加用户并重定向  
     * @param Customer  
     * @param request  
     * @return  
     */ 
	@RequestMapping("/addCustomer")  
    public String addCustomer(Customer customer){ 
		System.out.println("开始添加");
        customerService.insertCustomer(customer);
        System.out.println("添加客户为：" + customer.getName());
        return "redirect:/customer/showAllCustomer";  	
    }
	@InitBinder  
	public void initBinder(WebDataBinder binder) {  
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");  
	    dateFormat.setLenient(false);  
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false)); 
	}
	/**  
     * 删除用户  
     * @param id  
     * @param request  
     * @param response  
     */ 
	@RequestMapping("/deleteCustomer")
	public String deleteCustomer(int id,HttpServletRequest request) {
		int rows = customerService.deleteCustomerById(id);
		System.out.println("删除  "+rows+"  条");
		if (rows > 0){
			return "redirect:/customer/showAllCustomer";
		}else {
			return "/error";
		}
		
	}
	
	/**  
     * 批量删除  
     * @param id  
     * @param request  
     * @param response  
     */
	@RequestMapping("/batchDelete")
	public String batchDelete(HttpServletRequest request) {
		String[] ids = request.getParameterValues("check");
		if(ids==null){
    		return "redirect:/customer/showAllCustomer";
    	}else{
	    	for (int i = 0; i < ids.length; i++) {
	    		Integer id=Integer.parseInt(ids[i]);
	    		customerService.deleteCustomerById(id);
		}
	    	return "redirect:/customer/showAllCustomer";
    	}		
	}
	
	
	
	/**  
     * 编辑客户  
     * @param id  
     * @param request  
     * @return  
     */
	@RequestMapping("/toEditCustomer")
	public String toEditEmployee(int id,Model model){
		model.addAttribute("customer", customerService.selectCustomerById(id));
		return "customerview/customerEdit";	
	}
	
	/**  
     *编辑客户  
     * @param customer  
     * @param request  
     * @return  
     */ 
	@RequestMapping(value="/updateCustomer",method=RequestMethod.POST)
	public String updateCustomer(Customer customer,Model model){
		int rows = customerService.updateCustomerById(customer);
		System.out.println("修改 " + rows + "条");
		if (rows > 0){
			System.out.println(customer.getId()+"  修改成功");
			customer = customerService.selectCustomerById(customer.getId());
			model.addAttribute("customer", customer);
			return "redirect:/customer/showAllCustomer";
		}else {
			return "/error";
		}
		
	}
	
	
}

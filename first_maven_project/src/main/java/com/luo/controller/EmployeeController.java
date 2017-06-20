package com.luo.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.luo.domain.Employee;
import com.luo.service.EmployeeService;


@Controller
@RequestMapping("/employee")
public class EmployeeController {
	
	@Autowired//自动注入
	private EmployeeService employeeService;
	
	/**  
     * 获取所有用户列表  
     * @param request  
     * @return  
     */
	@RequestMapping("/getAllEmployee")
	public String getAllEmployee(@RequestParam(value="currentPage",defaultValue="1",required=false)int currPage,Model model){
		List<Employee> employee = employeeService.selectEmployeeAll();
		model.addAttribute("employeelist", employee);//输出总数据
		model.addAttribute("pagemsg",employeeService.selectEmployeeByPage(currPage)); //回显分页数据
		return "employeeview/allEmployee";		
	}
	/**  
     * 跳转到添加用户界面  
     * @param request  
     * @return  
     */
	@RequestMapping("/toaddEmployee")
	public String toaddEmployee(){
		return "employeeview/addEmployee";		
	}
	
	/**  
     * 添加用户并重定向  
     * @param employee  
     * @param request  
     * @return  
     */ 
	@RequestMapping(value="/addEmployee",method=RequestMethod.POST)
    public String addEmployee(Employee employee){
		System.out.println(employee.getName()+"  开始添加");
        employeeService.insertEmployee(employee);
        System.out.println(employee.getName()+"   " + employee.getSex());
        return "redirect:/employee/getAllEmployee";  
    }
	
	/**  
     *编辑用户  
     * @param employee  
     * @param request  
     * @return  
     */ 
	@RequestMapping(value="/updateEmployee",method=RequestMethod.POST)
	public String updateEmployee(Employee employee,HttpServletRequest request,Model model){
		if (employeeService.updateEmployeeById(employee)){
			System.out.println(employee+"  修改成功");
			employee = employeeService.selectEmployeeById(employee.getId());
			request.setAttribute("employee", employee);
			try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			model.addAttribute("employee", employee);
			return "redirect:/employee/getAllEmployee";
		}else {
			return "/error";
		}
		
	}
	
	/**  
     * 根据id查询单个用户  
     * @param id  
     * @param request  
     * @return  
     */
	@RequestMapping("/getEmployee")
	public String getEmployee(int id,HttpServletRequest request,Model model){
		request.setAttribute("employee", employeeService.selectEmployeeById(id));
		model.addAttribute("employee", employeeService.selectEmployeeById(id));
		return "employeeview/editEmployee";	
	}
	
	/**  
     * 删除用户  
     * @param id  
     * @param request  
     * @param response  
     */ 
	@RequestMapping("/deleteEmployee")
	public String deleteEmployee(int id,HttpServletRequest request) {
		boolean rows = employeeService.deleteEmployeeById(id);
		if (rows){
			return "redirect:/employee/getAllEmployee";
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
    		return "redirect:/employee/getAllEmployee";
    	}else{
	    	for (int i = 0; i < ids.length; i++) {
	    		Integer id=Integer.parseInt(ids[i]);
	    		employeeService.deleteEmployeeById(id);
		}
	    	return "redirect:/employee/getAllEmployee";
    	}		
	}
	
	/**  
     * 根据模糊查询  
     * @param name  
     * @param request  
     * @return  
     */
	@RequestMapping(value="/getEmployeeLikeName",method=RequestMethod.POST)
	public String getEmployeeLikeName(String name,Model model){
		model.addAttribute("pagemsg", employeeService.selectEmployeeByName(name));
		return "redirect:/employee/getAllEmployee";
	}
}

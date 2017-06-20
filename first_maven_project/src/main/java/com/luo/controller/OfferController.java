package com.luo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.luo.domain.Offer;
import com.luo.service.OfferService;
import com.luo.untils.PageUntils;

@Controller
@RequestMapping("/offer")
public class OfferController {
	
	@Autowired
	private OfferService offerService;
	
	@RequestMapping("/addOffer")
	public String addOffer(Offer offer){
		offerService.insertOffer(offer);
		return "redirect:/offer/list";		
	}

	@RequestMapping("/list")
	public String list(Model model,HttpServletRequest request){
		/**
    	 * 获取页面参数
    	 */
		String page = request.getParameter("page");
		String fileName = request.getParameter("fileName");
		String search =  request.getParameter("search");
//		String selectRole = request.getParameter("selectRole");
		/**
    	 * 总记录数
    	 */
		int count = 0;
		int currentPage = 0;
		PageUntils pages = null;
		List<Offer> offer = null;
		
		/**
    	 * 判断当前页
    	 */
    	if(page == null || page.equals("")){
    		currentPage = 1;
    	}else{
    		currentPage = Integer.parseInt(page);
    	}
    	/**
    	 * 判断模糊查询条件
    	 */
    	if(search != null && search != "" && fileName != null && fileName != ""){
    		
    		String where=" where " + fileName + " like " + " '%"+search+"%' ";
    		
    		 /*获取查询总记录数*/
     	   	count=offerService.countByWhere(where);
     	   	
          	/*通过PageUntils这个类可以获取分页的起始下标和条数*/
            pages=new PageUntils(count,currentPage);
            
            /*拼接分页语句*/
            where=where+" limit " +pages.getStartIndex()+ "," +pages.getPagesize();
            
            offer = offerService.selectByWhere(where);
            
    	}else if(fileName != null && fileName != "" && (search == null || search == "")){
    		
    		/*获取查询总记录数*/
     	   count=offerService.selectCount();
     	   	
          	/*通过Page这个类可以获取分页的起始下标和条数*/
            pages=new PageUntils(count,currentPage);
            
            /*拼接分页语句*/
            offer = offerService.limit(pages.getStartIndex(), pages.getPagesize());
    	}else{
    		
    		 /*获取查询总记录数*/
    	   count=offerService.selectCount();
    	   	
         	/*通过Page这个类可以获取分页的起始下标和条数*/
           pages=new PageUntils(count,currentPage);
           
           /*拼接分页语句*/
           offer = offerService.limit(pages.getStartIndex(), pages.getPagesize());
    	}
		
		model.addAttribute("pages", pages);
		model.addAttribute("fileName", fileName);
		model.addAttribute("offer",offer);
		model.addAttribute("search",search);
		
		return "offerview/offerList";
		
	}
		
	@RequestMapping("/deleteOffer")
	public String deleteOffer(Integer id,HttpServletRequest request){
		int rows = offerService.deleteOfferById(id);
		System.out.println("删除   "+rows+" 条");
		if (rows > 0){
			return "redirect:/offer/list";
		}else{
			return "/error";
		}
	}
	
	@RequestMapping("/batchDelete")
	public String batchDelete(HttpServletRequest request) {
		String[] ids = request.getParameterValues("subcheck");
		if(ids==null){
    		return "redirect:/offer/list";
    	}else{
	    	for (int i = 0; i < ids.length; i++) {
	    		Integer id=Integer.parseInt(ids[i]);
	    		offerService.deleteOfferById(id);
		}
	    	return "redirect:/offer/list";
    	}		
	}
	
	//跳转到编辑offer界面
	@RequestMapping("/load")
	public String load(Model model,int id){
		Offer offer = offerService.selectOfferById(id);
		model.addAttribute("offer", offer);
		return "offerview/offerEdit";
		
	}
	//更新offer
	@RequestMapping(value="/updateOffer",method=RequestMethod.POST)
	public String updateOffer(Offer offer,HttpServletRequest request){
		int rows = offerService.updateOfferById(offer);
		System.out.println("修改  "+rows+"  条  " + offer);
		if (rows > 0){
			return "redirect:/offer/list";
		}else{
			System.out.println("修改失败");
			return "/error";
		}
	}
	

}

package com.luo.untils;

import java.util.List;

import com.luo.domain.Offer;

public class PageUntils {

	private int startIndex;//起始下标
	
	private int currentPage;//当前页
	
	private int pagesize=3;//显示几条记录
	
	private int count; //总记录数
	
	private int totalPages;//总页数
	
	private List<Offer> offer;
	
	public PageUntils(){
		
	}
	
	public PageUntils(int count,int currentPage){
		
		this.count=count;//总记录数
		
		this.currentPage = currentPage;//当前页
		
		if (count%this.pagesize == 0){ //判断总记录数除以每页的记录数是否为0
			
			this.totalPages = count/this.pagesize;   //整数页数
			
		}else {
			
			this.totalPages = count/this.pagesize+1;  //页数加一
			
		}
		
		this.startIndex=(this.currentPage - 1)*this.pagesize;  
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPagesize() {
		return pagesize;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public List<Offer> getOffer() {
		return offer;
	}

	public void setOffer(List<Offer> offer) {
		this.offer = offer;
	}
		
}

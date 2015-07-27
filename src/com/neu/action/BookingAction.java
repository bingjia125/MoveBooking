package com.neu.action;


import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.neu.entity.Booking;
import com.neu.service.BookingService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.CompoundRoot;
import com.opensymphony.xwork2.util.ValueStack;

public class BookingAction extends ActionSupport implements ModelDriven<Booking>,RequestAware,SessionAware{
	
	private Booking booking = new Booking();
	private BookingService bs;
	private Map<String, Object> request; 
	private Map<String, Object> session;
	private int pageNum = 1;


	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public BookingService getBs() {
		return bs;
	}

	public void setBs(BookingService bs) {
		this.bs = bs;
	}

	@Override
	public Booking getModel() {
		// TODO Auto-generated method stub
		return booking;
	}
	
	public String saveMessage(){
				
		bs.saveMessage(booking);
		
		request.put("sta", 1);
		
		return SUCCESS;
	}
	
	/*
	 * 查询所有信息数量
	 */
	public String findAll(){
		
		int listSize = bs.findAll();
		
		if(listSize % 5 >= 1){
			
			listSize = listSize/5+1;
		} else{
			listSize = 1;
		}
		session.put("listSize", listSize);
		
		return SUCCESS;
	}
	
	
	/*
	 * 查询信息
	 */
	public String findBypage(){
		
		HttpServletRequest req = ServletActionContext.getRequest(); 	
		if(null != req.getParameter("pageNum")){
			pageNum = Integer.parseInt(req.getParameter("pageNum"));
		}
		List resultList = bs.findBypage(pageNum);
				
		session.put("resultList", resultList);
		
		return SUCCESS;
	}
	
	/*
	 *修改 信息前将当前
	 *对应对象信息加入至输入框中
	 */
	
	public void addUpdatemessage(){		
		
		int i = booking.getMid();
		System.out.println(i);
		System.out.println("=============");
		
		List list = bs.finBymid(booking.getMid());
		booking.setArea(((Booking) list.get(0)).getArea());
		booking.setCartype(((Booking) list.get(0)).getCartype());
		booking.setContatc(((Booking) list.get(0)).getContatc());
		booking.setMovedate(((Booking) list.get(0)).getMovedate());
		booking.setPhone(((Booking) list.get(0)).getPhone());
		booking.setStatus(((Booking) list.get(0)).getStatus());
		
	}
	
	public String updateBooking(){
		
		addUpdatemessage();
		return "updateMessage";
	}
	
	public String checkedBooking(){
		
		addUpdatemessage();
		return "checkedMessage";
	}
	
	
	/*
	 *修改 信息
	 */
	public String updateMessage(){
		
		bs.updateMessage(booking);
		request.put("sta", 2);
		return "updateMessage";
	}
	
	@Override
	public void setRequest(Map<String, Object> request) {
		
		this.request = request;
	}

	@Override
	public void setSession(Map<String, Object> session) {

		this.session = session;
	}
	
	
	
}

package com.neu.service;

import java.util.List;

import com.neu.dao.BookingDAO;
import com.neu.entity.Booking;

public class BookingService {
	
	private BookingDAO bd;
	
	
	
	public BookingDAO getBd() {
		return bd;
	}



	public void setBd(BookingDAO bd) {
		this.bd = bd;
	}



	public void saveMessage(Booking booking){
		bd.saveMessage(booking);
	}
	
	public int findAll(){
		
		List list = bd.findAll();
		
		int listSize = list.size();
		
		return listSize;
	}
	
	public List findBypage(int pageNum){
		
		List list = bd.findBypage(pageNum);
		
		return list;
	}
	
	public void updateMessage(Booking booking){
		
		bd.updateMessage(booking);
	}
	
	public List finBymid(int mid){
		
		return bd.finBymid(mid);
	}
}

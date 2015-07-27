package com.neu.action;

import com.neu.entity.Admin;
import com.neu.service.AdminService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AdminAction extends ActionSupport implements ModelDriven<Admin> {
	
	private Admin madmin = new Admin();
	private AdminService as;
	
	public AdminService getAs() {
		return as;
	}

	public void setAs(AdminService as) {
		this.as = as;
	}

	@Override
	public Admin getModel() {
		
		return madmin;
	}

	public String login(){
		
		boolean b = as.login(madmin.getUsername(), madmin.getUserpass());
		
		if(b){
			return SUCCESS;
		} else{
			return LOGIN;
		}
	}
	
}

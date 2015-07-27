package com.neu.service;

import com.neu.dao.AdminDAO;

public class AdminService {

	private AdminDAO ad;

	public AdminDAO getAd() {
		return ad;
	}

	public void setAd(AdminDAO ad) {
		this.ad = ad;
	}
	
	public boolean login(String username, String userpass){
		
		return ad.login(username, userpass);
	}
}

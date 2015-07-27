package com.neu.entity;

import java.math.BigDecimal;

/**
 * Admin entity. @author MyEclipse Persistence Tools
 */

public class Admin implements java.io.Serializable {

	// Fields

	private BigDecimal aid;
	private String username;
	private String userpass;

	// Constructors

	/** default constructor */
	public Admin() {
	}

	/** full constructor */
	public Admin(BigDecimal aid, String username, String userpass) {
		this.aid = aid;
		this.username = username;
		this.userpass = userpass;
	}

	// Property accessors

	public BigDecimal getAid() {
		return this.aid;
	}

	public void setAid(BigDecimal aid) {
		this.aid = aid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpass() {
		return this.userpass;
	}

	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}

}
package com.neu.entity;

import java.sql.Date;


/**
 * Booking entity. @author MyEclipse Persistence Tools
 */

public class Booking implements java.io.Serializable {

	// Fields

	private Integer mid;
	private String area;
	private String cartype;
	private String movedate;
	private String contatc;
	private String phone;
	private String status;

	// Constructors

	/** default constructor */
	public Booking() {
	}

	/** minimal constructor */
	public Booking(Integer mid, String area, String cartype, String movedate,
			String contatc, String phone) {
		this.mid = mid;
		this.area = area;
		this.cartype = cartype;
		this.movedate = movedate;
		this.contatc = contatc;
		this.phone = phone;
	}

	/** full constructor */
	public Booking(Integer mid, String area, String cartype, String movedate,
			String contatc, String phone, String status) {
		this.mid = mid;
		this.area = area;
		this.cartype = cartype;
		this.movedate = movedate;
		this.contatc = contatc;
		this.phone = phone;
		this.status = status;
	}

	// Property accessors

	public Integer getMid() {
		return this.mid;
	}

	public void setMid(Integer mid) {
		this.mid = mid;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getCartype() {
		return this.cartype;
	}

	public void setCartype(String cartype) {
		this.cartype = cartype;
	}

	public String getMovedate() {
		return this.movedate;
	}

	public void setMovedate(String movedate) {
		this.movedate = movedate;
	}

	public String getContatc() {
		return this.contatc;
	}

	public void setContatc(String contatc) {
		this.contatc = contatc;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
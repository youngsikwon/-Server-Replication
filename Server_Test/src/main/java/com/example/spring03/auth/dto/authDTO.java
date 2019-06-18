package com.example.spring03.auth.dto;

import java.util.Date;

public class authDTO {
	
	private String user_id;
	private String role;
	private String user_pw;
	private String user_name;
	private String user_phone;
	private String user_email;
	private String user_birth;
	private String user_add;
	private String user_addr2;
	private String user_role;
	private Date user_reg_date;
	private String t_group_id;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getUser_add() {
		return user_add;
	}
	public void setUser_add(String user_add) {
		this.user_add = user_add;
	}
	public String getUser_addr2() {
		return user_addr2;
	}
	public void setUser_addr2(String user_addr2) {
		this.user_addr2 = user_addr2;
	}
	public String getUser_role() {
		return user_role;
	}
	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}
	public Date getUser_reg_date() {
		return user_reg_date;
	}
	public void setUser_reg_date(Date user_reg_date) {
		this.user_reg_date = user_reg_date;
	}
	public String getT_group_id() {
		return t_group_id;
	}
	public void setT_group_id(String t_group_id) {
		this.t_group_id = t_group_id;
	}
	@Override
	public String toString() {
		return "authDTO [user_id=" + user_id + ", role=" + role + ", user_pw=" + user_pw + ", user_name=" + user_name
				+ ", user_phone=" + user_phone + ", user_email=" + user_email + ", user_birth=" + user_birth
				+ ", user_add=" + user_add + ", user_addr2=" + user_addr2 + ", user_role=" + user_role
				+ ", user_reg_date=" + user_reg_date + ", t_group_id=" + t_group_id + "]";
	}
	public authDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	
	
	
	
}

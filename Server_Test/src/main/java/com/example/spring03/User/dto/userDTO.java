package com.example.spring03.User.dto;

import java.util.Date;


public class userDTO {
	private String user_id;
	private String user_pw;
	private String user_pw2;
	private String user_name;
	private String user_phone;
	private String user_email;
	private String group_name;
	private String user_birth;
	private String user_addr;
	private String user_addr_1;
	private String user_role;
	private String t_group_name;
	private Date user_reg_date;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_pw2() {
		return user_pw2;
	}
	public void setUser_pw2(String user_pw2) {
		this.user_pw2 = user_pw2;
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
	public String getGroup_name() {
		return group_name;
	}
	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getUser_addr() {
		return user_addr;
	}
	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}
	public String getUser_addr_1() {
		return user_addr_1;
	}
	public void setUser_addr_1(String user_addr_1) {
		this.user_addr_1 = user_addr_1;
	}
	public String getUser_role() {
		return user_role;
	}
	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}
	public String getT_group_name() {
		return t_group_name;
	}
	public void setT_group_name(String t_group_name) {
		this.t_group_name = t_group_name;
	}
	public Date getUser_reg_date() {
		return user_reg_date;
	}
	public void setUser_reg_date(Date user_reg_date) {
		this.user_reg_date = user_reg_date;
	}
	@Override
	public String toString() {
		return "userDTO [user_id=" + user_id + ", user_pw=" + user_pw + ", user_pw2=" + user_pw2 + ", user_name="
				+ user_name + ", user_phone=" + user_phone + ", user_email=" + user_email + ", group_name=" + group_name
				+ ", user_birth=" + user_birth + ", user_addr=" + user_addr + ", user_addr_1=" + user_addr_1
				+ ", user_role=" + user_role + ", t_group_name=" + t_group_name + ", user_reg_date=" + user_reg_date
				+ "]";
	}
	public userDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	


	
	

}
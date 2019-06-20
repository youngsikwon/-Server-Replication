package com.example.spring03.tracker.dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class trackerDTO {
	
	
	 private String tracker_idx;
	 private String tracker_id;
	 private String t_group_id;
	 private String tracker_name;
	 private String tracker_model;
	 private String tracker_capacity;
	 private String tracker_builder;
	 private String tracker_type;
	 private String tracker_manager;
	 private String tracker_loc_lat;
	 private String tracker_loc_lng;
	 private String tracker_owner;
	 private String tracker_phone;
	 private String tracker_username;
	 private String tracker_img_filename;
	 private String tracker_port;
	 private String history;
	 private Date tracker_reg_date;
	 private Date tracker_completion_date;
	 private Date tracker_install_date;
	 private Date tracker_upt_date;
	 ///////////////////////////////////
	 //군집명 
		private String t_group_addr;
		private String t_group_addr2;
		private String t_group_loc_lat;
		private String t_group_loc_lng;
		private String t_group_name;
		private String t_group_username;
		private String t_group_manager;
		private String t_group_builder;
		private String t_group_owner; 
		private String t_group_phone;
		private String t_group_email;
		private String t_group_capacity;
		private MultipartFile t_group_img_filename;
		private String t_group_ip;
		private Date t_group_reg_date;
		private Date t_group_upt_date;
		private Date t_group_install_date;
		private int tracker_cnt;
		private int inverter_cnt;
	//////////////////////////////////////
	 //인버터 아이디 
		private String	inverter_idx; // 인버터 인덱스
		 private String	inverter_id; // 인버터 아이디
		 private String	inverter_name; // 군집명
		 private String	inverter_builder; // 시공사
		 private String	inverter_model; // 모델명
		 private String	inverter_owner; // 모델명
		 private Float	inverter_capacity; // 용량
		 private String	inverter_manager; // 이름
		 private String	inverter_phone; // 핸드폰번호
		 private String	inverter_username; // 핸드폰번호
		 private Date inverter_reg_date; // 작성일자
		 private Date inverter_install_date; // 작성일자
		 private Date inverter_completion_date; // 작성일자
	 //////////////////////////////////////
		public String getTracker_idx() {
			return tracker_idx;
		}
		public void setTracker_idx(String tracker_idx) {
			this.tracker_idx = tracker_idx;
		}
		public String getTracker_id() {
			return tracker_id;
		}
		public void setTracker_id(String tracker_id) {
			this.tracker_id = tracker_id;
		}
		public String getT_group_id() {
			return t_group_id;
		}
		public void setT_group_id(String t_group_id) {
			this.t_group_id = t_group_id;
		}
		public String getTracker_name() {
			return tracker_name;
		}
		public void setTracker_name(String tracker_name) {
			this.tracker_name = tracker_name;
		}
		public String getTracker_model() {
			return tracker_model;
		}
		public void setTracker_model(String tracker_model) {
			this.tracker_model = tracker_model;
		}
		public String getTracker_capacity() {
			return tracker_capacity;
		}
		public void setTracker_capacity(String tracker_capacity) {
			this.tracker_capacity = tracker_capacity;
		}
		public String getTracker_builder() {
			return tracker_builder;
		}
		public void setTracker_builder(String tracker_builder) {
			this.tracker_builder = tracker_builder;
		}
		public String getTracker_type() {
			return tracker_type;
		}
		public void setTracker_type(String tracker_type) {
			this.tracker_type = tracker_type;
		}
		public String getTracker_manager() {
			return tracker_manager;
		}
		public void setTracker_manager(String tracker_manager) {
			this.tracker_manager = tracker_manager;
		}
		public String getTracker_loc_lat() {
			return tracker_loc_lat;
		}
		public void setTracker_loc_lat(String tracker_loc_lat) {
			this.tracker_loc_lat = tracker_loc_lat;
		}
		public String getTracker_loc_lng() {
			return tracker_loc_lng;
		}
		public void setTracker_loc_lng(String tracker_loc_lng) {
			this.tracker_loc_lng = tracker_loc_lng;
		}
		public String getTracker_owner() {
			return tracker_owner;
		}
		public void setTracker_owner(String tracker_owner) {
			this.tracker_owner = tracker_owner;
		}
		public String getTracker_phone() {
			return tracker_phone;
		}
		public void setTracker_phone(String tracker_phone) {
			this.tracker_phone = tracker_phone;
		}
		public String getTracker_username() {
			return tracker_username;
		}
		public void setTracker_username(String tracker_username) {
			this.tracker_username = tracker_username;
		}
		public String getTracker_img_filename() {
			return tracker_img_filename;
		}
		public void setTracker_img_filename(String tracker_img_filename) {
			this.tracker_img_filename = tracker_img_filename;
		}
		public String getTracker_port() {
			return tracker_port;
		}
		public void setTracker_port(String tracker_port) {
			this.tracker_port = tracker_port;
		}
		public String getHistory() {
			return history;
		}
		public void setHistory(String history) {
			this.history = history;
		}
		public Date getTracker_reg_date() {
			return tracker_reg_date;
		}
		public void setTracker_reg_date(Date tracker_reg_date) {
			this.tracker_reg_date = tracker_reg_date;
		}
		public Date getTracker_completion_date() {
			return tracker_completion_date;
		}
		public void setTracker_completion_date(Date tracker_completion_date) {
			this.tracker_completion_date = tracker_completion_date;
		}
		public Date getTracker_install_date() {
			return tracker_install_date;
		}
		public void setTracker_install_date(Date tracker_install_date) {
			this.tracker_install_date = tracker_install_date;
		}
		public Date getTracker_upt_date() {
			return tracker_upt_date;
		}
		public void setTracker_upt_date(Date tracker_upt_date) {
			this.tracker_upt_date = tracker_upt_date;
		}
		public String getT_group_addr() {
			return t_group_addr;
		}
		public void setT_group_addr(String t_group_addr) {
			this.t_group_addr = t_group_addr;
		}
		public String getT_group_addr2() {
			return t_group_addr2;
		}
		public void setT_group_addr2(String t_group_addr2) {
			this.t_group_addr2 = t_group_addr2;
		}
		public String getT_group_loc_lat() {
			return t_group_loc_lat;
		}
		public void setT_group_loc_lat(String t_group_loc_lat) {
			this.t_group_loc_lat = t_group_loc_lat;
		}
		public String getT_group_loc_lng() {
			return t_group_loc_lng;
		}
		public void setT_group_loc_lng(String t_group_loc_lng) {
			this.t_group_loc_lng = t_group_loc_lng;
		}
		public String getT_group_name() {
			return t_group_name;
		}
		public void setT_group_name(String t_group_name) {
			this.t_group_name = t_group_name;
		}
		public String getT_group_username() {
			return t_group_username;
		}
		public void setT_group_username(String t_group_username) {
			this.t_group_username = t_group_username;
		}
		public String getT_group_manager() {
			return t_group_manager;
		}
		public void setT_group_manager(String t_group_manager) {
			this.t_group_manager = t_group_manager;
		}
		public String getT_group_builder() {
			return t_group_builder;
		}
		public void setT_group_builder(String t_group_builder) {
			this.t_group_builder = t_group_builder;
		}
		public String getT_group_owner() {
			return t_group_owner;
		}
		public void setT_group_owner(String t_group_owner) {
			this.t_group_owner = t_group_owner;
		}
		public String getT_group_phone() {
			return t_group_phone;
		}
		public void setT_group_phone(String t_group_phone) {
			this.t_group_phone = t_group_phone;
		}
		public String getT_group_email() {
			return t_group_email;
		}
		public void setT_group_email(String t_group_email) {
			this.t_group_email = t_group_email;
		}
		public String getT_group_capacity() {
			return t_group_capacity;
		}
		public void setT_group_capacity(String t_group_capacity) {
			this.t_group_capacity = t_group_capacity;
		}
		public MultipartFile getT_group_img_filename() {
			return t_group_img_filename;
		}
		public void setT_group_img_filename(MultipartFile t_group_img_filename) {
			this.t_group_img_filename = t_group_img_filename;
		}
		public String getT_group_ip() {
			return t_group_ip;
		}
		public void setT_group_ip(String t_group_ip) {
			this.t_group_ip = t_group_ip;
		}
		public Date getT_group_reg_date() {
			return t_group_reg_date;
		}
		public void setT_group_reg_date(Date t_group_reg_date) {
			this.t_group_reg_date = t_group_reg_date;
		}
		public Date getT_group_upt_date() {
			return t_group_upt_date;
		}
		public void setT_group_upt_date(Date t_group_upt_date) {
			this.t_group_upt_date = t_group_upt_date;
		}
		public Date getT_group_install_date() {
			return t_group_install_date;
		}
		public void setT_group_install_date(Date t_group_install_date) {
			this.t_group_install_date = t_group_install_date;
		}
		public int getTracker_cnt() {
			return tracker_cnt;
		}
		public void setTracker_cnt(int tracker_cnt) {
			this.tracker_cnt = tracker_cnt;
		}
		public int getInverter_cnt() {
			return inverter_cnt;
		}
		public void setInverter_cnt(int inverter_cnt) {
			this.inverter_cnt = inverter_cnt;
		}
		public String getInverter_idx() {
			return inverter_idx;
		}
		public void setInverter_idx(String inverter_idx) {
			this.inverter_idx = inverter_idx;
		}
		public String getInverter_id() {
			return inverter_id;
		}
		public void setInverter_id(String inverter_id) {
			this.inverter_id = inverter_id;
		}
		public String getInverter_name() {
			return inverter_name;
		}
		public void setInverter_name(String inverter_name) {
			this.inverter_name = inverter_name;
		}
		public String getInverter_builder() {
			return inverter_builder;
		}
		public void setInverter_builder(String inverter_builder) {
			this.inverter_builder = inverter_builder;
		}
		public String getInverter_model() {
			return inverter_model;
		}
		public void setInverter_model(String inverter_model) {
			this.inverter_model = inverter_model;
		}
		public String getInverter_owner() {
			return inverter_owner;
		}
		public void setInverter_owner(String inverter_owner) {
			this.inverter_owner = inverter_owner;
		}
		public Float getInverter_capacity() {
			return inverter_capacity;
		}
		public void setInverter_capacity(Float inverter_capacity) {
			this.inverter_capacity = inverter_capacity;
		}
		public String getInverter_manager() {
			return inverter_manager;
		}
		public void setInverter_manager(String inverter_manager) {
			this.inverter_manager = inverter_manager;
		}
		public String getInverter_phone() {
			return inverter_phone;
		}
		public void setInverter_phone(String inverter_phone) {
			this.inverter_phone = inverter_phone;
		}
		public String getInverter_username() {
			return inverter_username;
		}
		public void setInverter_username(String inverter_username) {
			this.inverter_username = inverter_username;
		}
		public Date getInverter_reg_date() {
			return inverter_reg_date;
		}
		public void setInverter_reg_date(Date inverter_reg_date) {
			this.inverter_reg_date = inverter_reg_date;
		}
		public Date getInverter_install_date() {
			return inverter_install_date;
		}
		public void setInverter_install_date(Date inverter_install_date) {
			this.inverter_install_date = inverter_install_date;
		}
		public Date getInverter_completion_date() {
			return inverter_completion_date;
		}
		public void setInverter_completion_date(Date inverter_completion_date) {
			this.inverter_completion_date = inverter_completion_date;
		}
		@Override
		public String toString() {
			return "trackerDTO [tracker_idx=" + tracker_idx + ", tracker_id=" + tracker_id + ", t_group_id="
					+ t_group_id + ", tracker_name=" + tracker_name + ", tracker_model=" + tracker_model
					+ ", tracker_capacity=" + tracker_capacity + ", tracker_builder=" + tracker_builder
					+ ", tracker_type=" + tracker_type + ", tracker_manager=" + tracker_manager + ", tracker_loc_lat="
					+ tracker_loc_lat + ", tracker_loc_lng=" + tracker_loc_lng + ", tracker_owner=" + tracker_owner
					+ ", tracker_phone=" + tracker_phone + ", tracker_username=" + tracker_username
					+ ", tracker_img_filename=" + tracker_img_filename + ", tracker_port=" + tracker_port + ", history="
					+ history + ", tracker_reg_date=" + tracker_reg_date + ", tracker_completion_date="
					+ tracker_completion_date + ", tracker_install_date=" + tracker_install_date + ", tracker_upt_date="
					+ tracker_upt_date + ", t_group_addr=" + t_group_addr + ", t_group_addr2=" + t_group_addr2
					+ ", t_group_loc_lat=" + t_group_loc_lat + ", t_group_loc_lng=" + t_group_loc_lng
					+ ", t_group_name=" + t_group_name + ", t_group_username=" + t_group_username + ", t_group_manager="
					+ t_group_manager + ", t_group_builder=" + t_group_builder + ", t_group_owner=" + t_group_owner
					+ ", t_group_phone=" + t_group_phone + ", t_group_email=" + t_group_email + ", t_group_capacity="
					+ t_group_capacity + ", t_group_img_filename=" + t_group_img_filename + ", t_group_ip=" + t_group_ip
					+ ", t_group_reg_date=" + t_group_reg_date + ", t_group_upt_date=" + t_group_upt_date
					+ ", t_group_install_date=" + t_group_install_date + ", tracker_cnt=" + tracker_cnt
					+ ", inverter_cnt=" + inverter_cnt + ", inverter_idx=" + inverter_idx + ", inverter_id="
					+ inverter_id + ", inverter_name=" + inverter_name + ", inverter_builder=" + inverter_builder
					+ ", inverter_model=" + inverter_model + ", inverter_owner=" + inverter_owner
					+ ", inverter_capacity=" + inverter_capacity + ", inverter_manager=" + inverter_manager
					+ ", inverter_phone=" + inverter_phone + ", inverter_username=" + inverter_username
					+ ", inverter_reg_date=" + inverter_reg_date + ", inverter_install_date=" + inverter_install_date
					+ ", inverter_completion_date=" + inverter_completion_date + "]";
		}
		public trackerDTO() {
			super();
			// TODO Auto-generated constructor stub
		}

	
	
	 
}

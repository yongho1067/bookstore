package com.book.vo;

public class AdminVO {
	
	private int bo_id; // ì±? ?•„?´?””
	private String bo_name; // ì±…ì´ë¦?
	private String bo_cc; // ì±…ë¶„ë¥?
	private String bo_janre; // ì±…ì˜ ?¥ë¥?
	private int bo_date; // ì¶œê°„?¼
	private String bo_author; // ?‘ê°?
	private String bo_pb; // ì±…ì¶œ?Œ?‚¬
	private int bo_price; // ì±…ì˜ê°?ê²?
	private int bo_grade; // ì±…ì˜ ?‰? 
	private int bo_count; // ì±…ì˜ ?¬ê³?
	private String bo_ex; // ì±…ì„¤ëª?
	
	public AdminVO(int bo_id, String bo_name, String bo_cc, String bo_janre, int bo_date, String bo_author,
			String bo_pb, int bo_price, int bo_grade, int bo_count, String bo_ex) {
		super();
		this.bo_id = bo_id;
		this.bo_name = bo_name;
		this.bo_cc = bo_cc;
		this.bo_janre = bo_janre;
		this.bo_date = bo_date;
		this.bo_author = bo_author;
		this.bo_pb = bo_pb;
		this.bo_price = bo_price;
		this.bo_grade = bo_grade;
		this.bo_count = bo_count;
		this.bo_ex = bo_ex;
		
		
	}

	public int getBo_id() {
		return bo_id;
	}

	public void setBo_id(int bo_id) {
		this.bo_id = bo_id;
	}

	public String getBo_name() {
		return bo_name;
	}

	public void setBo_name(String bo_name) {
		this.bo_name = bo_name;
	}

	public String getBo_cc() {
		return bo_cc;
	}

	public void setBo_cc(String bo_cc) {
		this.bo_cc = bo_cc;
	}

	public String getBo_janre() {
		return bo_janre;
	}

	public void setBo_janre(String bo_janre) {
		this.bo_janre = bo_janre;
	}

	public int getBo_date() {
		return bo_date;
	}

	public void setBo_date(int bo_date) {
		this.bo_date = bo_date;
	}

	public String getBo_author() {
		return bo_author;
	}

	public void setBo_author(String bo_author) {
		this.bo_author = bo_author;
	}

	public String getBo_pb() {
		return bo_pb;
	}

	public void setBo_pb(String bo_pb) {
		this.bo_pb = bo_pb;
	}

	public int getBo_price() {
		return bo_price;
	}

	public void setBo_price(int bo_price) {
		this.bo_price = bo_price;
	}

	public int getBo_grade() {
		return bo_grade;
	}

	public void setBo_grade(int bo_grade) {
		this.bo_grade = bo_grade;
	}

	public int getBo_count() {
		return bo_count;
	}

	public void setBo_count(int bo_count) {
		this.bo_count = bo_count;
	}

	public String getBo_ex() {
		return bo_ex;
	}

	public void setBo_ex(String bo_ex) {
		this.bo_ex = bo_ex;
	}
	
	
}
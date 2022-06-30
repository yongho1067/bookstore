package com.book.vo;

public class ReviewVO {
	private String id;
	private int grade;
	private String comment;
	
	
	public ReviewVO() {
		
	}
	public ReviewVO(String id, int grade, String comment) {
		this.id = id;
		this.grade = grade;
		this.comment = comment;
		
	}
	
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
}

package com.book.vo;

import java.sql.Date;

public class AllInfoVO {
	private int id;
	private String name;
	private String cc;
	private String janre;
	private Date date;
	private String author;
	private String pb;
	private int price;
	private double grade;
	private int count;
	private String example;
	
	public AllInfoVO() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCc() {
		return cc;
	}

	public void setCc(String cc) {
		this.cc = cc;
	}

	public String getJanre() {
		return janre;
	}

	public void setJanre(String janre) {
		this.janre = janre;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPb() {
		return pb;
	}

	public void setPb(String pb) {
		this.pb = pb;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public double getGrade() {
		return grade;
	}

	public void setGrade(double grade) {
		this.grade = grade;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getExample() {
		return example;
	}

	public void setExample(String example) {
		this.example = example;
	}

	public AllInfoVO(int id, String name, String cc, String janre, Date date, String author, String pb, int price,
			double grade, int count, String example) {
		super();
		this.id = id;
		this.name = name;
		this.cc = cc;
		this.janre = janre;
		this.date = date;
		this.author = author;
		this.pb = pb;
		this.price = price;
		this.grade = grade;
		this.count = count;
		this.example = example;
	}
	
}

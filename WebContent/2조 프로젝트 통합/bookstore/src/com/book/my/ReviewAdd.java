package com.book.my;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.frontcontroller.my.BookImpl;

import bookinfoDAO.AdminDAO;
import bookinfoDAO.BookInfoDAO;

public class ReviewAdd implements BookImpl {
	public void Book(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	//int mem_id_num = Integer.parseInt(request.getParameter("mem_id_num"));
	int mem_id_num = 1;

	int bo_id = Integer.parseInt(request.getParameter("bo_id"));
	
	String k=request.getParameter("bo_grade");
	
	int bo_grade = Integer.parseInt(k);
	System.out.println(bo_grade);
	String comment_ = request.getParameter("comment_");
	System.out.println(comment_);
	
	BookInfoDAO bidao = null;
	
	 bidao = new BookInfoDAO();
	
	bidao.ReviewAddInsert(mem_id_num, bo_id, bo_grade, comment_);
		 
	}
}
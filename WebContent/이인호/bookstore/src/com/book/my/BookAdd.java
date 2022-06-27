package com.book.my;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.frontcontroller.my.BookImpl;

import bookinfoDAO.AdminDAO;

public class BookAdd implements BookImpl {
	public void Book(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	AdminDAO rsdao1 = null;
	System.out.println(request.getParameter("bo_name"));
	System.out.println(request.getParameter("bo_pb"));

	System.out.println(request.getParameter("bo_cc"));
	System.out.println(request.getParameter("bo_price"));
	System.out.println(request.getParameter("bo_count"));
	
	String Bo_name = request.getParameter("bo_name");
	String Bo_pb = request.getParameter("bo_pb");
	String Bo_cc = request.getParameter("bo_cc");
	int Bo_price = Integer.parseInt(request.getParameter("bo_price"));
	int Bo_count = Integer.parseInt(request.getParameter("bo_count"));
	

	try { rsdao1 = new AdminDAO();
	}catch (ClassNotFoundException | SQLException e1) {
		e1.printStackTrace();}
	rsdao1.BookAdd_insert(Bo_name, Bo_pb, Bo_cc, Bo_price, Bo_count);
	
	request.setAttribute("bo_name", Bo_name);
	request.setAttribute("bo_pb", Bo_pb);
	request.setAttribute("bo_cc", Bo_cc);
	request.setAttribute("bo_price", Bo_price);
	request.setAttribute("bo_count", Bo_count);
	
	 
	 
	}
}
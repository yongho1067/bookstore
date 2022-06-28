package com.book.my;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.vo.ReviewVO;
import com.frontcontroller.my.BookImpl;

import bookinfoDAO.BookInfoDAO;

public class BookGetReviewInfo implements BookImpl {
	@Override
	public void Book(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	BookInfoDAO tidao1 = null;
	
	tidao1 = new BookInfoDAO();
	ArrayList<ReviewVO> reviewlist1= null;
	reviewlist1 = tidao1.BookgetReviewInfo();
	request.setAttribute("reviewlist1", reviewlist1);

	
	 
	 
	}
}


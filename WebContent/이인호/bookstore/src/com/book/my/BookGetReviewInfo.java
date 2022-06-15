package com.book.my;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.vo.ReviewVO;
import com.frontcontroller.my.BookImpl;

import telinfoDAO.TelInfoDAO;
import telinfoVO.TelInfoVO;

public class BookGetReviewInfo implements BookImpl {
	@Override
	public void Book(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	TelInfoDAO tidao1 = null;
	
	tidao1 = new TelInfoDAO();
	ArrayList<ReviewVO> alist1= null;
	alist1 = tidao1.BookgetReviewInfo();
	request.setAttribute("alist1", alist1);
	
	 
	 
	}
}


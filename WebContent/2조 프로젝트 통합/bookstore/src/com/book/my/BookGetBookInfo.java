package com.book.my;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.vo.BookInfoVO;
import com.frontcontroller.my.BookImpl;

import bookinfoDAO.BookInfoDAO;

public class BookGetBookInfo implements BookImpl {
	@Override
	public void Book(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		BookInfoDAO dao2 = null;
	    BookInfoVO vo2 = null;
	    
	   
	            dao2 = new BookInfoDAO();
	    
	  String id = request.getParameter("id");
	    
	  
	            vo2 = dao2.getInfo(Integer.parseInt(id));
	    request.setAttribute("id", id); // 한사람 이름 
	    request.setAttribute("svo", vo2); // 해당 vo 객체 

	
	 
	 
	}
}


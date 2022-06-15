package com.book.my;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.vo.BookInfoVO;
import com.book.vo.ReviewVO;
import com.frontcontroller.my.BookImpl;

import telinfoDAO.TelInfoDAO;
import telinfoVO.TelInfoVO;

public class BookGetBookInfo implements BookImpl {
	@Override
	public void Book(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	    TelInfoDAO dao2 = null;
	    BookInfoVO vo2 = null;
	    
	   
	            dao2 = new TelInfoDAO();
	    
	  String id = request.getParameter("bo_id");
	    
	  
	            vo2 = dao2.getInfo(Integer.parseInt(id));
	    request.setAttribute("sname", id); // 한사람 이름 
	    request.setAttribute("svo", vo2); // 해당 vo 객체 

	
	 
	 
	}
}


package com.book.my;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.vo.ListInfoVO;
import com.book.vo.SearchInfoVO;
import com.frontcontroller.my.BookImpl;

import bookinfoDAO.BookInfoDAO;

public class BookGetSearchInfo implements BookImpl {
	@Override
	public void Book(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
	
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	BookInfoDAO dao2 = null;
    ArrayList<SearchInfoVO> jlist2= null;
   
    dao2 = new BookInfoDAO();
    
    
    String keyword = request.getParameter("keyword");
    System.out.println(keyword);
	jlist2 =  dao2.SearchBook(keyword);
	request.setAttribute("keyword", keyword); 
	request.setAttribute("jlist2", jlist2);
	}
}

package com.book.my;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.vo.AllInfoVO;
import com.book.vo.BookInfoVO;
import com.book.vo.ListInfoVO;
import com.frontcontroller.my.BookImpl;

import bookinfoDAO.BookInfoDAO;

public class BookGetListInfo implements BookImpl {
	@Override
	public void Book(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		BookInfoDAO dao2 = null;
	    ArrayList<ListInfoVO> jlist1= null;
	   
	    dao2 = new BookInfoDAO();
	    
	    
	    String janre = request.getParameter("janre");
	    System.out.println(janre);
	   // String janre = "역사";
		jlist1 =  dao2.ListInfo(janre);
		request.setAttribute("janre", janre); 
		request.setAttribute("jlist1", jlist1);
		
	    
	 
	}
}


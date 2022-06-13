package com.frontcontroller.my;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.my.BookGetAllInfo;

/**
 * Servlet implementation class Bookfrontcontroller2
 */
@WebServlet("*.do")
public class Bookfrontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bookfrontcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
	      
	      
	      System.out.println(request.getRequestURI());  //(1)
	      System.out.println(request.getContextPath()); //(2)
	      
	       String c = request.getRequestURI().substring(request.getContextPath().length());   
	       String str = null;
	       
	       BookImpl h1 = null; //interface 상속
	       
	       switch(c) {
	       
	       case "/getBookAllInfo.do":
	    	   h1 = new BookGetAllInfo();
               // 부모가 자녀클래스에 구현된 걸 가리키면 자녀껄 사용함. 
               // h1 은 부모를 가리키는 객체, HaevaGetAllInfo 는 자녀 클래스...
               try {
                       h1.Book(request, response);
               } catch (Exception e1) {
                       e1.printStackTrace();
               }
               
               str = "/bookdetail.jsp"; // 돌아갈 view 위치 
               break;
	       }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

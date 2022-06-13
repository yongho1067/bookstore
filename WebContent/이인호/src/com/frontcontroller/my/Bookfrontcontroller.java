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
	       
	       BookImpl h1 = null; //interface ���
	       
	       switch(c) {
	       
	       case "/getBookAllInfo.do":
	    	   h1 = new BookGetAllInfo();
               // �θ� �ڳ�Ŭ������ ������ �� ����Ű�� �ڳಬ �����. 
               // h1 �� �θ� ����Ű�� ��ü, HaevaGetAllInfo �� �ڳ� Ŭ����...
               try {
                       h1.Book(request, response);
               } catch (Exception e1) {
                       e1.printStackTrace();
               }
               
               str = "/bookdetail.jsp"; // ���ư� view ��ġ 
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

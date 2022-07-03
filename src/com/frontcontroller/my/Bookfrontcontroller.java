package com.frontcontroller.my;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.my.BookAdd;
import com.book.my.BookGetAllInfo;
import com.book.my.BookGetBookInfo;
import com.book.my.BookGetListInfo;
import com.book.my.BookGetReviewInfo;
import com.book.my.BookGetSearchInfo;
import com.book.my.ReviewAdd;
import com.book.vo.CartDTO;

import bookinfoDAO.AdminDAO;
import bookinfoDAO.ReserveDAO;


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
	       ReserveDAO rsdao = null;
	       AdminDAO rsdao1 = null;
	       HttpSession session = request.getSession();
	       
	       BookImpl h1 = null; 
	       BookImpl h2 = null;
	       switch(c) {
	       case "/getBookInfo.do":
	    	   h1 = new BookGetBookInfo();
	    	   h2 = new BookGetReviewInfo();
               try {
                       h1.Book(request, response);
                       h2.Book(request, response);
               } catch (Exception e1) {
                       e1.printStackTrace();
               }
               
               str = "bookdetail.jsp";  
            break;
            
	       case "/getBookAllInfo.do":
	    	   h1 = new BookGetAllInfo();
               try {
                       h1.Book(request, response);
               } catch (Exception e1) {
                       e1.printStackTrace();
               }
               
               str = "main.jsp";  
            break;
            
	       case "/getBookListInfo.do":
	    	   h1 = new BookGetListInfo();
               try {
                       h1.Book(request, response);
               } catch (Exception e1) {
                       e1.printStackTrace();
               }
               
               str = "booklist.jsp";  
            break;
            
	       
	       
	       case "/bookadd.do":
	    	   h1 = new BookAdd();
               try {
                       h1.Book(request, response);
               } catch (Exception e1) {
                       e1.printStackTrace();
               }
               
				str = "/BookAdd.jsp"; // view �떞�떦
				break;
				
	       case "/booksearch.do":
	    	   h1 = new BookGetSearchInfo();
               try {
                       h1.Book(request, response);
               } catch (Exception e1) {
                       e1.printStackTrace();
               }
               
				str = "/BookSearch.jsp"; 
				break;
				
	       case "/Reviewadd.do":
	    	   h1 = new ReviewAdd();
	    	   
               try {
                       h1.Book(request, response);
               } catch (Exception e1) {
                       e1.printStackTrace();
               }
               
				str = "/BookReviewAdd.jsp"; 
				break;
				
	       case "/orderlist.do":
				
				
				String cartId_check = request.getParameter("cartId_check");

				try {
					rsdao = new ReserveDAO();
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				ArrayList<CartDTO> odlist = null;
				
				try {
					odlist = rsdao.orderlist(cartId_check);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				request.setAttribute("odlist", odlist);
				
				str = "orderlist.jsp";
				break;
				
	       case "/ordering.do":
				
				String cartId = session.getId();
				String sell_price = request.getParameter("sell_price");
				String amount = request.getParameter("amount");
				String sum = request.getParameter("sum");
				String address = request.getParameter("address");
				String address_detail = request.getParameter("address_detail");
				
				
				
				ReserveDAO rsdao2 = null;
				try {
					rsdao = new ReserveDAO();
					rsdao.insert_reserve(cartId,sell_price, amount, sum, address, address_detail);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				request.setAttribute("cardId", cartId);
				request.setAttribute("sell_price", sell_price);
				request.setAttribute("amount", amount);
				request.setAttribute("sum", sum);
				request.setAttribute("address", address);
				request.setAttribute("address_detail", address_detail);
				
				
			
			str = "ordercomplete.jsp";
				break;
				
	       }
	      
	       RequestDispatcher rd1 = request.getRequestDispatcher(str);
	         rd1.forward(request, response);
	}
		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

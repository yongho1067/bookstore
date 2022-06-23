package com.controller.my;

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

import adminDAO.AdminDAO;
import adminVO.AdminVO;


/**
 * Servlet implementation class cartCheck
 */
@WebServlet("*.do")
public class controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String c = request.getRequestURI().substring(request.getContextPath().length());
		
		String str = null;
		AdminDAO rsdao = null;
		HttpSession session = request.getSession();
		
		switch(c) {

		case "/getBooklist.do":
			try {
				rsdao = new AdminDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			ArrayList<AdminVO> odlist = null;
			
			try {
				odlist = rsdao.getBookList();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.setAttribute("orlist", odlist);
			
			str = "/bookview/getBookList.jsp";
			break;
		
		case "/BookAdd.do":
			int Bo_id = Integer.parseInt(request.getParameter("bo_id"));
			String Bo_name = request.getParameter("bo_name");
			String Bo_pb = request.getParameter("bo_pb");
			String Bo_cc = request.getParameter("bo_cc");
			int Bo_price = Integer.parseInt(request.getParameter("bo_price"));
			int Bo_count = Integer.parseInt(request.getParameter("bo_count"));
			
			
			try { rsdao = new AdminDAO();
			}catch (ClassNotFoundException | SQLException e1) {
				e1.printStackTrace();}
			rsdao.BookAdd_insert(Bo_id, Bo_name, Bo_pb, Bo_cc, Bo_price, Bo_count);
			str = "/bookview/BookAdd.jsp"; // view 담당
			break;
		}
		
		
		RequestDispatcher rd1 = request.getRequestDispatcher(str);
		rd1.forward(request,response);
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
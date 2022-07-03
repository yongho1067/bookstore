package com.controller.my;

import java.io.IOException;
import java.sql.Date;
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String c = request.getRequestURI().substring(request.getContextPath().length());

		String str = null;
		
		HttpSession session = request.getSession();

		switch (c) {

		case "/getBooklist.do":
			AdminDAO rsdao = null;
			try {
				rsdao = new AdminDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			ArrayList<AdminVO> list = null;

			try {
				list = rsdao.getBookList();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			request.setAttribute("list", list);

			str = "/bookview/getBookList.jsp";
			break;

		case "/bookadd.do":
			
			int bo_id = Integer.parseInt(request.getParameter("bo_id"));
			String bo_name = request.getParameter("bo_name");
			String bo_janre = request.getParameter("bo_janre");
			String bo_pb = request.getParameter("bo_pb");
			String bo_author = request.getParameter("bo_author");
			String bo_date = request.getParameter("bo_date");
			String bo_cc = request.getParameter("bo_cc");
			int bo_price = Integer.parseInt(request.getParameter("bo_price"));
			int bo_count = Integer.parseInt(request.getParameter("bo_count"));
			String bo_ex = request.getParameter("bo_ex");

			AdminDAO rsdao1 = null;
			try {
				rsdao1 = new AdminDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				rsdao1.BookAdd(bo_id,bo_name,bo_janre,bo_pb,bo_author,bo_date,bo_cc,bo_price,bo_count,bo_ex);
			} catch (Exception e1) {
				e1.printStackTrace();
			}

			str = "/bookview/BookAdd.jsp"; // view
			break;

		case "/bookdelete.do":
			
			AdminDAO tidao1 = null;
			int bo_id1 = Integer.parseInt(request.getParameter("bo_id"));
			
			try {
				tidao1 = new AdminDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				tidao1.BookDelete(bo_id1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			str = "/bookview/BookDelete.jsp"; // view
			break;

		
		}

		RequestDispatcher rd1 = request.getRequestDispatcher(str);
		rd1.forward(request, response);

	}

}
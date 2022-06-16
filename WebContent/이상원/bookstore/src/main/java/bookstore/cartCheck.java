package bookstore;

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

/**
 * Servlet implementation class cartCheck
 */
@WebServlet("*.do")
public class cartCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cartCheck() {
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
		ReserveDAO rsdao = null;
		HttpSession session = request.getSession();
		
		switch(c) {
		
		case "/ordering.do":
			String sell_price = request.getParameter("sell_price");
			String amount = request.getParameter("amount");
			String sum = request.getParameter("sum");
			
			
			
			ReserveDAO rsdao2 = null;
			try {
				rsdao = new ReserveDAO();
				rsdao.insert_reserve(sell_price, amount, sum);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			request.setAttribute("sell_price", sell_price);
			request.setAttribute("amount", amount);
			request.setAttribute("sum", sum);
		
		str = "ordercomplete.jsp";
			break;

		
		case "/orderlist.do":
			try {
				rsdao = new ReserveDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			ArrayList<CartDTO> odlist = null;
			
			try {
				odlist = rsdao.orderList();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.setAttribute("orlist", odlist);
			
			str = "orderlist.jsp";
			break;
		
		
		}
		
		
		RequestDispatcher rd1 = request.getRequestDispatcher(str);
		rd1.forward(request,response);
		
		
		
		
		
		
		
		
		
		
		
		
	}

}

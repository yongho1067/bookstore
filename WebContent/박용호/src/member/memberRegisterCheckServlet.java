package member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/memberRegisterCheckServlet")
public class memberRegisterCheckServlet extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;

	public static int count = 0;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String mem_id = request.getParameter("mem_id");
		response.getWriter().write(new memberDAO().registerCheck(mem_id)+""); //문자열형태로 출력하기위해 뒤에 빈 문자열 붙힘
		count=count+1;
	}

}

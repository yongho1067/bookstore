package member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/memberRegisterServlet")
public class memberRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
				
		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		String mem_pw_ck = request.getParameter("mem_pw_ck");
		String mem_name = request.getParameter("mem_name");
		String mem_pn = request.getParameter("mem_pn");
		String mem_email = request.getParameter("mem_email");
		String mem_bd = request.getParameter("mem_bd");
		String count = request.getParameter("count");
		
		
		if(mem_id == null || mem_id.equals("") || mem_pw == null || mem_pw.equals("") ||
				mem_pw_ck == null || mem_pw_ck.equals("") || mem_name == null || mem_name.equals("") ||
		   mem_pn == null || mem_pn.equals("") || mem_email == null || mem_email.equals("") ||
		   mem_bd == null || mem_bd.equals("")) {
			
			request.getSession().setAttribute("mesaageType", "오류 메세지");
			request.getSession().setAttribute("messageContent", "모든 내용을 입력하세요.");
			
			response.sendRedirect("join.jsp");
			return;
		}
		if(!mem_pw.equals(mem_pw_ck)) {
			request.getSession().setAttribute("mesaageType", "오류 메세지");
			request.getSession().setAttribute("messageContent", "비밀번호가 서로 다릅니다.");
			
			response.sendRedirect("join.jsp");
			return;
		}
		int result = new memberDAO().register(mem_id, mem_pw, mem_name, mem_pn, mem_email, mem_bd);
		
		if(memberRegisterCheckServlet.count>0) {
			if(result == 1) {
				request.getSession().setAttribute("count","1");
				request.getSession().setAttribute("mesaageType", "성공 메세지");
				request.getSession().setAttribute("messageContent", "회원가입에 성공했습니다.");
					
				response.sendRedirect("login.jsp");
			}else {
				request.getSession().setAttribute("count","2");
				request.getSession().setAttribute("mesaageType", "오류 메세지");
				request.getSession().setAttribute("messageContent", "이미 존재하는 회원입니다.");
					
				response.sendRedirect("join.jsp");
			}
		}else {
			request.getSession().setAttribute("mesaageType", "오류 메세지");
			request.getSession().setAttribute("messageContent", "중복체크를 해주세요.");
				
			response.sendRedirect("join.jsp");
		}
		System.out.println(memberRegisterCheckServlet.count);

	}

}

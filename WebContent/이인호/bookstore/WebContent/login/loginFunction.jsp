<%@page import="member.memberDAO"%>
<%@page import="member.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8");%>
	<%String mem_id = request.getParameter("mem_id");%>
	<%String mem_pw = request.getParameter("mem_pw"); %>
	
	<%
		memberDAO md = new memberDAO(); 

		if(md.login(mem_id, mem_pw) == 1){
			
			memberDTO mdt = md.getMember(mem_id);
			
			String mem_name = mdt.getmem_name();
			String mem_pn = mdt.getmem_pn();
			String mem_bd = mdt.getmem_bd();
			String mem_email = mdt.getmem_email();
			
			session.setAttribute("mem_id", mem_id);
			session.setAttribute("mem_pw", mem_pw);
			session.setAttribute("mem_name", mem_name);
			session.setAttribute("mem_email", mem_email);
			session.setAttribute("mem_bd", mem_bd);
			session.setAttribute("mem_pn", mem_pn);
	
		if(mem_id.equals("admin")){
			response.sendRedirect("admin_page.jsp"); 
		}else{ %>
		
			<script>alert("로그인 성공!");</script>	
		<%
			response.sendRedirect("../main.jsp"); 
		}
		
	
	
	
		%>	
		<% 
		}else if(md.login(mem_id, mem_pw) == 2){
			%><script>alert("비밀번호가 틀렸습니다!!"); history.back(); </script><%
		}else{
			%><script>alert("아이디가 틀렸습니다!!"); history.back(); </script><%
		}
	%>

</body>
</html>
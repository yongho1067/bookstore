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
	<%String id = request.getParameter("mem_id");%>
	<%String password = request.getParameter("mem_pw"); %>
	
	<%
		memberDAO md = new memberDAO(); 
	
		memberDTO mdt = md.getMember(id);
		
		String name = mdt.getmem_name();
		String phone = mdt.getmem_pn();
		String bd = mdt.getmem_bd();
		String email = mdt.getmem_email();
		
		if(md.login(id, password) == 1){
			session.setAttribute("id", id);
			session.setAttribute("password", password);
			session.setAttribute("name", name);
			session.setAttribute("email", email);
			session.setAttribute("bd", bd);
			session.setAttribute("phone", phone);
	%>
	<script>alert("�α��� ����!");  </script>
			
	<%response.sendRedirect("main.jsp"); %>
			
			<% 
		}else if(md.login(id, password) == 0){
			%><script>alert("��й�ȣ�� Ʋ�Ƚ��ϴ�!!"); history.back(); </script><%
		}else{
			%><script>alert("���̵� Ʋ�Ƚ��ϴ�!!"); history.back(); </script><%
		}
	%>

</body>
</html>
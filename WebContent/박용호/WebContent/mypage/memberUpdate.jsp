<%@page import="member.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String mem_id = request.getParameter("mem_id");
		String mem_name = request.getParameter("mem_name");
		String mem_bd = request.getParameter("mem_bd");
		String mem_pn = request.getParameter("mem_pn");
		String mem_email = request.getParameter("mem_email");	
		
		memberDAO md = new memberDAO();
		
		md.memberUpdate(mem_id, mem_name, mem_pn, mem_email, mem_bd);
	%>
	<script>alert("회원정보가 수정되었습니다."); history.back(); </script>
</body>
</html>
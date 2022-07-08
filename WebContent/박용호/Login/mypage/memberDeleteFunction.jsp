<%@page import="member.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String mem_id = request.getParameter("mem_id");
	String mem_pw = request.getParameter("mem_pw");
	
	memberDAO md = new memberDAO();
	
	if(md.passwordCheck(mem_id, mem_pw) == 1){
		
		md.memberDelete(mem_id);

	%>
		<script>alert("회원탈퇴 되었습니다. 이용해 주셔서 감사합니다."); location.href="../logout.jsp";</script>
	<%
	}else if(md.passwordCheck(mem_id, mem_pw) == 2){
		
		%><script>alert("비밀번호가 틀렸습니다!!"); history.back(); </script><%
	}
	


%>

</body>
</html>
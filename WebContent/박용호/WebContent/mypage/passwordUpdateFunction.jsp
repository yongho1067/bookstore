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
	request.setCharacterEncoding("UTF-8"); 
	String mem_id = request.getParameter("mem_id");
	String mem_pw = request.getParameter("mem_pw"); 
	String mem_pw_update = request.getParameter("mem_pw_update"); 
	String mem_pw_update_ck = request.getParameter("mem_pw_update_ck"); 
	
	memberDAO md = new memberDAO(); 

	System.out.print(mem_id);
	System.out.print(mem_pw);
	System.out.print(mem_pw_update);
	System.out.print(mem_pw_update_ck);
	
	if(md.passwordCheck(mem_id, mem_pw) == 1){

	out.print("abc");
		
	}else if(md.passwordCheck(mem_id, mem_pw) == 2){
		
		%><script>alert("비밀번호가 틀렸습니다!!"); history.back(); </script><%
	}else{
		
		%><script>alert("아이디가 틀렸습니다!!"); history.back(); </script><%
	}
%>

</body>
</html>
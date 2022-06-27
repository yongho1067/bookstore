<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/bookstore/css/header.css">

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	
<div class='logintop'>


<%
	String id = (String)session.getAttribute("id");
	String center = request.getParameter("center");
%>
<%
	if(id!=null){
		%>
		<%=id %> 님
		<button onclick="location.href='Main.jsp?logout=1'">로그아웃</button>
		<%
	}else if(center==null){
		//center에 값이 존재하는 경우에만 로그인버튼을 띄움.
		//처리를 안해주고 로그인 버튼을 누를시 LoginForm.jsp로 넘어가면 Top.jsp에 있는 로그인 버튼이 그대로 나옴.
		%>
		<button onclick="location.href='Main.jsp?center=LoginForm.jsp'">로그인</button>
		<% 
	}	
	else{
		%>
	<%} 
	%>
<input type="button" class='login' value="마이페이지" onclick = "location.href = '#' ">
<input type="button" class='login' value="장바구니" onclick = "location.href = '#' ">
</div>

</body>
</html>
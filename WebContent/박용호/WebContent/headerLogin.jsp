<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/bookstore/css/header.css">
<link rel="stylesheet" href="/bookstore/css/bootstrap.css">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String mem_id = (String)session.getAttribute("mem_id"); %>

<div class='logintop'>
	<input type="button" class='btn btn-primary pull-right' value="장바구니" onclick = "location.href = '#' ">
<% if(mem_id!=null){ %>
      	<%=mem_id %> 님
		<input type="button" class='btn btn-primary pull-right' value="마이페이지" onclick = "location.href = 'mypage/mypageCheck.jsp?mem_id=<%=mem_id%>' ">
      	<input type="button" class='btn btn-primary pull-right' value="로그아웃" onclick = "location.href = 'logout.jsp' ">
 <%}else { %>
		<input type="button" class='btn btn-primary pull-right' value="회원가입" onclick = "location.href = 'join.jsp' ">
		<input type="button" class='btn btn-primary pull-right' value="로그인" onclick = "location.href = 'login.jsp' ">
<% }%>
</div>

</body>
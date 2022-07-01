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

   String mem_id = (String)session.getAttribute("mem_id");
%>
<%
   if(mem_id!=null){
      %>
      <%=mem_id %> 님
      <input type="button" class='login' value="로그아웃" onclick = "location.href = 'login/logout.jsp' ">
      <%
   }else {
      %>
      <input type="button" class='login' value="로그인" onclick = "location.href = 'login/login.jsp' ">
      <% 
   }   
   %>
<input type="button" class='login' value="마이페이지" onclick = "location.href = '#' ">
<input type="button" class='login' value="장바구니" onclick = "location.href = '#' ">
</div>

</body>
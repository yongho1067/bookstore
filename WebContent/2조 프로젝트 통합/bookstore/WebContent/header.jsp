<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/bookstore/css/header.css">

<meta charset="EUC-KR">
<title>부쳐핸썸^_^</title>
</head>
<body>

   
<div class=''>


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

<br><br>

<div class='maintitle'>

<a href="main.jsp">북쳐핸섭</a>

</div>
<br>

<form action="booksearch.do" method="post">
<div class="wrap">	<!-- 검색창 -->
   <div class="search">
      <input type="text" class="searchTerm" placeholder="원하는 도서 검색" name="keyword">
      <button type="submit" class="searchButton"  >
        <i class="fa fa-search"></i>
     </button>
   </div>
</div>
</form>
<br>

<hr>
<br>


</body>
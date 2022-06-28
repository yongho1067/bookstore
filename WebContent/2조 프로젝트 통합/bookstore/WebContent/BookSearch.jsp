<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="/bookstore/css/booksearch.css">


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%@include file="/header.jsp" %>


<div class='title'>	<!-- 제목 -->
<h1>북쳐핸섭</h1>
</div>

<%@include file="/sidebar.jsp" %> <!-- 사이드바 -->

<form action="booksearch.do" method="post">
<div class="wrap">	<!-- 검색창 -->
   <div class="search">
      <input type="text" class="searchTerm" placeholder="${keyword}" name="keyword">
      <button type="submit" class="searchButton"  >
        <i class="fa fa-search"></i>
     </button>
   </div>
</div>
</form>
<br>

<table class="styled-table" border="1" >
		<thead>
		<tr>
			<td>책번호</td>
			<td>책이름</td>
			<td>카테고리</td>
			<td>장르</td>
			<td>작가</td>
			<td>가격</td>
			<td>평점</td>
		</tr>
		</thead>
		
		 <c:forEach var="vo2" items="${jlist2 }">
		 <tbody>
       <tr>
          <td>${vo2.id }</td>
       	  <td><a href="getBookInfo.do?id=${vo2.id}">${vo2.name }</a></td>
          <td>${vo2.cc }</td> 
          <td>${vo2.janre }</td>
          <td>${vo2.author }</td>
          <td>${vo2.price }</td>
          <td>${vo2.grade }</td>  
       </tr>
		 </tbody>
		  </c:forEach>
		</table>
		

</body>
</html>
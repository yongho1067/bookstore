<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="/bookstore/css/main.css">


<style>


</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


	
<%@include file="/header.jsp" %>


<div class='title'>
<h1>북쳐핸섭</h1>
</div>



<div class="wrap">
   <div class="search">
      <input type="text" class="searchTerm" placeholder="원하는 도서 검색">
      <button type="submit" class="searchButton" onclick = "location.href = '#' " >
        <i class="fa fa-search"></i>
     </button>
   </div>
</div>

<br>

<input type="checkbox" id="check">
    <label for="check">
      <i class="fas fa-bars" id="btn"></i>
      <i class="fas fa-times" id="cancel"></i>
    </label>
    <div class="sidebar">
    <header>도서</header>
    <ul>
     <li><a href="#"><i class="fas fa-stream"></i>Dashboard</a></li>
     <li><a href="#"><i class="fas fa-stream"></i>Shortcuts</a></li>
     <li><a href="#"><i class="fas fa-stream"></i>Overview</a></li>
     <li><a href="#"><i class="fas fa-stream"></i>Events</a></li>
     <li><a href="#"><i class="fas fa-stream"></i>About</a></li>
     <li><a href="#"><i class="fas fa-stream"></i>Services</a></li>
     <li><a href="#"><i class="fas fa-stream"></i>Contact</a></li>
    </ul>
   </div>
   <div class="favoritebook">
    
    <table class="styled-table">
    <thead>
        <tr>
            <th>인기 순위</th>
            <th>이름</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td><a href="#">책이름</a></td>
        </tr>
        <tr>
            <td>2</td>
            <td><a href="#">책이름</a></td>
        </tr>
         <tr>
            <td>3</td>
            <td><a href="#">책이름</a></td>
        </tr>
        <!-- and so on... -->
    </tbody>
</table>
</div>
    
    
    <div class="goodbook">
    
    <table class="styled-table">
    <thead>
        <tr>
            <th>평점 순위</th>
            <th>이름	</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td><a href="#">책이름</a></td>
        </tr>
        <tr>
            <td>2</td>
            <td><a href="#">책이름</a></td>
        </tr>
         <tr>
            <td>3</td>
            <td><a href="#">책이름</a></td>
        </tr>
        <!-- and so on... -->
    </tbody>
</table>
</div>
    

    <div class="book1">
    <table class="bookstyle">
    <thead>
        <tr>
            <th colspan="3">추천 도서</th>
        </tr>
    </thead>
    <tbody>
    <tr>
            <td><a href="#"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
            <td><a href="#"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
            <td><a href="#"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
   </tr>
    <tr>
            <td>책이름	</td>
            <td>책이름	</td>
 			<td>책이름	</td>   
   </tr>
   <tr>
            <td><a href="#"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
            <td><a href="#"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
            <td><a href="#"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
   </tr>
    <tr>
            <td>책이름	</td>
            <td>책이름	</td>
 			<td>책이름	</td> 
   </tr>
    </tbody>
	</table>
    </div>

    
<form action="getBookAllInfo.do" method="get">
<input type="submit" value="모두보기">
</form>

	<table border="1">
		<tr><td>아이디</td><td>이름</td><td>전화번호</td></tr>
		<c:forEach var="vo1" items="${alist1 }">
         <tr>
            <td>${vo1.id }</td>
            <td><a href="getBookInfo.do?id=${vo1.id }">${vo1.name }</a>
            <!-- 전체보기하면서 수정/삭제도 준비 -->
            <td>${vo1.cc }</td>
            <td>${vo1.janre }</td>
         </tr>
      </c:forEach>
	</table>



</body>
</html>
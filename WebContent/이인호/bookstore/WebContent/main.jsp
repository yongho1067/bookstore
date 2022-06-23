<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="/bookstore/css/boolist.css">



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


	<header>
<%@include file="/header.jsp" %> <!-- 헤더 로그인 -->

</header>

<div class='title'>	<!-- 제목 -->
<h1>북쳐핸섭</h1>
<button type="button" onclick = "location.href = 'BookInfo.jsp' " ></button>

</div>



<div class="wrap">	<!-- 검색창 -->
   <div class="search">
      <input type="text" class="searchTerm" placeholder="원하는 도서 검색">
      <button type="submit" class="searchButton" onclick = "location.href = '#' " >
        <i class="fa fa-search"></i>
     </button>
   </div>
</div>
<br>

<input type="checkbox" id="check"> <!-- 사이드바 메뉴 -->
    <label for="check">
      <i class="fas fa-bars" id="btn"></i>
      <i class="fas fa-times" id="cancel"></i>
    </label>
    <div class="sidebar">
    <header>도서</header>
    <ul>
     <li><a href="getBookListInfo.do?janre=컴퓨터"><i class="fas fa-stream"></i>computer</a></li>
     <li><a href="getBookListInfo.do?janre=역사"><i class="fas fa-stream"></i>History</a></li>
     <li><a href="getBookListInfo.do"><i class="fas fa-stream"></i>Novel</a></li>
     <li><a href="getBookListInfo.do"><i class="fas fa-stream"></i>Science</a></li>
     <li><a href="getBookListInfo.do"><i class="fas fa-stream"></i>About</a></li>
     <li><a href="getBookListInfo.do"><i class="fas fa-stream"></i>Services</a></li>
     <li><a href="main.jsp"><i class="fas fa-stream"></i>메인페이지로</a></li>
    </ul>
   </div>
   
   
   <div class="favoritebook">
    
    <table class="styled-table"> <!-- 인기순위 -->
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
    
    
    <div class="goodbook">	<!-- 평점순위 -->
    
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
    

    <div class="book1">	<!-- 추천도서 -->
    <table class="bookstyle">
    <thead>
        <tr>
            <th colspan="3">추천 도서</th>
        </tr>
    </thead>
    <tbody>
    <tr>
            <td><a href="getBookInfo.do?id=1"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
            <td><a href="getBookInfo.do?id=2"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
            <td><a href="getBookInfo.do?id=3"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
   </tr>
    <tr>
            <td><a href="getBookInfo.do?id=${vo1.id }">${vo1.name }</a>	</td>
            <td><a href="getBookInfo.do?id=${vo1.id }">${vo1.name }</a>	</td>
 			<td><a href="getBookInfo.do?id=${vo1.id }">${vo1.name }</a>	</td>   
   </tr>
   <tr>
            <td><a href="getBookInfo.do?id=4"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
            <td><a href="getBookInfo.do?id=5"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
             <td><a href="getBookInfo.do?id=6"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
   </tr>
    <tr>
            <td><a href="getBookInfo.do?id=${vo1.id }">${vo1.name }</a>	</td>
            <td><a href="getBookInfo.do?id=${vo1.id }">${vo1.name }</a>	</td>
 			<td><a href="getBookInfo.do?id=${vo1.id }">${vo1.name }</a>	</td> 
   </tr>
    </tbody>
	</table>
    </div>

    


	<%@include file="/footer.jsp" %> <!-- 헤더 로그인 -->

</body>
</html>
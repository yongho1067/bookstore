<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="/bookstore/css/sidebar.css">

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


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
     <li><a href="getBookListInfo.do?janre=소설"><i class="fas fa-stream"></i>Novel</a></li>
     <li><a href="getBookListInfo.do?janre=과학"><i class="fas fa-stream"></i>Science</a></li>
     <li><a href="main.jsp"><i class="fas fa-stream"></i>메인페이지로</a></li>
    </ul>
   </div>
   

</body>
</html>
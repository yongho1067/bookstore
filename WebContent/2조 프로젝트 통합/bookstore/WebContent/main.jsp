<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>

<%!// 변수 선언
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String uid = "c##book";
	String pwd = "1234";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	%>
	
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


	<header>
<%@include file="/header.jsp" %> <!-- 헤더 로그인 -->

</header>

<div class='title'>	<!-- 제목 -->
<h1>북쳐핸섭</h1>
</div>


<input class='link' type="button" class='login' value="주문확인" onclick = "location.href = 'orderlistcheck.jsp' ">
<br>
<br>

<input class='link' type="button" class='login' value="관리자모드" onclick = "location.href = 'BookAdd.jsp' ">

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

<%@include file="/sidebar.jsp" %> <!-- 사이드바 -->


   
<div class="goodbook">
<%
String sql = "SELECT rownum, a.*  FROM (select * from book_table order by bo_grade desc ) a where rownum<=3";
		try {
		// 데이터베이스를 접속하기 위한 드라이버 SW 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 데이터베이스에 연결하는 작업 수행
		conn = DriverManager.getConnection(url, uid, pwd);
		// 쿼리를 생성gkf 객체 생성
		stmt = conn.createStatement();
		// 쿼리 생성
		rs = stmt.executeQuery(sql);
	%>
	<table class="styled-table">
		<thead>
        <tr>
            <th>평점 순위</th>
            <th>책 이름	</th>
        </tr>
    </thead>
		<%
			while (rs.next()) {
		%>
	<tbody>
        <tr>
            <td><%=rs.getString("rownum")%></td>
			<td><a href="getBookInfo.do?id=<%=rs.getString("bo_id")%>"><%=rs.getString("bo_name")%></a></td>
        </tr>
    </tbody>
		<%  
			}
		} catch (Exception e) {
		e.printStackTrace();
		} finally {
		try {
		if (rs != null) {
			rs.close();
		}
		if (stmt != null) {
			stmt.close();
		}
		if (conn != null) {
			conn.close();
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		}
		%>
		</table>
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
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
<link rel="stylesheet" href="/bookstore/css/booklist.css">

<style type="text/css">


</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%@include file="/header.jsp" %>



<!-- 
	<table border="1" class="listtable">
		<tr><td>아이디</td><td>이름</td><td>전화번호</td><td>전화번호</td></tr>
		<c:forEach var="vo1" items="${jlist1}">
         <tr>
            <td>${vo1.id }</td>
            <td><a href="getBookInfo.do?id=${vo1.id}">${vo1.name }</a>
            <td>${vo1.cc }</td>
            <td>${vo1.janre}</td>
         </tr>
      </c:forEach>
	</table>
	
	 -->

<input type="checkbox" id="check"> <!-- 사이드바 메뉴 -->
    <label for="check">
      <i class="fas fa-bars" id="btn"></i>
      <i class="fas fa-times" id="cancel"></i>
    </label>
    <div class="sidebar">
    <header>도서</header>
    <ul>
     <li><a href="getBookListInfo.do?janre=컴퓨터"><i class="fas fa-stream"></i>computer</a></li>
     <li><a href="getBookListInfo.do"><i class="fas fa-stream"></i>History</a></li>
     <li><a href="getBookListInfo.do"><i class="fas fa-stream"></i>Novel</a></li>
     <li><a href="getBookListInfo.do"><i class="fas fa-stream"></i>Science</a></li>
     <li><a href="getBookListInfo.do"><i class="fas fa-stream"></i>About</a></li>
     <li><a href="getBookListInfo.do"><i class="fas fa-stream"></i>Services</a></li>
     <li><a href="main.jsp"><i class="fas fa-stream"></i>메인페이지로</a></li>
    </ul>
   </div>

<%
String janre = request.getParameter("janre");
String sql = "select * from book_table where bo_janre='"+janre+"' order by bo_id";
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
	<table class="booklist" border="1" >
		<tr>
			<td>책번호</td>
			<td>책이름</td>
			<td>작가</td>
			<td>가격</td>
			<td>평점</td>
		</tr>
		<%
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("bo_id")%></td>
			<td><a href="getBookInfo.do?id=<%=rs.getString("bo_id")%>"><%=rs.getString("bo_name")%></a></td>
			<td><%=rs.getString("bo_author")%></td>
			<td><%=rs.getString("bo_price")%></td>
			<td><%=rs.getString("bo_grade")%> 점</td>
		</tr>

	
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
		
</body>
</html>
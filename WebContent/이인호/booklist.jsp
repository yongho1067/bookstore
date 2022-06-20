<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	String sql = "select * from book_table";%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="/bookstore/css/booklist.css">

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%@include file="/header.jsp" %>


  
<form action="getBookAllInfo.do" method="get">
<input type="submit" value="모두보기">
</form>

	<table border="1" class="listtable">
		<tr><td>아이디</td><td>이름</td><td>전화번호</td><td>전화번호</td></tr>
		<c:forEach var="vo1" items="${alist1}">
         <tr>
            <td>${vo1.id }</td>
            <td><a href="getBookInfo.do?id=${vo1.id}">${vo1.name }</a>
            <!-- 전체보기하면서 수정/삭제도 준비 -->
            <td>${vo1.cc }</td>
            <td>${vo1.janre}</td>
         </tr>
      </c:forEach>
	</table>

<%
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
	<table border="1">
		<tr>
			<td>이름</td>
			<td>주소</td>
			<td>주민등록변호</td>
		</tr>
		<%
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("bo_id")%></td>
			<td><%=rs.getString("bo_name")%></td>
			<td><%=rs.getString("bo_cc")%></td>
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
		
</body>
</html>
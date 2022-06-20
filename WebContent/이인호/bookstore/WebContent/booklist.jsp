<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%!// ���� ����
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
<input type="submit" value="��κ���">
</form>

	<table border="1" class="listtable">
		<tr><td>���̵�</td><td>�̸�</td><td>��ȭ��ȣ</td><td>��ȭ��ȣ</td></tr>
		<c:forEach var="vo1" items="${alist1}">
         <tr>
            <td>${vo1.id }</td>
            <td><a href="getBookInfo.do?id=${vo1.id}">${vo1.name }</a>
            <!-- ��ü�����ϸ鼭 ����/������ �غ� -->
            <td>${vo1.cc }</td>
            <td>${vo1.janre}</td>
         </tr>
      </c:forEach>
	</table>

<%
		try {
		// �����ͺ��̽��� �����ϱ� ���� ����̹� SW �ε�
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// �����ͺ��̽��� �����ϴ� �۾� ����
		conn = DriverManager.getConnection(url, uid, pwd);
		// ������ ����gkf ��ü ����
		stmt = conn.createStatement();
		// ���� ����
		rs = stmt.executeQuery(sql);
	%>
	<table border="1">
		<tr>
			<td>�̸�</td>
			<td>�ּ�</td>
			<td>�ֹε�Ϻ�ȣ</td>
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
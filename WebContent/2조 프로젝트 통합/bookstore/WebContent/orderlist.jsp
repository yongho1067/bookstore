<%@page import="com.book.vo.CartDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bookinfoDAO.ReserveDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%
String cartId_check = request.getParameter("cartId_check");
request.setCharacterEncoding("UTF-8");
ReserveDAO rdao = new ReserveDAO();
ArrayList<CartDTO> odlist = rdao.orderlist(cartId_check);
%>

<body>

<%@include file="/header.jsp" %>

<%@include file="/sidebar.jsp" %>
	
	<div class="completetitle">
	<b style="color : #C4B73B">주문 내역</b><br><hr><br>
	<% for(CartDTO tmp:odlist) {%>
	

	주문 번호 : <%=tmp.getBas_order() %><br>
	갯수 : <%=tmp.getAmount() %><br>
	총 가격 : <%=tmp.getSum() %><br>
	주소 : <%=tmp.getBas_address_1() %> &nbsp;&nbsp;&nbsp; 
	<%=tmp.getBas_address_2() %><br>

	
	<%} %>
	
	<br><br>
	<a href="main.jsp">되돌아가기</a>
	
	</div>
	
	<%@include file="/footer.jsp" %> <!-- 헤더 로그인 -->
	
</body>
</html>
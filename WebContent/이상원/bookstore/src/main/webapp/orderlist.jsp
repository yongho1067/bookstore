<%@page import="bookstore.CartDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bookstore.ReserveDAO"%>
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


	
	<% for(CartDTO tmp:odlist) {%>
	

	<%=tmp.getBas_order() %><br>
	<%=tmp.getAmount() %><br>
	<%=tmp.getSum() %><br>
	<%=tmp.getBas_address_1() %><br>
	<%=tmp.getBas_address_2() %><br>

	
	<%} %>
	
	<br><br>
	<a href="jang.jsp">되돌아가기</a>
	
	
</body>
</html>
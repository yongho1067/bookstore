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
request.setCharacterEncoding("UTF-8");
ReserveDAO rdao = new ReserveDAO();
ArrayList<CartDTO> odlist = rdao.orderList();
%>

<body>
	<% for(CartDTO tmp:odlist){ %>
	
	<%=tmp.getBas_order() %><br>
	<%=tmp.getBas_count() %><br>
	<%=tmp.getBas_total() %><br>
	<%=tmp.getBo_id() %><br>
	<%=tmp.getMem_id_num() %><br>
	
	
	<%} %>
</body>
</html>
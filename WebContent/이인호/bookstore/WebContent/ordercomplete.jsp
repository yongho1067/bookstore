<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	주문 완료 되었습니다.
	<%
	String sell_price = request.getParameter("sell_price");
	
	
	
	
	out.println(sell_price); %>
	
	<br><br>
	<a href="bookdetail.jsp">되돌아가기</a>
	<br><br>
	
	<a href="orderlist.jsp">주문 확인</a>
	
	
</body>
</html>
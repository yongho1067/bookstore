<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@include file="/header.jsp" %> <!-- 헤더 로그인 -->

	주문 완료 되었습니다.
	<%
	String sell_price = request.getParameter("sell_price");
	String bas_order = request.getParameter("bas_order");
	
	out.println(bas_order);
	
	
	out.println(sell_price); %>
	
	<br><br>
	<a href="bookdetail.jsp">되돌아가기</a>
	<br><br>
	
	
	<br><br>
	
	<form action="orderlist.do" method="post">
	주문 번호 입력
	<input type="hidden" name="ordernumber">
	
	<input type="submit" value="주문 내역 확인">
	</form>
	
	<%@include file="/footer.jsp" %> <!-- 헤더 로그인 -->
	
</body>



</html>
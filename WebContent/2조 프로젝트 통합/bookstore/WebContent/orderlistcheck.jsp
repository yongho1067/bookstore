<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@include file="/header.jsp" %>

<%@include file="/sidebar.jsp" %>

<div class="completetitle">
	주문 내역 확인

	
	<form action="orderlist.do" method="post">
	
	<br>
	
	<input type="text" class="orderindex" placeholder="주문 번호를 입력해주세요." name="cartId_check">
	<br>
	<input type="submit" value="주문 내역 확인">
	</form>
	
		</div>
	
	<%@include file="/footer.jsp" %> <!-- 헤더 로그인 -->


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

.orderindex {
  width: 15%;
  border: 5px solid #B7F0B1;
  padding: 10px;
  height: 6px;
  border-radius: 5px 0 0 5px;
  outline: none;
  color: #9DBFAF;
  text-align: 
}

</style>

<body>

<%@include file="/header.jsp" %> <!-- 헤더 로그인 -->

	<div class="completetitle">
	주문 완료 되었습니다.
	<%
	String cartId = session.getId();

	

	%>
	
	<br>
	
	주문번호 : 
	<%
	out.println(cartId);
	%>
	<br><br>
	<b style="color: red;">※ 주문번호를 외워주세요 ^_^</b>
	
	<br><br>
	
	
	
	<br><br>
	
	<a href="main.jsp">되돌아가기</a>
	<br><hr><br>
	
	</div>
	
	<br><br>
	
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

<%
	session.invalidate();
%>
	
	
	
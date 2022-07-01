<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 인증</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String mem_id = request.getParameter("mem_id");
%>


<br><br><br><br><br><br><br>
<h1 align="center"> 회원 정보 확인</h1>
<div class="align" align="center">
<form action="mypageFunction.jsp" method="post">
	아이디 : <input type="text" id="mem_id" name = "mem_id" placeholder="아이디" value= "<%=mem_id%>" readonly>
		<div class="text-id"> 
		</div> 
	<label></label>
	비밀번호 : <input type="password" id="mem_pw" name = "mem_pw" placeholder="암호">
		<div class="text-id">
	                        
		</div> 
		<br>
	<input type="submit" id="btnCheck" value="확인" onclick="location.href='mypageFuntion.jsp'" >
	<input type="button" value="이전" onclick="location.href='main.jsp'"/></form>
	<br><br>
</div>


</body>
</html>
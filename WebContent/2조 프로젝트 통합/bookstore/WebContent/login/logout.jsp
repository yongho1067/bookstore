<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>로그아웃</title>

</head>

<body>

<%

	// 세션 초기화

	session.invalidate();

%>

<script>

	alert('로그아웃');

	location.href = '../main.jsp';

</script>

</body>

</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<meta charset="EUC-KR">
<title>네이버 로그인</title>
</head>
<body>
	<div id="naver_id_login"></div>

	<script type="text/javascript">
  	var naver_id_login = new naver_id_login("RDdgbivY7FUS7o1r_0v0", "http://localhost:8080/naverLogin");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 2,40);
  	naver_id_login.setDomain("http://localhost:8080/bookstore/");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
  </script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 네이버아이디로로그인 버튼 노출 영역 -->
	<div id="naver_id_login"></div>
	<!-- //네이버아이디로로그인 버튼 노출 영역 -->


</body>
<script type="text/javascript">
  	var naver_id_login = new naver_id_login("RDdgbivY7FUS7o1r_0v0", "http://localhost:8080/callbacktest");
      var state = naver_id_login.getUniqState();
      naver_id_login.setButton("white", 2,40);
      naver_id_login.setDomain("http://localhost:8080/bookstore");
      naver_id_login.setState(state);
      naver_id_login.init_naver_id_login();
  </script>
</html>




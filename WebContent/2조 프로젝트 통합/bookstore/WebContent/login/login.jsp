
<%@page import="member.memberDAO"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>

<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" language="java"%>

<html lang="ko">

<head>
	<title>로그인</title>
	
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    
    
	<script>
		Kakao.init('3c99651ce15ee284a9c851bacbc9ef00'); //발급받은 키 중 javascript키를 사용해준다.
		console.log(Kakao.isInitialized()); // sdk초기화여부판단
	//카카오로그인
		function kakaoLogin() {
			Kakao.API.request({
			    url: '/v2/user/me',
			  /*   data: {
			        property_keys:["kakao_account.email","kakao_account.birthday","kakao_account.nickname","kakao_account.birthyear","kakao_account.birthday","kakao_account.phone_number"]
			    }, */
			    success: function(response) {
			   		var mem_id = response.id;
			   		var mem_email = response.kakao_account.email;
			   		var mem_name = response.properties.nickname;
			   		var mem_bd = response.kakao_account.birthday;
			   		
			   		console.log("mem_id", mem_id);
			   		console.log("mem_email",mem_email);
			   		console.log("mem_name",mem_name);
			   		console.log("mem_bd",mem_bd);
			   		
			   		var apiURL = (String)("http://" + window.location.hostname + ((location.port == "" || location.port == undefined) ? "" : ":" + location.port)
			   		        + "/bookstore/main.jsp?mem_email="+mem_email+"&mem_name="+mem_name+"&mem_bd="+mem_bd+"&mem_id="+mem_id);
			   			 window.open(apiURL);

			    },
			    fail: function(error) {
			        console.log(error);
			    }
			});
		    Kakao.Auth.login({
		      success: function (response) {
		        Kakao.API.request({
		          url: '/v2/user/me',
		          success: function (response) {
		        	  console.log(response)
		          },
		          fail: function (error) {
		            console.log(error)
		          },
		        })
		      },
		      fail: function (error) {
		        console.log(error)
		      },
		    })
		  }
		//카카오로그아웃  
		function kakaoLogout() {
		    if (Kakao.Auth.getAccessToken()) {
		      Kakao.API.request({
		        url: '/v1/user/unlink',
		        success: function (response) {
		        	console.log(response)
		        },
		        fail: function (error) {
		          console.log(error)
		        },
		      })
		      Kakao.Auth.setAccessToken(undefined)
		      alert('로그아웃');
		    }
		    
		  }  
	</script>
</head>
<body> 
	<!-- 사이트 로그인 시작 -->
	
<br>
<div class="align" align="center">
<form action="loginFunction.jsp" method="post">
	아이디 : <input type="text" id="mem_id" name = "mem_id" placeholder="아이디">
		<div class="text-id"> 
		</div> 
	<label></label>
	비밀번호 : <input type="password" id="mem_pw" name = "mem_pw" placeholder="암호">
		<div class="text-id">
	                        
		</div> 
		<br>
	<input type="submit" id="btnLogin" value="로그인" onclick="location.href='loginFunction.jsp'" >
	<input type="button" value="회원가입" onclick="location.href='join.jsp'"/></form>
	<br><br>
</div>
	<!-- 사이트 로그인 종료 -->
	
	
	<!-- 네이버 로그인 시작 -->
	<div align="center" id="naver_id_login"></div>
	<script type="text/javascript">
	  	var naver_id_login = new naver_id_login("RDdgbivY7FUS7o1r_0v0", "http://localhost:8888/bookstore/naverLogin.jsp");
	  	var state = naver_id_login.getUniqState();
	  	naver_id_login.setButton("green", 4,70);
	  	naver_id_login.setDomain("http://localhost:8888/bookstore/login.jsp");
	  	naver_id_login.setState(state);
	  	
	  	naver_id_login.setPopup();
	  	naver_id_login.init_naver_id_login();
	  	
  	</script>
    <!-- 네이버 로그인 종료 -->
    
    <!-- 카카오 로그인 시작 -->
    <div class="btn" align ="center">
	<a href="javascript:void(0)"  onclick="kakaoLogin();">
    	<img src="image/kakaologin.png" width="360" height ="82px" />
    </a>
	</div>
	<!-- 카카오 로그인 종료 -->


</body>
</html>



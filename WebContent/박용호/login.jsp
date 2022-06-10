<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>

<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<html lang="ko">
<head>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('3c99651ce15ee284a9c851bacbc9ef00'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
	Kakao.API.request({
	    url: '/v2/user/me',
	    data: {
	        property_keys:["kakao_account.email","kakao_account.birthday","kakao_account.nickname"]
	    },
	    success: function(response) {
	        console.log(response);
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

	<!-- 네이버 로그인 시작 -->
     <%
	    String clientId = "RDdgbivY7FUS7o1r_0v0";//애플리케이션 클라이언트 아이디값";
	    String redirectURI = URLEncoder.encode("http://localhost:8080/bookstore/naverLogin.jsp", "UTF-8");
	    SecureRandom random = new SecureRandom();
	    String state = new BigInteger(130, random).toString();
	    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
	    apiURL += "&client_id=" + clientId;
	    apiURL += "&redirect_uri=" + redirectURI;
	    apiURL += "&state=" + state;
	    session.setAttribute("state", state);
 	%>
 	<a href="<%=apiURL%>">
 		<img src="image/naverloginG.png" width="250" height ="70px" />
 	</a>
    <!-- 네이버 로그인 종료 -->
    
    <!-- 카카오 로그인 시작 -->
    <div class="btn" align ="left" onclick="kakaoLogin();">
	<a href="javascript:void(0)" >
    	<img src="image/kakao_login_large_narrow.png" width="250" height ="70px" />
    </a>
</div>
	<!-- 카카오 로그인 종료 -->
	
	<!-- 사이트 로그인 시작 -->
	
	
	<!-- 사이트 로그인 종료 -->







</body>
</html>



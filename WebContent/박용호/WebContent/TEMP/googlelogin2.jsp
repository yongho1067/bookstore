<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<meta name="google-signin-client_id"
	content="242582690522-erglmebrn9efor2d38kmhs6goppdlluq.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script type="text/javascript">
    function onSignIn() {
        // 페이지 로딩 시 자동으로 값들고오지 않게 끔 설정
        console.log("abc");
        var auth2 = gapi.auth2.getAuthInstance();
        var profile = auth2.currentUser.get().getBasicProfile();
        
        	  console.log('Full Name: ' + profile.getName());
        	  console.log('ID: ' + profile.getId());
        	  console.log('Given Name: ' + profile.getGivenName());
        	  console.log('Family Name: ' + profile.getFamilyName());
        	  console.log('Image URL: ' + profile.getImageUrl());
        	  console.log('Email: ' + profile.getEmail());
    }
</script>

</head>

<body>
	<!-- 구글 로그인 버튼 노출 영역 -->
	<div class="g-signin2" onclick="onSignIn();"></div>
	<!-- //구글 로그인 버튼 노출 영역 -->

	<%out.print("abc"); %>

</body>

</html>
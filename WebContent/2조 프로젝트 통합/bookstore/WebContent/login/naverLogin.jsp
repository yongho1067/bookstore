<!doctype html>
<html lang="ko">
<head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("RDdgbivY7FUS7o1r_0v0", "http://localhost:8888/bookstore/naverLogin.jsp");
  // 접근 토큰 값 출력
 /*  alert(naver_id_login.oauthParams.access_token); */
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
    var mem_id = naver_id_login.getProfileData('id');
    var mem_name = naver_id_login.getProfileData('name');
    var mem_email = naver_id_login.getProfileData('email');
    var mem_bd = naver_id_login.getProfileData('birthday');
    var mem_pn = naver_id_login.getProfileData('mobile');
    
	
	 var apiURL = (String)("http://" + window.location.hostname + ((location.port == "" || location.port == undefined) ? "" : ":" + location.port)
        + "/bookstore/main.jsp?mem_email="+mem_email+"&mem_name="+mem_name+"&mem_bd="+mem_bd+"&mem_pn="+mem_pn+"&mem_id="+mem_id);
	 window.open(apiURL);
	 
	 window.close();
  }
</script>

<%	
%>
</body>
</html>

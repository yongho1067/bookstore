<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.net.URL"%>
<%@ page import="java.net.HttpURLConnection"%>
<%@ page import="java.io.BufferedReader"%>
<%@ page import="java.io.InputStreamReader"%>


<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NaverLoginSDK</title>
</head>
<body>
	callback 처리중...
	<!-- (1) LoginWithNaverId Javscript SDK -->
	<script type="text/javascript"
		src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
		charset="utf-8"></script>
	<!-- (2) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
	<script> var naverLogin = new naver.LoginWithNaverId({
        clientId: "RDdgbivY7FUS7o1r_0v0",
        callbackUrl: "http://localhost:8888/bookstore/naverLogin.jsp",
        isPopup: false,
        callbackHandle: true /* callback 페이지가 분리되었을 경우에 callback 페이지에서는 callback처리를 해줄수 있도록 설정합니다. */
    }); /* (3) 네아로 로그인 정보를 초기화하기 위하여 init을 호출 */
    naverLogin.init(); /* (4) Callback의 처리. 정상적으로 Callback 처리가 완료될 경우 main page로 redirect(또는 Popup close) */
    window.addEventListener('load', function () {
        naverLogin.getLoginStatus(function (status) {
            if (status) { /* (5) 필수적으로 받아야하는 프로필 정보가 있다면 callback처리 시점에 체크 */
                var email = naverLogin.user.getEmail();
                if (email == undefined || email == null) {
                    alert("이메일은 필수정보입니다. 정보제공을 동의해주세요."); /* (5-1) 사용자 정보 재동의를 위하여 다시 네아로 동의페이지로 이동함 */
                    naverLogin.reprompt();
                    return;
                }
                var nickName = naverLogin.user.getNickName();
                var name = naverLogin.user.getName();
                var gender = naverLogin.user.getGender();
                var profileImage = naverLogin.user.getProfileImage();
                var birthday = naverLogin.user.getBirthday();
                var uniqId = naverLogin.user.getId();
                var age = naverLogin.user.getAge();
                var mobile = naverLogin.user.getMobile();
                var birthYear = naverLogin.user.getBirthyear();
                window.location.replace("http://" + window.location.hostname + ((location.port == "" || location.port == undefined) ? "" : ":" + location.port)
                    + "/bookstore/main.jsp?email="+email+"&name="+name+"&profileImage="+profileImage+"&birthday="+birthday+"&uniqId="+uniqId+"&age="+age+"&mobile="+mobile+"&birthYear="+birthYear+"&nickName="+nickName+"&gender="+gender);
            } else {
                console.log("callback 처리에 실패하였습니다.");
            }
        });
    });



    </script>
</body>
</html>






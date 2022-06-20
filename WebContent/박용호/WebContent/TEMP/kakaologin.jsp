<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>카카오 로그인</title>
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

	<div class="btn" align="left" onclick="kakaoLogin();">
		<a href="javascript:void(0)"> <img
			src="image/kakao_login_large_narrow.png" width="250" height="70px" />
		</a>
	</div>

	<ul>
		<li onclick="kakaoLogin();"><a href="javascript:void(0)"> <span>카카오
					로그인</span>
		</a></li>
		<li onclick="kakaoLogout();"><a href="javascript:void(0)"> <span>카카오
					로그아웃</span>
		</a></li>
	</ul>
</body>
</html>
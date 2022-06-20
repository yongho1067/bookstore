<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- content�� �ڽ��� OAuth2.0 Ŭ���̾�ƮID�� �ֽ��ϴ�. -->
<meta name="google-signin-client_id"
	content="242582690522-erglmebrn9efor2d38kmhs6goppdlluq.apps.googleusercontent.com">
</head>
<body>
	<ul>
		<li id="GgCustomLogin"><a href="javascript:void(0)"> <span>Login
					with Google</span>
		</a></li>
	</ul>

	<script>

//ó�� �����ϴ� �Լ�
function init() {
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
        // �߰��� Oauth ���� ���� �߰� �� ���� �������� �߰�
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
        // �ν��Ͻ��� �Լ� ȣ�� - element�� �α��� ��� �߰�
        // GgCustomLogin�� li�±׾ȿ� �ִ� ID, ���� ������ options�� �Ʒ� ����,���н� �����ϴ� �Լ���
		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	})
}

function onSignIn(googleUser) {
	var access_token = googleUser.getAuthResponse().access_token
	$.ajax({
    	// people api�� �̿��Ͽ� ������ �� ������Ͽ� ���� ���õ����� �����´�.
		url: 'https://people.googleapis.com/v1/people/me'
        // key�� �ڽ��� API Ű�� �ֽ��ϴ�.
		, data: {personFields:'birthdays', key:'AIzaSyAek7AXNFVmldNQizPVcrwXj3VsaEQD4NA', 'access_token': access_token}
		, method:'GET'
	})
	.done(function(e){
        //�������� �����´�.
		var profile = googleUser.getBasicProfile();
		console.log(profile)
	})
	.fail(function(e){
		console.log(e);
	})
}
function onSignInFailure(t){		
	console.log(t);
}
</script>
	<!-- //���� api ����� ���� ��ũ��Ʈ -->
	<script src="https://apis.google.com/js/platform.js?onload=init" async
		defer></script>

</body>
</html>
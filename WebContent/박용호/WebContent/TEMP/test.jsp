<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
	charset="utf-8"></script>
</head>
<body>
	<ul>
		<li>
			<!-- �Ʒ��Ͱ��� ���̵� �� ���ش�. --> <a id="naverIdLogin_loginButton"
			href="javascript:void(0)"> <span>���̹� �α���</span>
		</a>
		</li>
		<li onclick="naverLogout(); return false;"><a
			href="javascript:void(0)"> <span>���̹� �α׾ƿ�</span>
		</a></li>
	</ul>

	<!-- ���̹� ��ũ��Ʈ -->
	<script
		src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
		charset="utf-8"></script>

	<script>

var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "RDdgbivY7FUS7o1r_0v0", //�� ���ø����̼� ������ cliendId�� �Է����ݴϴ�.
			callbackUrl: "http://localhost:8080/bookstore/naverLogin", // �� ���ø����̼� API������ Callback URL �� �Է����ݴϴ�.
			isPopup: false,
			callbackHandle: true
		}
	);	

naverLogin.init();

window.addEventListener('load', function () {
	naverLogin.getLoginStatus(function (status) {
		if (status) {
			var email = naverLogin.user.getEmail(); // �ʼ��� �����Ұ��� �޾ƿ� �Ʒ�ó�� ���ǹ��� �ݴϴ�.
    		
			console.log(naverLogin.user); 
    		
            if( email == undefined || email == null) {
				alert("�̸����� �ʼ������Դϴ�. ���������� �������ּ���.");
				naverLogin.reprompt();
				return;
			}
		} else {
			console.log("callback ó���� �����Ͽ����ϴ�.");
		}
	});
});


var testPopUp;
function openPopUp() {
    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1000,height=1000");
}
function closePopUp(){
    testPopUp.close();
}

function naverLogout() {
	openPopUp();
	setTimeout(function() {
		closePopUp();
		}, 10000);
	
	
}
</script>

</body>
</html>
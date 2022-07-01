<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../css/custom.css">

	<title>회원가입</title>
	<script src="../js/jquery-3.6.0.min.js"></script>
	<script src="../js/bootstrap.js"></script>
	
	<script type="text/javascript">
	
	function closeClick() {
        window.close();
    }

	function passwordCheckFunction() {
		var mem_pw_update = $('#mem_pw_update').val();
		var mem_pw_update_ck = $('#mem_pw_update_ck').val();
		
		if(mem_pw_update != mem_pw_update_ck){
			$('#passwordCheckMessage').html('비밀번호가 서로 일치하지 않습니다.');
			
		}else{
			$('#passwordCheckMessage').html('');
		}
		
	} //function -end
</script>
</head>
<body>

<% 

String mem_id = request.getParameter("mem_id"); 


%>
<form action="passwordUpdateFunction.jsp">
	<div class="container">
		<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th colspan="3"><h4>비밀번호 변경</h4></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width: 110px;"><h5>기존 비밀번호</h5></td>
					<td colspan="2"><input class="form-control" id="mem_pw" type="password" name="mem_pw" maxlength="20" placeholder="기존 비밀번호를 입력하세요."></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>변경 비밀번호</h5></td>
					<td colspan="2"><input onkeyup="passwordCheckFunction();" class="form-control" id="mem_pw_update" type="password" name="mem_pw_update" maxlength="20" placeholder="변경 비밀번호를 입력하세요."></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>변경 비밀번호 확인</h5></td>
					<td colspan="2"><input onkeyup="passwordCheckFunction();" class="form-control" id="mem_pw_update_ck" type="password" name="mem_pw_update_ck" maxlength="20" placeholder="변경 비밀번호 확인을 입력하세요."></td>
				</tr>
				<tr>
					<td style="text-align: left;" colspan="3"><h5 style="color: red;" id="passwordCheckMessage"></h5>
					<input type="hidden" id=<%=mem_id %> name="mem_id" value=<%=mem_id %>>
					<input class="btn btn-primary pull-right" type="button" value="닫기" onclick="closeClick();">
					<input class="btn btn-primary pull-right" type="submit" value="확인"></td>
				</tr>
			</tbody>
		</table>
	</div>
</form>

</body>
</html>
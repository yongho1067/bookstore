<%@ page import="sun.security.util.Length"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">

	<title>회원가입</title>
	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
	<script type="text/javascript">
	<%!
		int count = 0;
	%>
		function registerCheckFunction(){
			var mem_id = $('#mem_id').val();
			$.ajax({
				type: 'POST',
				url: './memberRegisterCheckServlet',
				data: {mem_id: mem_id},
				success: function(result){
					if(result == 1){
						$('#checkMessage').html('사용할 수 있는 아이디입니다.');
						$('#checkType').attr('class','modal-content panel-success');
					}else {
						$('#checkMessage').html('사용할 수 없는 아이디입니다.');
						$('#checkType').attr('class','modal-content panel-warning');
					}
					$('#checkModal').modal("show");
				}
			}); 
		}//function -end
			
			function passwordCheckFunction() {
				var mem_pw = $('#mem_pw').val();
				var mem_pw_ck = $('#mem_pw_ck').val();
				
				if(mem_pw != mem_pw_ck){
					$('#passwordCheckMessage').html('비밀번호가 서로 일치하지 않습니다.');
					
				}else{
					$('#passwordCheckMessage').html('');
				}
				
			} //function -end
	</script>
	
</head>
<body>
	<%
		String mem_id = null;
		if (session.getAttribute("mem_id") != null){
			mem_id = (String) session.getAttribute("mem_id");
		}

	%>

	<br>
	<div class="container">
		<form method="post" action="./memberRegisterServlet">
			<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"><h4>회원 등록 양식</h4></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 110px;"><h5>아이디</h5></td>
						<td><input class="form-control" type="text" id="mem_id" name="mem_id" maxlength="10" placeholder="아이디를 입력하세요."></td>
						<td style="width: 110px;"><a class="btn btn-primary" onclick="registerCheckFunction();" type="button">중복체크</a></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>비밀번호</h5></td>
						<td colspan="2"><input onkeyup="passwordCheckFunction();" class="form-control" id="mem_pw" type="password" name="mem_pw" maxlength="20" placeholder="비밀번호를 입력하세요."></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>비밀번호 확인</h5></td>
						<td colspan="2"><input onkeyup="passwordCheckFunction();" class="form-control" id="mem_pw_ck" type="password" name="mem_pw_ck" maxlength="20" placeholder="비밀번호 확인을 입력하세요."></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>이메일</h5></td>
						<td colspan="2"><input class="form-control" id="mem_email" type="text" name="mem_email" maxlength="100" placeholder="이메일을 입력하세요."></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>이름</h5></td>
						<td colspan="2"><input class="form-control" id="mem_name" type="text" name="mem_name" maxlength="10" placeholder="이름을 입력하세요."></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>핸드폰번호</h5></td>
						<td colspan="2"><input class="form-control" id="mem_pn" type="text"  name="mem_pn" maxlength="20" placeholder="핸드폰번호를 입력하세요.(ex:01012345678)"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>생년월일</h5></td>
						<td colspan="2"><input class="form-control" id="mem_bd" type="text"  name="mem_bd" maxlength="100" placeholder="생년월일을 입력하세요.(ex:19960620)"></td>
					</tr>
					<tr>
						<td style="text-align: left;" colspan="3"><h5 style="color: red;" id="passwordCheckMessage"></h5><input class="btn btn-primary pull-right" type="submit" value="등록"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<%
		String num = null;
	
		if(session.getAttribute("count") != null){
			num = (String)(session.getAttribute("count"));
		}
		
		
		session.removeAttribute("count");
		
		String messageContent = null;
	
		if(session.getAttribute("messageContent") != null){
			messageContent = (String) session.getAttribute("messageContent");
		}
		
		String messageType = null;
		
		if(session.getAttribute("messageType") != null){
			messageType = (String) session.getAttribute("messageType");
		}

		if(messageContent != null){
	%>
		<div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="vertical-alignment-helper">
				<div class="modal-dialog vertical-align-center">
					<div class="modal-content <% if(messageContent.equals("error")) out.println("panel-warning");
					else out.println("panel-success");%>">
						<div class="modal-header panel-heading">
							<button type = "button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times</span>
								<span class="sr=only">Close</span>
							</button>
							<div class="modal-title">
								<%= messageType %>
							</div>
						</div>
						<div class="modal-body">
							<%= messageContent %>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script>
			$('#messageModal').modal("show");
		</script>
	<%	
		session.removeAttribute("messageContent");
		session.removeAttribute("messageType");
		
		}
	%>
	<div class= "modal fade" id ="checkModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div id="checkType" class="modal-content panel-info">
					<div class="modal-header panel-heading">
						<button type = "button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">
							확인 메세지
						</h4>
					</div>
					<div id="checkMessage" class="modal-body">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal" >확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
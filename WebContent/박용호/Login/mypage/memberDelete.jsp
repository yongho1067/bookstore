<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/custom.css">
<title>ȸ�� Ż��</title>
<script src="../js/jquery-3.6.0.min.js"></script>
<script src="../js/bootstrap.js"></script>

<script type="text/javascript">
	function backPage() {
			history.back();
	    }
</script>

</head>
<body>
	<%
		String mem_id = request.getParameter("mem_id");
	%>
<form action="memberDeleteFunction.jsp">
	<div class="container">
		<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th colspan="3"><h4>ȸ�� Ż��</h4></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width: 110px;"><h5>���̵�</h5></td>
					<td colspan="2"><input class="form-control" id="mem_id" type="text" name="mem_id" maxlength="20" value=<%=mem_id %> readonly></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>��й�ȣ</h5></td>
					<td colspan="2"><input class="form-control" id="mem_pw" type="password" name="mem_pw" maxlength="20" placeholder="��й�ȣ�� �Է��ϼ���."></td>
				</tr>
				<tr>
					<td style="text-align: left;" colspan="3">
						<input class="btn btn-primary pull-right" type="button" value="����" onclick="backPage();">
						<input class="btn btn-primary pull-right" type="submit" value="Ȯ��">
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</form>
</body>
</html>
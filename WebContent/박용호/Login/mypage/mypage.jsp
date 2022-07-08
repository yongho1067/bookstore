<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/custom.css">

<title>마이페이지</title>
<script src="../js/jquery-3.6.0.min.js"></script>
<script src="../js/bootstrap.js"></script>
	  <% String mem_id = request.getParameter("mem_id");%>
 <script type="text/javascript">
  function showPopup() { 
	  
	  window.open("passwordUpdate.jsp?mem_id=<%=mem_id%>", "passwordUpdate", "width=500, height=300, left=100, top=50"); 
	  
  }
  </script>
</head>

<body>
<%
        request.setCharacterEncoding("UTF-8");
        
        String mem_name = request.getParameter("mem_email");
        String mem_email = request.getParameter("mem_name");
        String mem_bd = request.getParameter("mem_bd");
        String mem_pn = request.getParameter("mem_pn");
        
        if(session.getAttribute("mem_id") != null){
        	mem_id = (String)session.getAttribute("mem_id");
        	mem_name = (String)session.getAttribute("mem_name");
        	mem_email = (String)session.getAttribute("mem_email");
        	mem_bd = (String)session.getAttribute("mem_bd");
        	mem_pn = (String)session.getAttribute("mem_pn");
        }else{
        	session.setAttribute("mem_id", mem_id);
			session.setAttribute("mem_name", mem_name);
			session.setAttribute("mem_email", mem_email);
			session.setAttribute("mem_bd", mem_bd);
			session.setAttribute("mem_pn", mem_pn);
        }
        %>
<br>
<form action="memberUpdate.jsp">
	<div class="container">
		<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th colspan="3"><h4>마이 페이지</h4></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width: 110px;"><h5>아이디</h5></td>
					<td><input class="form-control" type="text" id="mem_id" name="mem_id" maxlength="20" value="<%=mem_id%>" readonly></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>이메일</h5></td>
					<td colspan="2"><input class="form-control" id="mem_email" type="text" name="mem_email" maxlength="100" value="<%=mem_email%>"></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>이름</h5></td>
					<td colspan="2"><input class="form-control" id="mem_name" type="text" name="mem_name" maxlength="10" value="<%=mem_name%>"></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>핸드폰번호</h5></td>
					<td colspan="2"><input class="form-control" id="mem_pn" type="text"  name="mem_pn" maxlength="20" value="<%=mem_pn%>"></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>생년월일</h5></td>
					<td colspan="2"><input class="form-control" id="mem_bd" type="text"  name="mem_bd" maxlength="100" value="<%=mem_bd%>"></td>
				</tr>
				<tr>
					<td style="text-align: left;" colspan="3"><h5 style="color: red;" id="passwordCheckMessage"></h5>
					<input class="btn btn-primary pull-left" type="button" value="비밀번호 변경 " onclick="showPopup();">　
					<input class="btn btn-primary pull-right" type="button" value="회원 탈퇴 " onclick="location.href='memberDelete.jsp?mem_id=<%=mem_id%>'">　
					<input class="btn btn-primary pull-right" type="button" value="이전" onclick="location.href='../main.jsp'">　　
					<input class="btn btn-primary pull-right" type="submit" value="수정">　　
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ����</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String mem_id = request.getParameter("mem_id");
%>


<br><br><br><br><br><br><br>
<h1 align="center"> ȸ�� ���� Ȯ��</h1>
<div class="align" align="center">
<form action="mypageFunction.jsp" method="post">
	���̵� : <input type="text" id="mem_id" name = "mem_id" placeholder="���̵�" value= "<%=mem_id%>" readonly>
		<div class="text-id"> 
		</div> 
	<label></label>
	��й�ȣ : <input type="password" id="mem_pw" name = "mem_pw" placeholder="��ȣ">
		<div class="text-id">
	                        
		</div> 
		<br>
	<input type="submit" id="btnCheck" value="Ȯ��" onclick="location.href='mypageFuntion.jsp'" >
	<input type="button" value="����" onclick="location.href='main.jsp'"/></form>
	<br><br>
</div>


</body>
</html>
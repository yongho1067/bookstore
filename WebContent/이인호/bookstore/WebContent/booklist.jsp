<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%@include file="/header.jsp" %>


<div class='title'>
<h1>�����ڼ�</h1>
</div>



	<table border="1">
		<tr><td>���̵�</td><td>�̸�</td><td>��ȭ��ȣ</td></tr>
		<c:forEach var="vo1" items="${jlist1 }">
         <tr>
            <td>${vo1.id }</td>
            <td><a href="getBookInfo.do?id=${vo1.id }">${vo1.name }</a>
            <td>${vo1.cc }</td>
            <td>${vo1.janre }</td>
         </tr>
      </c:forEach>
	</table>
	
</body>
</html>
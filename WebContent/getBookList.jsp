<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bookinfoDAO.AdminDAO"%>
<%@page import="com.book.vo.AdminVO"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>북쳐핸썹_admin > 목록</title>
<style>
#title {
	width: 300px;
}

#publisher {
	width: 300px;
}

#category {
	text-align: center;
}

#price {
	width: 80px;
	text-align: center;
}

#amount {
	width: 80px;
	text-align: center;
}

body {
	background-color: HoneyDew;
}

* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.buttons {
	text-align: center;
	list-style-type: none;
	background-color: HoneyDew;
	width: 30%;
	padding: 0;
	margin: 0;
	position: fixed;
	height: 100%;
	overflow: auto;
}

.btn-hover {
	width: 200px;
	font-size: 16px;
	font-weight: 600;
	color: #fff;
	cursor: pointer;
	margin: 20px;
	height: 55px;
	text-align: center;
	border: none;
	background-size: 300% 100%;
	border-radius: 50px;
	moz-transition: all .4s ease-in-out;
	-o-transition: all .4s ease-in-out;
	-webkit-transition: all .4s ease-in-out;
	transition: all .4s ease-in-out;
}

.btn-hover:hover {
	background-position: 100% 0;
	moz-transition: all .4s ease-in-out;
	-o-transition: all .4s ease-in-out;
	-webkit-transition: all .4s ease-in-out;
	transition: all .4s ease-in-out;
}

.btn-hover:focus {
	outline: none;
}

.btn-hover.color-1 {
	background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
	box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
}

.btn-hover.color-2 {
	background-image: linear-gradient(to right, #f5ce62, #e43603, #fa7199, #e85a19);
	box-shadow: 0 4px 15px 0 rgba(229, 66, 10, 0.75);
}

.btn-hover.color-3 {
	background-image: linear-gradient(to right, #667eea, #764ba2, #6B8DD6, #8E37D7);
	box-shadow: 0 4px 15px 0 rgba(116, 79, 168, 0.75);
}

.btn-hover.color-4 {
	background-image: linear-gradient(to right, #fc6076, #ff9a44, #ef9d43, #e75516);
	box-shadow: 0 4px 15px 0 rgba(252, 104, 110, 0.75);
}

.btn-hover.color-5 {
	background-image: linear-gradient(to right, #0ba360, #3cba92, #30dd8a, #2bb673);
	box-shadow: 0 4px 15px 0 rgba(23, 168, 108, 0.75);
}

.btn-hover.color-6 {
	background-image: linear-gradient(to right, #fc6076, #3cba92, #ef9d43, #e85a19);
	box-shadow: 0 4px 15px 0 rgba(212, 134, 105, 0.75);
}

/* 하단 버튼 집합 div */
.actionbtn {
	margin: 40px 0;
	text-align: right;
}

/* 하단 버튼 */
.actionbtn [type=button] {
	width: 150px;
	height: 60px;
	font-size: 1.2em;
	margin-right: 50px;
}

.btn-add {
	background-color: Aliceblue;
}

textarea {
	width: 50%;
	height: 10em;
	border: none;
	resize: none;
}
</style>



</head>
<%
request.setCharacterEncoding("UTF-8");
AdminDAO rdao = new AdminDAO();
ArrayList<AdminVO> odlist = rdao.getBookList();
%>

<body>

<%@include file="/header.jsp" %> <!-- 헤더 로그인 -->

	<div class="buttons">
		<button class="btn-hover color-1"
			onclick="location.href='BookAdd.jsp'">도서추가</button>
		<button class="btn-hover color-2"
			onclick="location.href='BookUpdate.jsp'">도서수정</button>
		<button class="btn-hover color-3"
			onclick="location.href='BookDelete.jsp'">도서삭제</button>
		<button class="btn-hover color-4"
			onclick="location.href='getBookList.jsp'">도서목록</button>
		<button class="btn-hover color-5"
			onclick="location.href='BookOrder.jsp'">주문관리</button>
		<button class="btn-hover color-6"
			onclick="location.href='BookInfo.jsp'">회원관리</button>
	</div>

	<div style="margin-left: 40%; padding: 1px 16px; height: 800px;">
		<h4>전체 도서 목록</h4>

		<table class="booklist">
			<thead>
				<tr>
					<th>번호</th>
					<th>도서명</th>
					<th>카테고리</th>
					<th>장르</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<%
				for (AdminVO tmp : odlist) {
				%>
			<tr>
				<td><%=tmp.getBo_id()%></td>
				<td><%=tmp.getBo_name()%></td>
				<td><%=tmp.getBo_janre()%></td>
				<td><%=tmp.getBo_cc()%></td>
			</tr>

				<%
				}
				%>
			</tbody>

		</table>






	</div>


</body>
</html>
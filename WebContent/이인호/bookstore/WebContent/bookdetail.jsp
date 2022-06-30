<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
   
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%!// 변수 선언
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String uid = "c##book";
	String pwd = "1234";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	%>  
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="/bookstore/css/bookdetail.css">

<style>

</style>

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body onload="init();">



<%@include file="/header.jsp" %> <!-- 헤더 로그인 -->




<!--  제목 -->
<div class='title'>
<b>책정보</b>
</div>

<!-- 책이미지 -->
<div class='imagebox'>
<img src="./image/${svo.image}" class="bookimage">

</div>

<!-- 책정보 -->
<div class='bookinfo'>
책 제목 : <b>${svo.name }</b>

<br>
<!-- 책정보 -->

<pre>${svo.example }</pre>
</div>



<form name="form" method="get" id="counttype" >
수량 : <input type=hidden name="sell_price" value="5500">
<input type="text" name="amount" value="1" size="3" onchange="change();">
<input type="button" value=" + " onclick="add();">
<input type="button" value=" - " onclick="del();">
<br>

금액 : <input type="text" name="sum" size="11" readonly>원

<input type="button" class='login' value="장바구니" onclick = "location.href = '' ">
<input type="button" class='login' value="바로구매" onclick = "location.href = 'jang.jsp' ">

</form>


<form action="Reviewadd.do" method="post">
<div id="star">
<input type="hidden" name="mem_id" value="<%String mid = (String)session.getAttribute("mem_id");
out.println(mid);
%>">
<input type="hidden" name="bo_id" value="${svo.id}">
  <select id="grade" name="bo_grade" size="1">
    <option value="none" selected>== 평점선택 ==</option>
    <option value="1">★☆☆☆☆</option>
    <option value="2">★★☆☆☆</option>
    <option value="3">★★★☆☆</option>
    <option value="4">★★★★☆</option>
    <option value="5">★★★★★</option>
  </select>
<br>
<textarea name="comment_" cols="80" rows="2" placeholder="이책의 한줄평"  style="resize: none;"></textarea>
<input type="submit" value="작성" id="inputtype"> 
</div>
</form>


<%
String k =request.getParameter("id");
if (request.getParameter("id")==null){
	
	k = "1";
}
	
int id= Integer.parseInt(request.getParameter("id"));
String sql = "select * from grade_table where bo_id="+id;
		try {
		// 데이터베이스를 접속하기 위한 드라이버 SW 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 데이터베이스에 연결하는 작업 수행
		conn = DriverManager.getConnection(url, uid, pwd);
		// 쿼리를 생성gkf 객체 생성
		stmt = conn.createStatement();
		// 쿼리 생성
		rs = stmt.executeQuery(sql);
%>
	<table class="review">
		<tr>
			<td>아이디</td>
			<td>평점</td>
			<td>한줄평</td>
		</tr>
		<%
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("mem_id")%></td>
			<td><% String star=rs.getString("bo_grade");
			switch(star){
			case "1":
				out.println("★☆☆☆☆");
				break;
			case "2":
				out.println("★★☆☆☆");
				break;
			case "3":
				out.println("★★★☆☆");
				break;
			case "4":
				out.println("★★★★☆");
				break;
			case "5":
				out.println("★★★★★");
				break;
			}
			%></td>
			<td><%=rs.getString("comment_")%></td>
		</tr>
		
<%
			}
		} catch (Exception e) {
		e.printStackTrace();
		} finally {
		try {
		if (rs != null) {
			rs.close();
		}
		if (stmt != null) {
			stmt.close();
		}
		if (conn != null) {
			conn.close();
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		}
		%>
		</table>






<script>

var sell_price;
var amount;

function init () {
	sell_price = document.form.sell_price.value;
	amount = document.form.amount.value;
	document.form.sum.value = sell_price;
	change();
}

function add () {
	hm = document.form.amount;
	sum = document.form.sum;
	hm.value ++ ;

	sum.value = parseInt(hm.value) * sell_price;
}

function del () {
	hm = document.form.amount;
	sum = document.form.sum;
		if (hm.value > 1) {
			hm.value -- ;
			sum.value = parseInt(hm.value) * sell_price;
		}
}

function change () {
	hm = document.form.amount;
	sum = document.form.sum;

		if (hm.value < 0) {
			hm.value = 0;
		}
	sum.value = parseInt(hm.value) * sell_price;
}  


</script>
</body>
</html>
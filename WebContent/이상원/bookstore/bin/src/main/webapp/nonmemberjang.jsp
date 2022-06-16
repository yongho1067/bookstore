<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	font-size: 15pt;
}
* {
  box-sizing: border-box;
}

a[class*="btn"] {text-decoration: none;}

.btn-container, .container {
  background-color: white;
  border-radius: 4px;
  text-align: center;
  margin-bottom: 40px;
}

.btn-3d {
  position: relative;
  display: inline-block;
  font-size: 22px;
  padding: 20px 60px;
  color: white;
  margin: 20px 10px 10px;
  border-radius: 6px;
  text-align: center;
  transition: top .01s linear;
  text-shadow: 0 1px 0 rgba(0,0,0,0.15);
}
.btn-3d.cyan:hover   {background-color: #82D1E3;}

.btn-3d:active {
  top: 9px;
}

.btn-3d.cyan {
  background-color: #7fccde;
  box-shadow: 0 0 0 1px #7fccde inset,
        0 0 0 2px rgba(255,255,255,0.15) inset,
        0 8px 0 0 rgba(102, 164, 178, .6),
        0 8px 0 1px rgba(0,0,0,.4),
        0 8px 8px 1px rgba(0,0,0,0.5);
}
.btn-3d.cyan:active {
  box-shadow: 0 0 0 1px #7fccde inset,
        0 0 0 2px rgba(255,255,255,0.15) inset,
        0 0 0 1px rgba(0,0,0,0.4);
}

</style>
</head>
<body bgcolor="lightgray">

<%
String bookV = request.getParameter("book");
String cntV = request.getParameter("cnt");

Object obj1 = session.getAttribute("cnt1");
Object obj2 = session.getAttribute("cnt2");

int cnt1=0, cnt2=0, cnt=0;

//dummy 값
int price1 = 15000;
int price2 = 20000;


if(obj1 != null){
	cnt1 = (Integer)obj1;
}else{
	
}
if(obj2 != null){
	cnt2 = (Integer)obj2;
}else{
	
}
	
cnt = Integer.parseInt(cntV);

if("AA".equals(bookV)){
	cnt1 += cnt;	
}
if("BB".equals(bookV)){
	cnt2 += cnt;
}

session.setAttribute("cnt1", cnt1);
session.setAttribute("cnt2", cnt2);

session.invalidate();

%>


	<h1 align="center">장바구니</h1>
	<table border="0" align="center">
		<tr>
			<th></th>
			<th width="200">책이름</th>
			<th width="100">판매가</t3h>
			<th width="50">수량</th>
			<th width="100">합계</th>
		</tr>
		
		<tr>
			<td><img alt="아무그림" src="7.jpg" align="middle" height="150" width="150"></td>
			<td><b>책 이름 1 </b></td>
			<td>
			<%=price1 %> <%-- 가격 --%>
			</td>
			<td>
			<%= cnt1 %> <%-- 수량 --%>
			</td>
			<td><b>
			<%= price1 * cnt1 %>
			</b></td>
			<td><button onclick="alert('삭제되었습니다.')">삭제</button></td>
		</tr>
		
		<tr>
			<td><img alt="아무그림" src="images.jpeg" align="middle" height="150" width="150"></td>
			<td><b>책 이름 2 </b></td>
			<td>
			<%=price2 %> <%-- 가격 --%>
			</td>
			<td>
			<%= cnt2 %> <%-- 수량 --%>
			</td>
			<td><b>
			<%= price2 * cnt2 %>
			</b></td>
			<td width="100"><button onclick="alert('삭제되었습니다.')">삭제</button></td>
	
	</table>
<table align="center">	
	<tr>
		<th colspan="4" width="300" height="150" align="center" style="background-color: aqua;"><%= cnt1*price1 + cnt2*price2 %>원 입니다.</th>
	</tr>
	
	<tr>
		<td></td>
		<td><a href="jangbaguni.jsp" class="btn-3d cyan" onclick="alert('주문이 완료 되었습니다.')">비회원 구매</a></td>
		
		<td><a href="#" class="btn-3d cyan" onclick="alert('주문이 취소 되었습니다.')">취소</a></td>
	</tr>
	
</table>
	
<script type="text/javascript">
$('a').click(function(event){
    event.preventDefault(); 
  });
</script>	
	
	
	
</body>
</html>
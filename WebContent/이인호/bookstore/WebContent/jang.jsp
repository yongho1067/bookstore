<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>바로 구매 페이지</title>
</head>

	<%
	String sell_price = request.getParameter("sell_price");
	//String amount = request.getParameter("amount");
	//String sum = request.getParameter("sum"); 
	

	
	%>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="/bookstore/css/jang.css">

<body onload="init();">

<div class='title'>
바로 구매
</div>

<table align="center" class='title' border="0">
	<tr>
		<th></th>
		<th>책이름</th>
		<th>수량</th>
		<th>가격</th>
		<th>총 가격</th>
	</tr>
	
	<tr>
		<td>
				<img src="./image/book/test.jpg" class="bookimage">
		</td>
		
		<td>
			우에엥
		</td>
		
		<td>
		<form action="ordering.do" name="form" method="get" id="counttype" >
			수량 : <input type=hidden name="sell_price" value="6500">
<input type="text" name="amount" value="1" size="3" onchange="change();">
<input type="button" value=" + " onclick="add();">
<input type="button" value=" - " onclick="del();">
<br>
		</td>
		
		<td>
		<%out.println(sell_price); %>
		</td>
		
		<td>
		금액 : <input type="text" name="sum" size="11" readonly>원
		
		
	<input type="submit" class='login' value="주문완료" onclick = "location.href = '#' ">
	
		</td>
		
		<td>
			
			<input type="button" value="삭제" onclick = "">
		</td>
		</form>
	</tr>
	
	<tr>
	
		
	
	
	</tr>

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
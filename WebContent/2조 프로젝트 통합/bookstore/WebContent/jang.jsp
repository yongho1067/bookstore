<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>바로 구매 페이지</title>
</head>
<style>

table, td, th {
	margin-left : auto;
	margin-right: auto;
	padding: 20px;
	border-spacing: auto;
}




</style>
<%
String sell_price = request.getParameter("sell_price");
String amount = request.getParameter("amount");
String sum = request.getParameter("sum");
%>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link rel="stylesheet" href="/bookstore/css/jang.css">

<body onload="init();">

<%@include file="/header.jsp" %>

	<div class='maintitle'>구매 합니다.</div>
	
	<%@include file="/sidebar.jsp" %>

	<table align="center" class='title' border="0">
		<tr>
			<th></th>
			<th>책이름</th>
			<th>수량</th>
			<th>가격</th>
			<th>총 가격</th>
		</tr>

		<tr>
			<td><img src="./image/book/test.jpg" class="bookimage"></td>

			<td></td>

			<td>
				<form action="ordering.do" name="form" method="get" id="counttype">



					주소 : <input type="text" id="address_kakao" name="address" readonly />
					<input type="button" onclick="insert_address()"
						value="우편번호 찾기"><br><br>상세 주소 : <input type="text"
						name="address_detail" />


					<div id="layer"
						style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
						<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
							id="btnCloseLayer"
							style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
							onclick="close_address()" alt="닫기 버튼">
					</div>


					수량 : <input type=hidden name="sell_price" value="6500"> <input
						type="text" name="amount" value="1" size="3" onchange="change();">
					<input type="button" value=" + " onclick="add();"> <input
						type="button" value=" - " onclick="del();"> <br>
			</td>

			<td>
				<%
				out.println(sell_price);
				%>

			</td>

			<td>금액 : <input type="text" name="sum" size="11" readonly>원


				<input type="submit" class='login' value="주문완료"
				onclick="location.href = '#' ">

			</td>

				</form>
		</tr>

		<tr>




		</tr>

	</table>

<%@include file="/footer.jsp" %>

	<script>
		var sell_price;
		var amount;
		var sum;

		function init() {
			sell_price = document.form.sell_price.value;
			amount = document.form.amount.value;
			document.form.sum.value = sell_price;
			change();
		}

		function add() {
			hm = document.form.amount;

			sum = document.form.sum;
			hm.value++;

			sum.value = parseInt(hm.value) * sell_price;
		}

		function del() {
			hm = document.form.amount;
			sum = document.form.sum;
			if (hm.value > 1) {
				hm.value--;
				sum.value = parseInt(hm.value) * sell_price;
			}
		}

		function change() {
			hm = document.form.amount;
			sum = document.form.sum;

			if (hm.value < 0) {
				hm.value = 0;
			}

			sum.value = parseInt(hm.value) * sell_price;
		}
	</script>

	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>



	<script>
		// 우편번호 찾기 화면을 넣을 element
		var element_layer = document.getElementById('layer');

		function close_address() {
			// iframe을 넣은 element를 안보이게 한다.
			element_layer.style.display = 'none';
		}

		function insert_address() {
			//카카오 지도 발생
			new daum.Postcode(
					{
						oncomplete : function(data) { //선택시 입력값 세팅
							document.getElementById("address_kakao").value = data.address; // 주소 넣기
							document
									.querySelector("input[name=address_detail]")
									.focus(); //상세입력 포커싱

							element_layer.style.display = 'none';
						},
						width : '100%',
						height : '100%',
						maxSuggestItems : 5
					}).embed(element_layer);

			// iframe을 넣은 element를 보이게 한다.
			element_layer.style.display = 'block';

			// iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
			initLayerPosition();
		}

		// 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
		// resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
		// 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
		function initLayerPosition() {
			var width = 300; //우편번호서비스가 들어갈 element의 width
			var height = 400; //우편번호서비스가 들어갈 element의 height
			var borderWidth = 5; //샘플에서 사용하는 border의 두께

			// 위에서 선언한 값들을 실제 element에 넣는다.
			element_layer.style.width = width + 'px';
			element_layer.style.height = height + 'px';
			element_layer.style.border = borderWidth + 'px solid';
			// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
			element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
					+ 'px';
			element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
					+ 'px';
		}
	</script>


</body>
</html>
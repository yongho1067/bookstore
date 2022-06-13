<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
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


<div class='login1'>
<input type="button" class='login' value="로그인" onclick="location.href='http://google.com';">
<input type="button" class='login' value="회원가입" onclick = "location.href = '#' ">
<input type="button" class='login' value="장바구니" onclick = "location.href = '#' ">
</div>


<div class='title'>
책정보
</div>


<div class='imagebox'>
<img src="./image/book/test.jpg" class="bookimage">

</div>

<div class='bookinfo'>
책 제목 : <b>책 이름</b>

<br>
<pre>가나다라마바사</pre>
</div>
<form name="form" method="get" id="counttype" >
수량 : <input type=hidden name="sell_price" value="5500">
<input type="text" name="amount" value="1" size="3" onchange="change();">
<input type="button" value=" + " onclick="add();">
<input type="button" value=" - " onclick="del();">
<br>

금액 : <input type="text" name="sum" size="11" readonly>원

<input type="button" class='login' value="장바구니" onclick = "location.href = '#' ">
<input type="button" class='login' value="바로구매" onclick = "location.href = '#' ">

</form>


<form method="get" name="star">
<div id="star">
  <select>
    <option value="none">== 평점선택 ==</option>
    <option value="1">★☆☆☆☆</option>
    <option value="2">★★☆☆☆</option>
    <option value="3">★★★☆☆</option>
    <option value="4">★★★★☆</option>
    <option value="5">★★★★★</option>
  </select>
<br>
<textarea name="oneline" cols="80" rows="2" placeholder="이책의 한줄평"  style="resize: none;"></textarea>
<input type="submit" value="작성" id="inputtype"> 
</div>
</form>


<div class="review">
<table>
<!--  
<thead>
        <tr>
            <th>별점</th>
            <th>이름</th>
            <th>한줄 평</th>
        </tr>
    
    </thead>
        -->
    <tbody>
       <c:forEach var="vo1" items="${alist1 }">
         <!-- request scope에 객체 전체를 ArrayList alist1에 저장 -->
         <tr>
            <td>${vo1.id }</td>
            <!-- <td>${vo1.name }</td> -->
            <td>${vo1.name }</td>
            <!-- 전체보기하면서 수정/삭제도 준비 -->
            <td>${vo1.d }</td>
         </tr>
      </c:forEach>
    </tbody>

</table>

</div>

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
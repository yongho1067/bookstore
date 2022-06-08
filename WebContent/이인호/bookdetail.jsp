<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<body>


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
책 제목
<pre>

</pre>
</div>
<div class="count">
<input type='button'
       onclick='count("plus")'
       value='+'/>
<input type='button'
       onclick='count("minus")'
       value='-'/>
<input type="text" id="result" value="0"></div>

<input type="button" class='login' value="장바구니" onclick = "location.href = '#' ">
<input type="button" class='login' value="바로구매" onclick = "location.href = '#' ">

</div>

<div class="review">

<form>
  <select name="star">
    <option value="none">== 평점선택 ==</option>
    <option value="1">★☆☆☆☆</option>
    <option value="2">★★☆☆☆</option>
    <option value="3">★★★☆☆</option>
    <option value="4">★★★★☆</option>
    <option value="5">★★★★★</option>
  </select>
</form>

<textarea name="oneline" cols="80" rows="2" placeholder="이책의 한줄평"></textarea>
</div>

<p>별점 유저아이디 평가</p>
<script>
function count(type)  {
	  // 결과를 표시할 element
	  const resultElement = document.getElementById('result');
	  
	  // 현재 화면에 표시된 값
	  let number = resultElement.innerText;
	  
	  // 더하기/빼기
	  if(type === 'plus') {
	    number = parseInt(number) + 1;
	  }else if(type === 'minus')  {
	    number = parseInt(number) - 1;
	  }
	  
	  // 결과 출력
	  resultElement.innerText = number;
	}
</script>
</body>
</html>
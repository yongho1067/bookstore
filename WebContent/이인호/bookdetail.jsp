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
<input type="button" class='login' value="�α���" onclick="location.href='http://google.com';">
<input type="button" class='login' value="ȸ������" onclick = "location.href = '#' ">
<input type="button" class='login' value="��ٱ���" onclick = "location.href = '#' ">
</div>


<div class='title'>
å����
</div>


<div class='imagebox'>
<img src="./image/book/test.jpg" class="bookimage">

</div>

<div class='bookinfo'>
å ����
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

<input type="button" class='login' value="��ٱ���" onclick = "location.href = '#' ">
<input type="button" class='login' value="�ٷα���" onclick = "location.href = '#' ">

</div>

<div class="review">

<form>
  <select name="star">
    <option value="none">== �������� ==</option>
    <option value="1">�ڡ١١١�</option>
    <option value="2">�ڡڡ١١�</option>
    <option value="3">�ڡڡڡ١�</option>
    <option value="4">�ڡڡڡڡ�</option>
    <option value="5">�ڡڡڡڡ�</option>
  </select>
</form>

<textarea name="oneline" cols="80" rows="2" placeholder="��å�� ������"></textarea>
</div>

<p>���� �������̵� ��</p>
<script>
function count(type)  {
	  // ����� ǥ���� element
	  const resultElement = document.getElementById('result');
	  
	  // ���� ȭ�鿡 ǥ�õ� ��
	  let number = resultElement.innerText;
	  
	  // ���ϱ�/����
	  if(type === 'plus') {
	    number = parseInt(number) + 1;
	  }else if(type === 'minus')  {
	    number = parseInt(number) - 1;
	  }
	  
	  // ��� ���
	  resultElement.innerText = number;
	}
</script>
</body>
</html>
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
<body onload="init();">


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
å ���� : <b>å �̸�</b>

<br>
<pre>�����ٶ󸶹ٻ�</pre>
</div>
<form name="form" method="get" id="counttype" >
���� : <input type=hidden name="sell_price" value="5500">
<input type="text" name="amount" value="1" size="3" onchange="change();">
<input type="button" value=" + " onclick="add();">
<input type="button" value=" - " onclick="del();">
<br>

�ݾ� : <input type="text" name="sum" size="11" readonly>��

<input type="button" class='login' value="��ٱ���" onclick = "location.href = '#' ">
<input type="button" class='login' value="�ٷα���" onclick = "location.href = '#' ">

</form>


<form method="get" name="star">
<div id="star">
  <select>
    <option value="none">== �������� ==</option>
    <option value="1">�ڡ١١١�</option>
    <option value="2">�ڡڡ١١�</option>
    <option value="3">�ڡڡڡ١�</option>
    <option value="4">�ڡڡڡڡ�</option>
    <option value="5">�ڡڡڡڡ�</option>
  </select>
<br>
<textarea name="oneline" cols="80" rows="2" placeholder="��å�� ������"  style="resize: none;"></textarea>
<input type="submit" value="�ۼ�" id="inputtype"> 
</div>
</form>


<div class="review">
<table>
<thead>
        <tr>
            <th>����</th>
            <th>�̸�</th>
            <th>���� ��</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>1</td>
            <td></td>
            <td></td>
        </tr>
         <tr>
            <td>1</td>
            <td></td>
            <td></td>
        </tr>
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
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">

<style>


.title{
    text-align : center;
	font-size: 30px;
}

.search {
  width: 100%;
  position: relative;
  display: flex;
}

.searchTerm {
  width: 80%;
  border: 3px solid #00B4CC;
  padding: 5px;
  height: 20px;
  border-radius: 5px 0 0 5px;
  outline: none;
  color: #9DBFAF;
}

.searchTerm:focus{
  color: #00B4CC;
}

.searchButton {
  width: 40px;
  height: 36px;
  border: 1px solid #00B4CC;
  background: #00B4CC;
  text-align: center;
  color: #fff;
  border-radius: 0 5px 5px 0;
  cursor: pointer;
  font-size: 20px;
}

/*Resize the wrap to see the search bar change!*/
.wrap{
  width: 30%;
  position: absolute;
  top: 30%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.bookimage{
	width: 100px;
	height: 100px;
}


.login {
  text-align : right;
}

</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	
	
<div class='login'>
<form action="login.jsp" method="post">
<input type="submit" value="�α���" >
<input type="button" value="ȸ������">
<input type="button" value="��ٱ���">
</form>
</div>

<div class='title'>
<h1>�����ڼ�</h1>
</div>



<div class="wrap">
   <div class="search">
      <input type="text" class="searchTerm" placeholder="���ϴ� ���� �˻�">
      <button type="submit" class="searchButton" >
        <i class="fa fa-search"></i>
     </button>
   </div>
</div>
<br>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
.wrapper {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-gap: 10px;
  grid-auto-rows: minmax(100px, auto);
}
.one {
  grid-column: 1 / 3;
  grid-row: 1;
}
.two {
  grid-column: 2 / 4;
  grid-row: 1 / 3;
}
.three {
  grid-column: 1;
  grid-row: 2 / 5;
}
.four {
  grid-column: 3;
  grid-row: 3;
}
.five {
  grid-column: 2;
  grid-row: 4;
}
.six {
  grid-column: 3;
  grid-row: 4;
}

.title{
    text-align : center;
	font-size: 30px;
}

.search {
	position: absolute; 
  left: 50%; 
  transform: translateX(-50%);
  width: 300px;
  border: 1px solid #bbb;
  border-radius: 8px;
  padding: 10px 12px;
  font-size: 14px;
  outline: none;
  
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
	

<div class='title'>
<h1>제목</h1>
</div>

<div class="search">
  <input type="text" placeholder="검색어 입력">
</div>
<br>

<div class='login'>
<form action="login.jsp" method="post">
<input type="text" name="id" placeholder="아이디"  ><br>
<input type="password" name="password" placeholder="비밀번호" ><br>
<input type="submit" value="로그인" >
<input type="button" value="회원가입">
</form>
</div>

<div class="container">
  <div class="header">
  </div>
    <div class="contents">
      <div class="box"></div>
      <div class="box"></div>
      <div class="box"></div>
    </div>
  </div>
  <div class="footer">
  </div>
</div>


<div class="wrapper">
  <div class="one"></div>
  <div class="two">Two</div>
  <div class="three">Three</div>
  <div class="four">Four</div>
  <div class="five">Five</div>
  <div class="six"><img src="./image/book/test.jpg" class=bookimage></div>
</div>

</body>
</html>
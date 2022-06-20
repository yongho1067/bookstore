<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<style>
.title {
	text-align: center;
	font-size: 30px;
}

.login {
	position: relative;
	left: 80%;
	color: #fff;
	height: 25px;
	border: 1px solid #00B4CC;
	background: #00B4CC;
	color: #fff;
	border-radius: 0 5px 5px 0;
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

.searchTerm:focus {
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
.wrap {
	width: 30%;
	position: absolute;
	top: 30%;
	left: 50%;
	transform: translate(-50%, -50%);
}

@import
	url('https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500');

* {
	padding: 0;
	margin: 0;
	list-style: none;
	text-decoration: none;
}

body {
	font-family: 'Roboto', sans-serif;
}

.sidebar {
	position: fixed;
	left: -250px;
	width: 250px;
	height: 100%;
	background: #042331;
	transition: all .5s ease;
}

.sidebar header {
	font-size: 22px;
	color: white;
	line-height: 70px;
	text-align: center;
	background: #063146;
	user-select: none;
}

.sidebar ul a {
	display: block;
	height: 100%;
	width: 100%;
	line-height: 65px;
	font-size: 20px;
	color: white;
	padding-left: 40px;
	box-sizing: border-box;
	border-bottom: 1px solid black;
	border-top: 1px solid rgba(255, 255, 255, .1);
	transition: .4s;
}

ul li:hover a {
	padding-left: 50px;
}

.sidebar ul a i {
	margin-right: 16px;
}

#check {
	display: none;
}

label #btn, label #cancel {
	position: absolute;
	background: #042331;
	border-radius: 3px;
	cursor: pointer;
}

label #btn {
	left: 40px;
	top: 25px;
	font-size: 35px;
	color: white;
	padding: 6px 12px;
	transition: all .5s;
}

label #cancel {
	z-index: 1111;
	left: -195px;
	top: 17px;
	font-size: 30px;
	color: #0a5275;
	padding: 4px 9px;
	transition: all .5s ease;
}

#check:checked ~ .sidebar {
	left: 0;
}

#check:checked ~ label #btn {
	left: 250px;
	opacity: 0;
	pointer-events: none;
}

#check:checked ~ label #cancel {
	left: 195px;
}

#check:checked ~ section {
	margin-left: 250px;
}

.favoritebook {
	position: fixed;
	left: 30%;
	top: 50%
}

.goodbook {
	position: fixed;
	left: 30%;
	top: 70%
}

.book1 {
	position: fixed;
	left: 60%;
	top: 50%;
	text-ailgn: center;
}

.bookimage {
	width: 100px;
	height: 100px;
}
</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>



	<div class='logintop'>

		<input type="button" class='login' value="로그인"> <input
			type="button" class='login' value="회원가입"> <input
			type="button" class='login' value="장바구니">
	</div>

	<div class='title'>
		<h1>북쳐핸섭</h1>
	</div>



	<div class="wrap">
		<div class="search">
			<input type="text" class="searchTerm" placeholder="원하는 도서 검색">
			<button type="submit" class="searchButton">
				<i class="fa fa-search"></i>
			</button>
		</div>
	</div>
	<br>

	<input type="checkbox" id="check">
	<label for="check"> <i class="fas fa-bars" id="btn"></i> <i
		class="fas fa-times" id="cancel"></i>
	</label>
	<div class="sidebar">
		<header>도서</header>
		<ul>
			<li><a href="#"><i class="fas fa-stream"></i>Dashboard</a></li>
			<li><a href="#"><i class="fas fa-stream"></i>Shortcuts</a></li>
			<li><a href="#"><i class="fas fa-stream"></i>Overview</a></li>
			<li><a href="#"><i class="fas fa-stream"></i>Events</a></li>
			<li><a href="#"><i class="fas fa-stream"></i>About</a></li>
			<li><a href="#"><i class="fas fa-stream"></i>Services</a></li>
			<li><a href="#"><i class="fas fa-stream"></i>Contact</a></li>
		</ul>
	</div>
	<div class="favoritebook">
		<h2>인기 도서</h2>
		<ol>
			<li>1.<a href="#">Dashboard</a></li>
			<li>2.<a href="#">Dashboard</a></li>
			<li>3.<a href="#">Dashboard</a></li>
		</ol>
	</div>


	<div class="goodbook">
		<h2>평점 상위 도서</h2>
		<ol>
			<li>1.<a href="#">Dashboard1</a></li>
			<li>2.<a href="#">Dashboard</a></li>
			<li>3.<a href="#">Dashboard</a></li>
		</ol>
	</div>


	<div class="book1">
		<img src="./image/book/test.jpg" class="bookimage"> <br>
		<h6>책이름1</h6>
		<img src="./image/book/test.jpg" class="bookimage">
		<h6>책이름</h6>

		<img src="./image/book/test.jpg" class="bookimage"> <br>
		<h6>책이름2</h6>
		<img src="./image/book/test.jpg" class="bookimage">
		<h6>책이름</h6>

		<img src="./image/book/test.jpg" class="bookimage"> <br>
		<h6>책이름3</h6>
		<img src="./image/book/test.jpg" class="bookimage">
		<h6>책이름</h6>
	</div>
</body>
</html>
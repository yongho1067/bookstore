<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>

<%!// 변수 선언
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String uid = "c##book";
	String pwd = "1234";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	%>
	
<!DOCTYPE html>
<html>
<head>




<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="/bookstore/css/main.css">


<style>


=======
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<style>


.title{
    text-align : center;
	font-size: 30px;
}

.login{
  position: relative;
  left : 80%;
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

@import url('https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500');
*{
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
.sidebar ul a{
  display: block;
  height: 100%;
  width: 100%;
  line-height: 65px;
  font-size: 20px;
  color: white;
  padding-left: 40px;
  box-sizing: border-box;
  border-bottom: 1px solid black;
  border-top: 1px solid rgba(255,255,255,.1);
  transition: .4s;
}
ul li:hover a{
  padding-left: 50px;
}
.sidebar ul a i{
  margin-right: 16px;
}
#check{
  display: none;
}
label #btn,label #cancel{
  position: absolute;
  background: #042331;
  border-radius: 3px;
  cursor: pointer;
}
label #btn{
  left: 40px;
  top: 25px;
  font-size: 35px;
  color: white;
  padding: 6px 12px;
  transition: all .5s;
}
label #cancel{
  z-index: 1111;
  left: -195px;
  top: 17px;
  font-size: 30px;
  color: #0a5275;
  padding: 4px 9px;
  transition: all .5s ease;
}
#check:checked ~ .sidebar{
  left: 0;
}
#check:checked ~ label #btn{
  left: 250px;
  opacity: 0;
  pointer-events: none;
}
#check:checked ~ label #cancel{
  left: 195px;
}
#check:checked ~ section{
  margin-left: 250px;
}




.favoritebook{
  position: fixed;
  left : 30%;
  top: 50%
}

.goodbook{
  position: fixed;
  left : 30%;
  top: 70%
}

.book1{
  position: fixed;
  left : 60%;
  top: 50%;
  text-ailgn: center;
}
.bookimage{
	width: 100px;
	height: 100px;
}

>>>>>>> c7f90332374342390de20458a486482cc3dffe13
</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<<<<<<< HEAD


	<header>
<%@include file="/header.jsp" %> <!-- 헤더 로그인 -->

</header>

<div class='title'>	<!-- 제목 -->
<h1>북쳐핸섭</h1>
<button type="button" onclick = "location.href = 'BookInfo.jsp' " ></button>

</div>


<form action="booksearch.do" method="post">
<div class="wrap">	<!-- 검색창 -->
   <div class="search">
      <input type="text" class="searchTerm" placeholder="원하는 도서 검색" name="keyword">
      <button type="submit" class="searchButton"  >
=======
	
	
	
<div class='logintop'>

<input type="button" class='login' value="�α���" >
<input type="button" class='login' value="ȸ������">
<input type="button" class='login' value="��ٱ���">
</div>

<div class='title'>
<h1>�����ڼ�</h1>
</div>



<div class="wrap">
   <div class="search">
      <input type="text" class="searchTerm" placeholder="���ϴ� ���� �˻�">
      <button type="submit" class="searchButton" >
>>>>>>> c7f90332374342390de20458a486482cc3dffe13
        <i class="fa fa-search"></i>
     </button>
   </div>
</div>
<<<<<<< HEAD
</form>
<br>

<%@include file="/sidebar.jsp" %> <!-- 사이드바 -->


   
<div class="goodbook">
<%
String sql = "SELECT rownum, a.*  FROM (select * from book_table order by bo_grade desc ) a where rownum<=3";
		try {
		// 데이터베이스를 접속하기 위한 드라이버 SW 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 데이터베이스에 연결하는 작업 수행
		conn = DriverManager.getConnection(url, uid, pwd);
		// 쿼리를 생성gkf 객체 생성
		stmt = conn.createStatement();
		// 쿼리 생성
		rs = stmt.executeQuery(sql);
	%>
	<table class="styled-table">
		<thead>
        <tr>
            <th>평점 순위</th>
            <th>책 이름	</th>
        </tr>
    </thead>
		<%
			while (rs.next()) {
		%>
	<tbody>
        <tr>
            <td><%=rs.getString("rownum")%></td>
			<td><a href="getBookInfo.do?id=<%=rs.getString("bo_id")%>"><%=rs.getString("bo_name")%></a></td>
        </tr>
    </tbody>
		<%  
			}
		} catch (Exception e) {
		e.printStackTrace();
		} finally {
		try {
		if (rs != null) {
			rs.close();
		}
		if (stmt != null) {
			stmt.close();
		}
		if (conn != null) {
			conn.close();
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		}
		%>
		</table>
  </div>
   
     <div class="favoritebook">
    <table class="styled-table"> 
    <thead>
        <tr>
            <th>인기 순위</th>
            <th>이름</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td><a href="#">책이름</a></td>
        </tr>
        <tr>
            <td>2</td>
            <td><a href="#">책이름</a></td>
        </tr>
         <tr>
            <td>3</td>
            <td><a href="#">책이름</a></td>
        </tr>
    
    </tbody>
</table>
</div>

   
    
    

    <div class="book1">	<!-- 추천도서 -->
    <table class="bookstyle">
    <thead>
        <tr>
            <th colspan="3">추천 도서</th>
        </tr>
    </thead>
    <tbody>
    <tr>
            <td><a href="getBookInfo.do?id=1"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
            <td><a href="getBookInfo.do?id=2"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
            <td><a href="getBookInfo.do?id=3"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
   </tr>
    <tr>
            <td><a href="getBookInfo.do?id=${vo1.id }">${vo1.name }</a>	</td>
            <td><a href="getBookInfo.do?id=${vo1.id }">${vo1.name }</a>	</td>
 			<td><a href="getBookInfo.do?id=${vo1.id }">${vo1.name }</a>	</td>   
   </tr>
   <tr>
            <td><a href="getBookInfo.do?id=4"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
            <td><a href="getBookInfo.do?id=5"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
             <td><a href="getBookInfo.do?id=6"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
   </tr>
    <tr>
            <td><a href="getBookInfo.do?id=${vo1.id }">${vo1.name }</a>	</td>
            <td><a href="getBookInfo.do?id=${vo1.id }">${vo1.name }</a>	</td>
 			<td><a href="getBookInfo.do?id=${vo1.id }">${vo1.name }</a>	</td> 
   </tr>
    </tbody>
	</table>
    </div>

    


	<%@include file="/footer.jsp" %> <!-- 헤더 로그인 -->

=======
<br>

<input type="checkbox" id="check">
    <label for="check">
      <i class="fas fa-bars" id="btn"></i>
      <i class="fas fa-times" id="cancel"></i>
    </label>
    <div class="sidebar">
    <header>����</header>
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
   <h2>�α� ����</h2>
   <ol>
     <li>1.<a href="#">Dashboard</a></li>
     <li>2.<a href="#">Dashboard</a></li>
     <li>3.<a href="#">Dashboard</a></li>
    </ol>
    </div>
    
    
    <div class="goodbook">
     <h2>���� ���� ����</h2>
   <ol>
     <li>1.<a href="#">Dashboard1</a></li>
     <li>2.<a href="#">Dashboard</a></li>
     <li>3.<a href="#">Dashboard</a></li>
    </ol>
    </div>
    
    
    <div class="book1">
    <img src="./image/book/test.jpg" class="bookimage">
    <br>
    <h6>å�̸�1</h6>
    <img src="./image/book/test.jpg" class="bookimage">
    <h6>å�̸�</h6>
    
    <img src="./image/book/test.jpg" class="bookimage">
    <br>
    <h6>å�̸�2</h6>
    <img src="./image/book/test.jpg" class="bookimage">
    <h6>å�̸�</h6>
  
    <img src="./image/book/test.jpg" class="bookimage">
    <br>
    <h6>å�̸�3</h6>
    <img src="./image/book/test.jpg" class="bookimage">
    <h6>å�̸�</h6>
    </div>
>>>>>>> c7f90332374342390de20458a486482cc3dffe13
</body>
</html>
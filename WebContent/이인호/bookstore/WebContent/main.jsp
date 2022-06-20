<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="/bookstore/css/boolist.css">



<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="/bookstore/css/main.css">


<style>


</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


	
<%@include file="/header.jsp" %>


<div class='title'>
<h1>�����ڼ�</h1>
</div>



<div class="wrap">
   <div class="search">
      <input type="text" class="searchTerm" placeholder="���ϴ� ���� �˻�">
      <button type="submit" class="searchButton" onclick = "location.href = '#' " >
        <i class="fa fa-search"></i>
     </button>
   </div>
</div>

<br>

<input type="checkbox" id="check">
    <label for="check">
      <i class="fas fa-bars" id="btn"></i>
      <i class="fas fa-times" id="cancel"></i>
    </label>
    <div class="sidebar">
    <header>����</header>
    <ul>
     <li><a href="getBookListInfo.do?janre=��ǻ��"><i class="fas fa-stream"></i>computer</a></li>
     <li><a href="getBookListInfo.do"><i class="fas fa-stream"></i>History</a></li>
     <li><a href="getBookListInfo.do"><i class="fas fa-stream"></i>Novel</a></li>
     <li><a href="getBookListInfo.do"><i class="fas fa-stream"></i>Science</a></li>
     <li><a href="getBookListInfo.do"><i class="fas fa-stream"></i>About</a></li>
     <li><a href="getBookListInfo.do"><i class="fas fa-stream"></i>Services</a></li>
     <li><a href="ggetBookListInfo.do"><i class="fas fa-stream"></i>Contact</a></li>
    </ul>
   </div>
   <div class="favoritebook">
    
    <table class="styled-table">
    <thead>
        <tr>
            <th>�α� ����</th>
            <th>�̸�</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td><a href="#">å�̸�</a></td>
        </tr>
        <tr>
            <td>2</td>
            <td><a href="#">å�̸�</a></td>
        </tr>
         <tr>
            <td>3</td>
            <td><a href="#">å�̸�</a></td>
        </tr>
        <!-- and so on... -->
    </tbody>
</table>
</div>
    
    
    <div class="goodbook">
    
    <table class="styled-table">
    <thead>
        <tr>
            <th>���� ����</th>
            <th>�̸�	</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td><a href="#">å�̸�</a></td>
        </tr>
        <tr>
            <td>2</td>
            <td><a href="#">å�̸�</a></td>
        </tr>
         <tr>
            <td>3</td>
            <td><a href="#">å�̸�</a></td>
        </tr>
        <!-- and so on... -->
    </tbody>
</table>
</div>
    

    <div class="book1">
    <table class="bookstyle">
    <thead>
        <tr>
            <th colspan="3">��õ ����</th>
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

    
<form action="getBookAllInfo.do" method="get">
<input type="submit" value="��κ���">
</form>

	<table border="1">
		<tr><td>���̵�</td><td>�̸�</td><td>��ȭ��ȣ</td></tr>
		<c:forEach var="vo1" items="${alist1 }">
         <tr>
            <td>${vo1.id }</td>
            <td><a href="getBookInfo.do?id=${vo1.id }">${vo1.name }</a>
            <!-- ��ü�����ϸ鼭 ����/������ �غ� -->
            <td>${vo1.cc }</td>
            <td>${vo1.janre }</td>
         </tr>
      </c:forEach>
	</table>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
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
	
	
	
<div class='logintop'>


<input type="button" class='login' value="�α׾ƿ�" onclick="location.href='http://google.com';">
<input type="button" class='login' value="����������" onclick = "location.href = '#' ">
<input type="button" class='login' value="��ٱ���" onclick = "location.href = '#' ">
</div>

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
            <td><a href="#"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
            <td><a href="#"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
            <td><a href="#"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
   </tr>
    <tr>
            <td>å�̸�	</td>
            <td>å�̸�	</td>
 			<td>å�̸�	</td>   
   </tr>
   <tr>
            <td><a href="#"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
            <td><a href="#"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
            <td><a href="#"><img src="./image/book/test.jpg" class="bookimage"></a>	</td>
   </tr>
    <tr>
            <td>å�̸�	</td>
            <td>å�̸�	</td>
 			<td>å�̸�	</td>   
   </tr>
    </tbody>
	</table>
    </div>
</body>
</html>
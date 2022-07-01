<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>북쳐핸썹_admin도서관리 > 수정</title>
<style>
#title { width: 300px; }

#publisher { width: 300px; }

#category { text-align: center; }

#price { width: 80px; text-align: center; }

#amount { width: 80px; text-align: center; }


body {background-color: HoneyDew;}
 
 * {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    
    
}

.buttons {
    text-align: center;
    list-style-type:none;
	background-color: HoneyDew;
	width:30%;
	padding:0;
	margin:0;
	position:fixed;
	height:100%;
	overflow:auto;
   
}

.btn-hover {
    width: 200px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    margin: 20px;
    height: 55px;
    text-align:center;
    border: none;
    background-size: 300% 100%;

    border-radius: 50px;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:hover {
    background-position: 100% 0;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:focus {
    outline: none;
}

.btn-hover.color-1 {
    background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
    box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
}
.btn-hover.color-2 {
    background-image: linear-gradient(to right, #f5ce62, #e43603, #fa7199, #e85a19);
    box-shadow: 0 4px 15px 0 rgba(229, 66, 10, 0.75);
}
.btn-hover.color-3 {
    background-image: linear-gradient(to right, #667eea, #764ba2, #6B8DD6, #8E37D7);
    box-shadow: 0 4px 15px 0 rgba(116, 79, 168, 0.75);
}
.btn-hover.color-4 {
    background-image: linear-gradient(to right, #fc6076, #ff9a44, #ef9d43, #e75516);
    box-shadow: 0 4px 15px 0 rgba(252, 104, 110, 0.75);
}
.btn-hover.color-5 {
    background-image: linear-gradient(to right, #0ba360, #3cba92, #30dd8a, #2bb673);
    box-shadow: 0 4px 15px 0 rgba(23, 168, 108, 0.75);
}
.btn-hover.color-6 {
    background-image: linear-gradient(to right, #fc6076, #3cba92, #ef9d43, #e85a19);
    box-shadow: 0 4px 15px 0 rgba(212, 134, 105, 0.75);
}

/* 하단 버튼 집합 div */
.actionbtn {
	margin: 40px 0;
	text-align: right;
}

/* 하단 버튼 */
 .actionbtn [type=button] {
	width: 150px;
	height: 60px;
	font-size: 1.2em;
	margin-right: 50px;
} 





textarea {
    width: 50%;
    height: 10em;
    border: none;
    resize: none;
  }

</style>
</head>
<body>
	<div class="buttons">
    <button class="btn-hover color-1" onclick="location.href='BookAdd.jsp'">도서추가</button>
    <button class="btn-hover color-2" onclick="location.href='BookUpdate.jsp'">도서수정</button>
    <button class="btn-hover color-3" onclick="location.href='BookDelete.jsp'">도서삭제</button>
    <button class="btn-hover color-4" onclick="location.href='getBookList.jsp'">도서목록</button>
    <button class="btn-hover color-5" onclick="location.href='BookOrder.jsp'">주문관리</button>
    <button class="btn-hover color-6" onclick="location.href='BookInfo.jsp'">회원관리</button>
   
</div>
<form method="post" action="bookupdateok.do">
		<div style="margin-left:30%; padding:1px 16px; height:800px;">
		<h4>도서관리 > 수정</h4>

	
		
	
			<div class="form">
		    	<label class="title">도서명</label><br>
		    	<input type="text" id="title" name="title" placeholder="도서명을 입력해주세요." maxlength=50 required>
		  	</div>
		  	
			<div class="form">
		    	<label class="publisher">출판사</label><br>
		    	<input type="text" id="publisher" name="publisher" placeholder="출판사를 입력해주세요." maxlength=20 required>
		  	</div>
		  		  
		  	<div class="form">
		    	<label class="category">카테고리</label><br>
		    	<select id="category" name="category" size="1" >
		    		<option value="국내서적" selected>국내서적</option>
		    		<option value="해외서적">해외서적</option>
		    		
		    	</select>
		  	</div><br><br>
		  	
		  	<div class="form">
		  		<label class="price">정가 (단위 : 원)</label><br>
		  		<input type="text" id="price" name="price" value="0" maxlength=20 required>
		  	</div>
		  	
		  	<div class="form">
		  		<label class="amount">수량</label><br>
		  		<input type="number" id="amount" name="amount" min="0" max="100" value="0" required>
		  	</div><br>
		  	
		  	<div>
		  		<label class="bookintro">도서정보</label><br>
		  		<textarea id="bookintro" name="summary" placeholder="도서내용을 입력해주세요." rows="10" maxlength="1500" required></textarea>
		  	</div><br>
		  	
		  <div class="form">
		  		<label style="display: block;">이미지</label>
		  		<label for="image" class="btn-info">이미지 선택</label>
		  		<input type="file" id="image" name="image" style="display: none;">
		  		<input type="text" class="form-control" id="imagename" placeholder="파일 선택" readonly>
		  		<input type="button" class="btn-warning" value="미리보기" id="btnpreviewimage">
				<p class="help-block">※하나의 이미지만 등록 가능합니다. (등록 가능한 이미지 확장자 : <mark>png</mark>, <mark>jpg</mark>, <mark>gif</mark>)</p>
		  	</div>
		  	
		  <div>
		  	<input type="button" class="btn-update" id="btnupdate" value="수정">
		  	<input type="button" value="취소">
		  	<input type="button" value="목록">
		  </div>
		  	
	</div>
	
	
</form>  
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>북쳐핸썹_admin > 개인정보수정</title>
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
    <button class="btn-hover color-1">개인정보수정</button>
    <button class="btn-hover color-2">주문내역</button>
    <button class="btn-hover color-3">회원탈퇴</button>
    
   
   
</div>
	
	<form action="infomationok.do" method="post">
		<div style="margin-left: 30%; padding: 1px 16px; height: 500px;">
			<h4>개인정보수정</h4>

			<div class="form">
				<label class="name">이름</label><br> 
				<input type="text" id="name" name="name" placeholder="이름을 입력해주세요." maxlength=50 required>
			</div>

			<div class="form">
				<label class="pw">생년월일</label><br> 
				<input type="text" id="text" name="text" placeholder="생년월일을 입력해주세요." maxlength=50 required>
			</div>
			
			<div class="form">
				<label class="email">이메일</label><br> 
				<input type="text" id="text" name="text" placeholder="이메일을 입력해주세요." maxlength=50 required>
			</div>
			
			<div class="form">
				<label class="phone">연락처</label><br> 
				<input type="number" id="number" name="number" placeholder="연락처를 입력해주세요." maxlength=50 required>
			</div>
			
			<div class="form">
				<label class="address">주소</label><br> 
				<input type="text" id="text" name="text" placeholder="주소를 입력해주세요." maxlength=50 required>
			</div><br><br>
			
			<input type="submit" value="수정">
			<input type="reset" value="취소">
		</div>

	</form>
	
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	font-size: 15pt;
}
* {
  box-sizing: border-box;
}

a[class*="btn"] {text-decoration: none;}

.btn-container, .container {
  background-color: white;
  border-radius: 4px;
  text-align: center;
  margin-bottom: 40px;
}

.btn-3d {
  position: relative;
  display: inline-block;
  font-size: 22px;
  padding: 20px 60px;
  color: white;
  margin: 20px 10px 10px;
  border-radius: 6px;
  text-align: center;
  transition: top .01s linear;
  text-shadow: 0 1px 0 rgba(0,0,0,0.15);
}
.btn-3d.cyan:hover   {background-color: #82D1E3;}

.btn-3d:active {
  top: 9px;
}

.btn-3d.cyan {
  background-color: #7fccde;
  box-shadow: 0 0 0 1px #7fccde inset,
        0 0 0 2px rgba(255,255,255,0.15) inset,
        0 8px 0 0 rgba(102, 164, 178, .6),
        0 8px 0 1px rgba(0,0,0,.4),
        0 8px 8px 1px rgba(0,0,0,0.5);
}
.btn-3d.cyan:active {
  box-shadow: 0 0 0 1px #7fccde inset,
        0 0 0 2px rgba(255,255,255,0.15) inset,
        0 0 0 1px rgba(0,0,0,0.4);
}

</style>
</head>
<body bgcolor="lightgray">

	
	<% int cnt = 0; %>
	<table align="center">	
	
	
		<tr>
			<form action="nonmemberjang.jsp">
			
			
				<td>
				
				
					<select name="book">
						<option value="AA">이상한 책</option>
						<option value="BB">멋있는 책</option>
					</select>
					<input type="text" name=cnt>개
					
					<input type="submit" value="장바구니에 담기" class="btn-3d cyan" onclick="장바구니에 추가 되었습니다.">
				
				</td>
			
			</form>
	
			
			<td><a href="memberjang.jsp" class="btn-3d cyan">회원 장바구니로 이동</a></td>
			<td><a href="nonmemberjang.jsp" class="btn-3d cyan">비회원 장바구니로 이동</a></td>
		</tr>
		
	</table>
	<%= cnt %>
	

<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>

<%



%>









	
<script type="text/javascript">
$('a').click(function(event){
    event.preventDefault(); 
  });
</script>	
	
	
	
</body>
</html>
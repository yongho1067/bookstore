<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 

<table border="1">
      <tr>
         <td colspan="4"> <!-- 일반 형태의 controller의 경우 -->
            <!-- <from action="Telallview" method="post"> -->
            <form action="getAllInfo.do"> <!-- front controller의 경우 -->
               <input type="submit" value="모두보기">
            </form>
         </td>
      </tr>
      
         <!-- 서브릿으로 갔다가 business logic 처리한 다음 다시 출발한 곳으로 온다 -->
         <!-- 이떄 갈때는 그냥 갔지만 올 때는 사원 명단이 들어있는 alist1과 함께 온다 -->
      <tr><td>사번</td><td>이름</td><td>전화번호</td><td>입사일</td>
         <!-- java의 for:(클론)과 같은 것 -->
         <!-- jstl이고 web-inf아래 lib방에 standard.jar jstl.jar가 있어야 한다 -->
      <c:forEach var="vo1" items="${alist1 }">
         <!-- request scope에 객체 전체를 ArrayList alist1에 저장 -->
         <tr>
            <td>${vo1.id }</td>
            <!-- <td>${vo1.name }</td> -->
            <td><a href="telSearchOne.do?name=${vo1.name }">${vo1.name }</a>
            <!-- 전체보기하면서 수정/삭제도 준비 -->
            <td>${vo1.tel }</td>
            <td>${vo1.d }</td>
         </tr>
      </c:forEach>
      
      <table border=0>
         <tr>
            <td><a href="sawonInsertForm.jsp">[입력]</a></td>
            <td><a href="sawonUpdateForm.jsp">[수정]</a></td>            
            <td><a href="getAllInfo.jsp">[모두보기]</a></td>
         </tr>
      </table>
      
   </table>
   

</body>
</html>
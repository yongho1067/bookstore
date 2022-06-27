<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

    <body>
        로그인 완료!
        <%
            request.setCharacterEncoding("UTF-8");
        
        String id;
        String name;
        String email;
        String bd;
        String phone;
        
        if(session.getAttribute("id") != null){
	        id = (String)session.getAttribute("id");
			name = (String)session.getAttribute("name");
			email = (String)session.getAttribute("email");
			bd = (String)session.getAttribute("bd");
			phone = (String)session.getAttribute("phone");
        }else{
            id = request.getParameter("id");
            email = request.getParameter("email");
            name = request.getParameter("name");
            bd = request.getParameter("bd");
            phone = request.getParameter("mobile");
        }
        %>

        <div>아이디 <%=id %></div>
        <div>이메일 <%=email %></div>
        <div>이름 <%=name %></div>
        <div>생일 <%=bd %></div>
        <div>전화번호 <%=phone %></div>


    </body>
</html>

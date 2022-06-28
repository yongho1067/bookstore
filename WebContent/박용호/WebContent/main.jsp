<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

    <body>
        로그인 완료!
        <%
        request.setCharacterEncoding("UTF-8");
        
        String mem_id = request.getParameter("mem_id");
        String mem_name = request.getParameter("mem_email");
        String mem_email = request.getParameter("mem_name");
        String mem_bd = request.getParameter("mem_bd");
        String mem_pn = request.getParameter("mem_pn");
        
        if(session.getAttribute("mem_id") != null){
        	mem_id = (String)session.getAttribute("mem_id");
        	mem_name = (String)session.getAttribute("mem_name");
        	mem_email = (String)session.getAttribute("mem_email");
        	mem_bd = (String)session.getAttribute("mem_bd");
        	mem_pn = (String)session.getAttribute("mem_pn");
        %>
        	<div>IF 아이디 <%=mem_id %></div>
            <div>이메일 <%=mem_email %></div>
            <div>이름 <%=mem_name %></div>
            <div>생일 <%=mem_bd %></div>
            <div>전화번호 <%=mem_pn %></div>
            
        <%
        }else{
        	session.setAttribute("mem_id", mem_id);
			session.setAttribute("mem_name", mem_name);
			session.setAttribute("mem_email", mem_email);
			session.setAttribute("mem_bd", mem_bd);
			session.setAttribute("mem_pn", mem_pn);
		%>
			<div>ELSE 아이디 <%=mem_id %></div>
            <div>이메일 <%=mem_email %></div>
            <div>이름 <%=mem_name %></div>
            <div>생일 <%=mem_bd %></div>
            <div>전화번호 <%=mem_pn %></div>
            
        <%
        }

        %>   
       	
       	<input type="button" value="로그아웃" onclick="location.href='logout.jsp'">


    </body>
</html>
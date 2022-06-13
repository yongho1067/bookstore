<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

    <body>
        로그인 완료!
        <%
            request.setCharacterEncoding("UTF-8");
            String email = request.getParameter("email");
            String name = request.getParameter("name");
            String profileImage = request.getParameter("profileImage");
            String birthday = request.getParameter("birthday");
            String uniqId = request.getParameter("uniqId");
            String age = request.getParameter("age");
            String mobile = request.getParameter("mobile");
            String birthYear = request.getParameter("birthYear");
            String nickName = request.getParameter("nickName");
            String gender = request.getParameter("gender");
        %>

        <div>이메일 <%=email %></div>
        <div>이름 <%=name %></div>
        <div>프로필 <%=profileImage %></div>
        <div>생일 <%=birthday %></div>
        <div>출생년도 <%=birthYear %></div>
        <div>uniqId <%=uniqId %></div>
        <div>연령대 <%=age %></div>
        <div>전화번호 <%=mobile %></div>
        <div>닉넴 <%=nickName %></div>
        <div>성별 <%=gender %></div>

    </body>
</html>

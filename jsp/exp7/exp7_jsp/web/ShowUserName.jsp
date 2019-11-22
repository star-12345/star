<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/11/10
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示名字</title>
</head>
<body>
    <%
      String username = request.getParameter("username");
      String password = request.getParameter("password");
    %>

    用户名：<%=username%><br/>
    密码：<%=password%>


</body>
</html>

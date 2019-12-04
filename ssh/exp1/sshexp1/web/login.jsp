<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/12/1
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面</title>
</head>
<body>

<form action="user.action" method="post">
    用户名：<input name="name" type="text" size="26">
    <br>
    密 码  ：<input name="password" type="password" size="26">
    <br>
    <input type="submit" value="登录"><br>
    <a href="register.jsp">注册</a>
</form>

</body>
</html>

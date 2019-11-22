<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/11/10
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>提交用户名</title>
</head>
<body>

<form action="NameServlet" method="post">
    用户名：<input type="text" name="username"><br/>
    密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="text" name="password"><br/>
    <input type="submit" value="登陆">
    <input type="reset" value="取消">

</form>

</body>
</html>

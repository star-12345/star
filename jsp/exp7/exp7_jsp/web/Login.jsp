<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/11/13
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>


    <form action="LoginServlet" method="post">
        用户名:<input type="text" name="username"/><br>
        密&nbsp;&nbsp;码：  <input type="password" name="password"/><br>
        <input type="submit" value="登陆"/>
    </form>



</body>
</html>

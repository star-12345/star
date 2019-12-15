<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/12/13
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>登录界面</title>
</head>
<body>
<s:form action="logmethod" method="post" name="loginForm">
    <s:textfield name="username" label="用户名"></s:textfield>
    <s:password name="password" label="密码"></s:password>
    <s:submit value="登录"></s:submit><br>
    <a href="registerme.jsp">注册</a>
</s:form>

</body>
</html>

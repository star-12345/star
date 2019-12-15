<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/12/6
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>登录界面</title>
</head>
<body>

    <s:form action="login.action" method="post">
        <!--输入用户名标签 -->
        <s:textfield name="username" label="用户名"/> <br>
        <s:password name="password" label="用户密码"/><br>
        <s:submit value="登录"/>
    </s:form>

</body>
</html>

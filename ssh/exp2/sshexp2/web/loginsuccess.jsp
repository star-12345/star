<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/12/14
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>国际化登录成功</title>
</head>
<body>
    <s:text name="loginName"/><s:property value="userName"/><br>
    <s:text name="loginPassword"/><s:property value="userPassword"/>
</body>
</html>

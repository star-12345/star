<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/12/14
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>校验器注册成功页面</title>
</head>
<body>
校验通过，用户信息如下：
<hr>
姓名：<s:property value="userName"/><br>
密码：<s:property value="userPassword"/><br>
年龄：<s:property value="userAge"/></br>
电话：<s:property value="userTelphone"/><br>
邮箱：<s:property value="userEmail"/>

</body>
</html>

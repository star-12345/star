<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/12/13
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<h2>用户注册</h2>
<s:form action="regimethod" method="post">
    <s:textfield name="username" label="用户名"></s:textfield>
    <s:password name="password" label="密码"></s:password>
    <s:textfield name="age" label="年龄"></s:textfield>
    <s:radio name="sex" label="性别" list="{'男','女' }"  value="男"></s:radio>
    <s:submit value="注册"></s:submit>
</s:form>

</body>
</html>

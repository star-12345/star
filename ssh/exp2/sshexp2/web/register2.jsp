<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/12/14
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
请输入注册信息：
<s:form action="register2" method="post">
    <table border="1">
        <tr>
            <td><s:textfield name="userName" label="姓名" size="16"></s:textfield></td>
        </tr>
        <tr>
            <td><s:password name="userPassword" label="密码" size="18"></s:password></td>
        </tr>
        <tr>
            <td><s:password name="ruserPassword" label="再次输入密码" size="18"></s:password></td>
        </tr>
        <tr>
            <td><s:textfield name="userAge" label="年龄" size="16"></s:textfield></td>
        </tr>
        <tr>
            <td><s:textfield name="userTelphone" label="电话" size="16"></s:textfield></td>
        </tr>
        <tr>
            <td><s:textfield name="userEmail" label="邮箱" size="16"></s:textfield></td>
        </tr>
        <tr>
            <td><s:submit value="提交"></s:submit>
        </tr>
    </table>
</s:form>

</body>
</html>

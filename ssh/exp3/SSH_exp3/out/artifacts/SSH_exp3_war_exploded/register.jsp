<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/12/17
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib  prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>注册页面</title>
</head>
<body>

<s:form action="register" method="post">

    <table border="1" align="center" >
        <tr>
            <td>
                <s:textfield name="userName" label="用户名字" size="16"/>
            </td>
        </tr>
    <tr>
    <td>
    <s:password name="password1" label="用户密码" size="18"/>
    </td>
    </tr>
        <tr>
            <td>
                <s:password name="password2" label="再次输入密码" size="18"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="提交"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="清空"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <s:a href="http://localhost:8084/login.jsp">返回</s:a>
            </td>
        </tr>
    </table>
</s:form>


</body>
</html>

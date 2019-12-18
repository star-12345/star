<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/12/17
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib  prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>登录界面</title>
</head>
<body>

<s:form action="login" method="post">

    <table border="1" align="center" >
        <tr>
            <td>
                <s:textfield name="userName" label="用户名字"  size="16"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:password name="password" label="用户密码"  size="18"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <s:submit value="登录"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <s:a href="http://localhost:8080/register.jsp">注册</s:a>
            </td>
        </tr>
    </table>
</s:form>


</body>
</html>

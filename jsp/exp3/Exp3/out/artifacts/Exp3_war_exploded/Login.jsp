<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/9/25
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session会话存放内容</title>
</head>
<body>

    <%
      session.setAttribute("username","jake");
      session.setAttribute("password","123");
    %>

    <form action="/LoginSuccess.jsp" method="post">
        <h1 align="center">欢迎登陆</h1>
        <table  border="1" align="center" >
            <tr>
                <td>
                    用户名：
                </td>
                <td>
                    <input type="text" name="username" value=<%=(String)session.getAttribute("username") %> />
                </td>
            </tr>
            <tr>
                <td>
                    密码：
                </td>
                <td>
                    <input type="password" name="password" value=<%=(String)session.getAttribute("password") %> />
                </td>
            </tr>
            <tr align="center">
                <td colspan="2" >
                    <input type="submit" value=" 登    录 " >
                </td>
            </tr>
        </table>
    </form>

</body>
</html>

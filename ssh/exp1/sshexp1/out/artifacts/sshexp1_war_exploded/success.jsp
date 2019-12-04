<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/11/29
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<!--成功访问UserAction返回success.jsp结果！-->
<%String username = request.getParameter("name");%>

 <%=username%>登录成功！

</body>
</html>

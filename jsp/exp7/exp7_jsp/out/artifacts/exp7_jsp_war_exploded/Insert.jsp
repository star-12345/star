<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/11/15
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加员工</title>
</head>
<body>

    <form action="InsertServlet">
        名字：<input type="text" name="name"><br/>
        年龄：<input type="text" name="age"><br/>
        学历：<input type="text" name="education"><br/>
        &nbsp;&nbsp;<input type="submit" value="提交">

    </form>

</body>
</html>

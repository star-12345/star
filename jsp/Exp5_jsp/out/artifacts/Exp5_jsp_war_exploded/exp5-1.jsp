<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/10/11
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--<jsp:forward page="exp5-1-2.jsp">--%>
    <%--<jsp:param name="color" value="#0f0"/>--%>
    <%--<jsp:param name="border" value="2"/>--%>
    <%--<jsp:param name="width" value="200"/>--%>
<%--</jsp:forward>--%>

   <form action="exp5-1-2.jsp" method="post">
       颜&nbsp;&nbsp;色：<input type="text" name="color"><br>
       字&nbsp;&nbsp;体：<input type="text" name="font"><br>
       表格宽度:<input type="text" name="width"><br>
       边&nbsp;&nbsp;框：<input type="text" name="border"><br>
       <input type="submit" value="确认">
   </form>

</body>
</html>

<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/10/11
  Time: 23:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
       Map<String,String> map = new HashMap<String,String>();
       map.put("百度","http://www.baidu.com/");
       map.put("雅虎","http://cn.yahoo.com/");
       map.put("谷歌","http://www.google.com/");
       request.setAttribute("maps",map);
    %>
    <c:forEach items="${maps}" var="item">

        <table border="1" width="400">
            <tr>
                <td>${item.key}</td>
                <td>${item.value}</td>
            </tr>

        </table>
    </c:forEach>




</body>
</html>

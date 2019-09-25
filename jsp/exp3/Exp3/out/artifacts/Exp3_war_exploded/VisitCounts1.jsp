<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/9/25
  Time: 20:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>浏览器访问次数</title>
</head>
<body>
<%
    if(request.getAttribute("counter") == null){
        request.setAttribute("counter", "1");
    }else{
        String strnum = "";
        strnum = request.getAttribute("counter").toString();
        int icount = 0;
        icount = Integer.valueOf(strnum).intValue();
        icount++;
        request.setAttribute("counter", Integer.toString(icount));
    }

%>
您是第<%=request.getAttribute("counter") %>位访问者！浏览器访问次数

</body>
</html>

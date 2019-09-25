<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/9/25
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>applicaton对象访问统计</title>
</head>
<body>
<%
    if(application.getAttribute("counter") == null){
        application.setAttribute("counter", "1");
    }else{
        String strnum = "";
        strnum = application.getAttribute("counter").toString();
        int icount = 0;
        icount = Integer.valueOf(strnum).intValue();
        icount++;
        application.setAttribute("counter", Integer.toString(icount));
    }

%>
您是第<%=application.getAttribute("counter") %>位访问者！刷新一次，算一次访问。


</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/9/25
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>显示会话内容</title>
</head>
<body>

     <%
       String name = (String) session.getAttribute("username");
       String password = (String)session.getAttribute("password");
       session.setMaxInactiveInterval(10);//设置会话有效期10秒
     %>
     用户登录成功!
     <br>
     您的用户名是:<%=name%>
     您的密码是:<%=password%>
     <%System.out.println("请求使用的协议:"+request.getProtocol());
         System.out.println("请求的URI："+request.getServletPath());
         System.out.println("请求方法："+request.getMethod());
         System.out.println("远程地址："+request.getRemoteAddr());
     %>





</body>
</html>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %><%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/10/12
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>连接数据库</title>
</head>
<body>
    <%
        try{
            Class.forName("com.mysql.jdbc.Driver");//记载数据库驱动，注册到驱动管理器
            String url = "jdbc:mysql://localhost:3306/book";
            String username = "root";
            String password = "123456";
            Connection connection = DriverManager.getConnection(url,username,password);
            if(connection!=null){
                out.println("数据库连接成功");
            }else{
                out.println("数据库连接失败");
            }
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }

    %>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/10/25
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
<head>
    <title>删除用户</title>
</head>
<body>
    <sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost/book" user="root" password="123456"/>

    <sql:update var="con" dataSource="${connection}">
        delete from employees where id>6;
    </sql:update>


    <sql:query var="result" dataSource="${connection}" >
        select * from employees;
    </sql:query>

    <table border="1">
        <tr>
            <td>编号</td>
            <td>名字</td>
            <td>年龄</td>
            <td>学历</td>
            <td>地址</td>
            <td>收入</td>
        </tr>

        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.id}"/></td>
                <td><c:out value="${row.name}"/></td>
                <td><c:out value="${row.age}"/></td>
                <td><c:out value="${row.education}"/></td>
                <td><c:out value="${row.address}"/></td>
                <td><c:out value="${row.salary}"/></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>

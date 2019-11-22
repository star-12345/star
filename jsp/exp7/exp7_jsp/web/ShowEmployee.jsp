<%@ page import="cn.cslg.model.*" import="cn.cslg.dao.*"%>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/11/14
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>显示员工</title>
</head>
<body>

    <%
        List<EmployeeBean>  employeeList = (List<EmployeeBean>) request.getAttribute("employeeList");
    %>

    <p align="center">员工信息表<a href="Insert.jsp">添加员工</a> </p>

    <table align="center" border="1">
        <tr>
            <th>编号</th>
            <th>名字</th>
            <th>年龄</th>
            <th>学历</th>

            <th colspan="2" align="center">操作</th>
        </tr>

        <%
            for(EmployeeBean employeeBean :employeeList){
        %>
        <tr>
            <td><%out.println(employeeBean.getId());%></td>
            <td><%out.println(employeeBean.getName());%></td>
            <td><%out.println(employeeBean.getAge());%></td>
            <td><%out.println(employeeBean.getEducation());%></td>

            <td><a href="${pageContext.request.contextPath}/edit?id=<%=employeeBean.getId()%>"
                   onclick="return confirm('确定要编辑吗?')">编辑</a></td>
            <td><a href="${pageContext.request.contextPath}/DeleteServlet?id=<%=employeeBean.getId()%>"
                   onclick="return confirm('确定要删除吗?')">删除</a></td>
        </tr>


            <%
            }
            %>





        <%--<c:forEach items="${employeeList}" var="row">--%>
            <%--<tr>--%>
                <%--<td><c:out value="${row.id}"/></td>--%>
                <%--<td><c:out value="${row.name}"/></td>--%>
                <%--<td><c:out value="${row.age}"/></td>--%>
                <%--<td><c:out value="${row.education}"/></td>--%>
                <%--<td><c:out value="${row.address}"/></td>--%>
                <%--<td><c:out value="${row.salary}"/></td>--%>
            <%--</tr>--%>

        <%--</c:forEach>--%>
    </table>


</body>
</html>

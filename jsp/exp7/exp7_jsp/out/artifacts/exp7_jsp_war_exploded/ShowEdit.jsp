<%@ page import="cn.cslg.model.EmployeeBean" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/11/14
  Time: 23:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改</title>
</head>
<body>
    <form action="UpdateServlet" method="post">

        <%
            EmployeeBean employee = (EmployeeBean) request.getAttribute("employeeBean");
        %>
        <table align="center" border="1">
            <tr>
                <td>编号</td>
                <td><input type="text" name="id"  value="<%=employee.getId()%>" ></td>
            </tr>

            <tr>
                <td>名字</td>
                <td><input type="text" name="name"  value="<%=employee.getName()%>"  ></td>
            </tr>

            <tr>
                <td>年龄</td>
                <td><input type="text" name="age"  value="<%=employee.getAge()%>"  ></td>
            </tr>

            <tr>
                <td>学历</td>
                <td><input type="text" name="education"  value="<%=employee.getEducation()%>"  ></td>
            </tr>

            <tr>
                <td><input type="submit" value="提交"></td>
            </tr>

        </table>

    </form>

</body>
</html>

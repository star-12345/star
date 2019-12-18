<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/12/18
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib  prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="pink">

<%response.setCharacterEncoding("UTF-8");%>
<div align="center">
    <hr color="red"/>
    <br/>
    <table align="center" width="80%">
        <tr>
            <td width="25%">
                <s:a href="http://localhost:8080/ch06/student/lookMessage.jsp">查看学生信息</s:a>
            </td>
            <td width="25%">
                添加学生信息
            </td>
            <td width="25%">
                <s:a href="http://localhost:8080/ch06/student/findMessage.jsp">修改学生信息</s:a>
            </td>
            <td width="25%">
                <s:a href="http://localhost:8080/ch06/student/deleteMessage.jsp">删除学生信息</s:a>
            </td>
        </tr>
    </table>
    <br/>
    <hr color="red"/>
    <center><font color="red" size="6">添加学生信息</font></center>
</div>
<s:form action="addMessageAction" method="post">
    <table align="center" width="30%" bgcolor="gray" border="5">
        <tr>
            <td>
                <s:textfield name="id" label="学号" size="16"></s:textfield>
            </td>
            <td>
                <s:textfield name="name" label="姓名" size="16"/>
            </td>
            <td>
                <s:select name="sex" label="性别" list="{'男','女'}"/>
            </td>
            <td>
                <s:textfield name="age" label="年龄"/>
            </td>
            <td>
                <s:textfield name="weight" label="体重"/>
            </td>
            <td colspan="2">
                <s:submit value="提交"/>
                <s:reset value="清除"/>
            </td>
        </tr>
    </table>
</s:form>

</body>
</html>

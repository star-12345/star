<%@ page import="java.util.ArrayList" %>
<%@ page import="cn.cslg.PO.Stuinfo" %><%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/12/18
  Time: 21:25
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
                <s:a href="http://localhost:8080/student/lookMessage.jsp">查看学生信息</s:a>
            </td>
            <td width="25%">
                <s:a href="http://localhost:8080/student/addMessage.jsp">添加学生信息</s:a>
            </td>
            <td width="25%">
                修改学生信息
            </td>
            <td width="25%">
                <s:a href="http://localhost:8080/student/deleteMessage.jsp">删除学生信息</s:a>
            </td>
        </tr>
    </table>
    <br/>
    <hr color="red"/>
    <br/><br/><br/>
    <font size="5">修改学生信息</font>
</div>
<s:form action="updateMessageAction" method="post">
    <table align="center" width="30%" bgcolor="gray" border="5">
        <%
            ArrayList list=(ArrayList)session.getAttribute("oneInfo");
            Stuinfo info=(Stuinfo)list.get(0);
        %>
        <tr>
            <td>
                学号
            </td>
            <td>
                <input name="id" value="<%=info.getId()%>" readonly="readonly"/>
            </td>
        </tr>
        <tr>
            <td>
                姓名
            </td>
            <td>
                <input name="name" value="<%=info.getName()%>"/>
            </td>
        </tr>
        <tr>
            <td>
                性别
            </td>
            <td>
                <input name="sex" value="<%=info.getSex()%>"/>
            </td>
        </tr>
        <tr>
            <td>
                年龄
            </td>
            <td>
                <input name="age" value="<%=info.getAge()%>"/>
            </td>
        </tr>
        <tr>
            <td>
                体重
            </td>
            <td>
                <input name="weight" value="<%=info.getWeight()%>"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <s:submit value="提交"></s:submit>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <s:a href="http://localhost:8080/student/findMessage.jsp">返回</s:a>
            </td>
        </tr>
    </table>
</s:form>
</body>
</html>

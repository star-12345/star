<%@ page import="java.util.ArrayList" %>
<%@ page import="cn.cslg.PO.Stuinfo" %><%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/12/18
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib  prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>删除</title>
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
                <s:a href="http://localhost:8080/ch06/student/addMessage.jsp">添加学生信息</s:a>
            </td>
            <td width="25%">
                <s:a href="http://localhost:8080/ch06/student/findMessage.jsp">修改学生信息</s:a>
            </td>
            <td width="25%">
                删除学生信息
            </td>
        </tr>
    </table>
    <br/>
    <hr color="red"/>
    <br/><br/><br/>
    <font size="5">删除学生信息</font>
</div>
<s:form action="deleteMessageAction" method="post">
    <table align="center" width="40%" border="5">
        <tr>
            <td>
                请选择要删除学生的学号：
            </td>
            <td>
                <select name="id">
                    <%
                        ArrayList list=(ArrayList)session.getAttribute("allInfo");
                        if(list.isEmpty()){
                    %>
                    <option value="null">null</option>
                    <%
                    }else{
                        for(int i=0;i<list.size();i++){
                            Stuinfo info=(Stuinfo)list.get(i);
                    %>
                    <option value="<%=info.getId()%>"><%=info.getId()%></option>
                    <%
                            }
                        }
                    %>
                </select>
            </td>
            <td>
                <s:submit value="确定"></s:submit>
            </td>
        </tr>
    </table>
</s:form>
</body>
</html>

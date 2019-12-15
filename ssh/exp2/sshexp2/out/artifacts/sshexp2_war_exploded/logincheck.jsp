<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/12/14
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>使用国际化实现用户登录</title>
</head>
<body>
    <s:i18n name="globalMessage">
    <s:text name ="check" ></s:text><br />
    <button><a href="changelanguage?request_locale=zh_CN">
    <s:text name="chinese"></s:text>
    </a></button>
    <button><a href="changelanguage?request_locale=en_US">
    <s:text name="english"></s:text>
    </a></button>
    <br/>

        <s:form action="logincheck" method="post">
            <s:textfield name="username" key="loginName" size="20"></s:textfield>
            <s:password name="userPassword" key="loginPassword" size="20"></s:password>
            <s:submit key="loginSubmit"></s:submit>
        </s:form>
    </s:i18n>
</body>
</html>

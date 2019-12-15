<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/12/14
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>上传文件</title>
</head>
<body>
<!-- enctype设置，该属性用来设置浏览器采用二进制方式处理表单数据-->
<s:form action="upLoad" enctype="multipart/form-data">
    <s:textfield name="title" label="文件标题"></s:textfield><br>
    <s:file name="upload" label="选择文件"></s:file><br>
    <s:submit value="上传"></s:submit>
</s:form>

</body>
</html>

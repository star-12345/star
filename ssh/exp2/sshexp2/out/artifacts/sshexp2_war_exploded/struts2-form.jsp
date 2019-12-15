<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/12/13
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>tructs的标签库开发表单页面</title>
</head>
<body>
    <s:form action="" method="POST">
        <s:label value="Action对struts2表单元素进行获取"/>
        <table border="1">
            <s:checkboxlist label="复选框checkbox" list="{1,2,3,4}" value="1,2" name="checkbox"/>
            <s:textfield label="文本框text" name="text" value="" />
            <s:radio label="单选radio(list)" list="{1,2,3,4}"  name="radio1"/>
            <!-- value中设置默认选中  multiple设置可否多选-->
            <s:radio label="单选radio(map)"  name="radio2"
                     list="#{'1':'one','2':'two','3':'three','4':'four'}" value="1"></s:radio>
            <s:select label="单选下拉select" list="{1,2,3,4}" value="1"
                      name="select" />
            <s:select label="多选下拉select" list="#{'1':'one','2':'two'}"
                      value="1" name="multiple" multiple="true" />
            <s:textarea label="文本域textarea" name="textarea" value="" cols="2"
                        rows="3"></s:textarea>
            <s:submit value="保存表单"></s:submit>

        </table>
    </s:form>

</body>
</html>

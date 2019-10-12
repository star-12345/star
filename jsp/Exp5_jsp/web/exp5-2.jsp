<%@ page import="javax.swing.plaf.synth.SynthOptionPaneUI" %><%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/10/11
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>乘法表</title>
</head>
    <jsp:useBean id="number" class="cn.cslg.Number"/>
    <jsp:setProperty name="number" property="num"/>

<body>
    <form action="exp5-2.jsp" method="post">
        输入一个1-9数字：<input type="text" name="num"><br>
        <input type="submit" value="提交"><br>
    </form>

    <%

           for(int i=1;i<=number.getNum();i++){
              for(int j=1;j<=i;j++){
                 out.print(j+"*"+i+"="+i*j+"&nbsp;&nbsp;");
              }
    %>
            <br>
           <%}%>



</body>
</html>

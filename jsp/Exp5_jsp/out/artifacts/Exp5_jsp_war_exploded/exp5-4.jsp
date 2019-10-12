<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/10/12
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>实例</title>
</head>
<body>

<%--&lt;%&ndash;将变量定义在Jsp范围内&ndash;%&gt;--%>

<%--&lt;%&ndash;value属性的两钟使用方式&ndash;%&gt;--%>

<%--<c:set var="username" value="jack" scope="session"/>--%>

<%--<c:set var="pwd" scope="session">000</c:set>--%>

<%--&lt;%&ndash;通过el表达式语言输出&ndash;%&gt;--%>

<%--${sessionScope.username}--%>

<%--${sessionScope.pwd}--%>

<%--&lt;%&ndash;通过jstl中<c:out>标签输出&ndash;%&gt;--%>

<%--<c:out value="${sessionScope.username}"/>--%>

<%--实例2:利用<c:set>标签设置javaBean的属性age,在jsp页面中获取age,如果age<18,输出相应信息--%>




<%--&lt;%&ndash;jsp页面默认是true,EL表达式被忽略&ndash;%&gt;--%>

<%--<%@ page isELIgnored="false"%>--%>

<%--&lt;%&ndash;定义一个javaBean对象&ndash;%&gt;--%>

<%--<jsp:useBean id="stu" class="cn.cslg.Student"/>--%>

<%--&lt;%&ndash;通过<c:set>标签给javaBean对象的age属性设值&ndash;%&gt;--%>

<%--<c:set value="16" target="${stu}" property="age"/>--%>

<%--&lt;%&ndash;输出javaBean对象的属性值&ndash;%&gt;--%>

<%--年龄:<c:out value="${stu.age}"/>--%>

<%--&lt;%&ndash;当if判断为true时,输出标签体的内容&ndash;%&gt;--%>

<%--<c:if test="${stu.age<18}" var="young" scope="session">对不起,未成年,不能访问这个网站...</c:if>--%>

<%--&lt;%&ndash;输出if语句的判断结果&ndash;%&gt;--%>

<%--判断结果:<c:out value="${sessionScope.young}"/>--%>



<%--实例3--%>
<%@ page isELIgnored="false"%>

<%--定义一个Color对象--%>

<jsp:useBean id="c" class="cn.cslg.Color"/>

<%--为Color对象设置属性--%>

<c:set value="blue" target="${c}" property="color"/>

<%--获取Color对象的属性值,并根据不同的属性值显示不同的颜色--%>

<c:out value="${c.color}"></c:out>

<c:choose>

<c:when test="${c.color eq 'red'}">

    <font color=red face="华文行楷">你选择的颜色是:<c:out value="${c.color}"/></font>

</c:when>

<c:when test="${c.color eq 'blue'}">

    <font color=blue face="华文行楷">你选择的颜色是:<c:out value="${c.color}"/></font>

</c:when>

<c:otherwise>

<font color=green face="华文行楷">你选择的颜色是:<c:out value="${c.color}"/>

    </c:otherwise>

    </c:choose>

    <%--==========例4=================--%>


</body>
</html>

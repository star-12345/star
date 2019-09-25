<%--
  Created by IntelliJ IDEA.
  User: JXL
  Date: 2019/9/20
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>计算器</title>


</head>
<body>
<%!String result;%>
<%

    String snum1 = request.getParameter("number1");
    String snum2 = request.getParameter("number2");
    String flag = request.getParameter("operator");


    if(snum1!=null&&snum2!=null&&flag!=null){
        Double num1 = Double.parseDouble(snum1);
        Double num2 = Double.parseDouble(snum2);
        Double resul = 0.0;
        if(flag.equals("1")){
            resul = num1+num2;
            result = resul.toString();
        }
        else if(flag.equals("2")){
            resul = num1-num2;
            result = resul.toString();
        }

        else if(flag.equals("3")){
            resul = num1*num2;
            result = resul.toString();
        }

        else if(flag.equals("4")){
            resul = num1/num2;
            result = resul.toString();
        }
    }

%>
<%System.out.println(result); %>

    <form action="/Calculator.jsp" method="post">
        <h1>我的计算器</h1>
        请输入第一个数：<input type="text" name="number1" value=""><br>
        请选择运算方式：<select name="operator" >
                           <option value="1">+</option>
                           <option value="2">-</option>
                           <option value="3">*</option>
                           <option value="4">/</option>
                      </select><br>
        请输入第二个数：<input type="text" name="number2"><br>
        <input type="submit"  value="计算">
        <input type="reset" value="重置"><br>
        结果：<input type="text" value=<%=result%>>
    </form>


</body>
</html>

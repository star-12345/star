package cn.cslg.servlet;

import cn.cslg.dao.UserDao;
import cn.cslg.model.UserBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        request.setAttribute("username",username);
        request.setAttribute("password",password);
        //设置请求中的字符编码格式为utf-8
        request.setCharacterEncoding("utf-8");
        //设置响应中的字符编码格式为utf-8
        response.setContentType("text/html;charset=utf-8");

        UserDao userDao = new UserDao();
        UserBean user = new UserBean();
        user.setName(username);
        user.setPassword(password);

        if("".equals(username)||"".equals(password)){
            response.getWriter().print("<script>alert('用户名或者密码不能为空!');window.location.href='Login.jsp'</script>");
        }

        else {
            UserBean loginuser = userDao.login(user);
            if(loginuser!=null){
                request.getRequestDispatcher("LoginSuccess.jsp").forward(request,response);
            }else {
                response.getWriter().print("<script>alert('用户名或者密码错误!');location.href='Login.jsp'</script>");
            }

        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}

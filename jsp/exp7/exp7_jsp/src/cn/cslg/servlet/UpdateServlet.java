package cn.cslg.servlet;

import cn.cslg.dao.EmployeeDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置请求中的字符编码格式为utf-8
        request.setCharacterEncoding("utf-8");
        //设置响应中的字符编码格式为utf-8
        response.setContentType("text/html;charset=utf-8");

        int id = Integer.parseInt(request.getParameter("id")) ;
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age")) ;
        String education = request.getParameter("education");

        EmployeeDao employeeDao = new EmployeeDao();
        employeeDao.update(id,name,age,education);
        request.getRequestDispatcher("SelectServlet").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request,response);
    }
}

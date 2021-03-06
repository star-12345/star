package cn.cslg.servlet;

import cn.cslg.dao.EmployeeDao;
import cn.cslg.model.EmployeeBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class SelectServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmployeeDao employeeDao = new EmployeeDao();

        try {
            //List<EmployeeBean> employeeList =  employeeDao.findAll();
            request.setAttribute("employeeList",employeeDao.findAll());
            request.getRequestDispatcher("ShowEmployee.jsp").forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

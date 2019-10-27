package cn.cslg.Dao;

import cn.cslg.Util.DBConnection;
import cn.cslg.model.EmployeeBean;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao {


    public List<EmployeeBean> queryList () throws SQLException, ClassNotFoundException {
        Connection connection =   DBConnection.getConnection();
        String sql ="select * from employees";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        ResultSet res = preparedStatement.executeQuery();
        List <EmployeeBean> list= new ArrayList<EmployeeBean>();
        while (res.next()){
            EmployeeBean employee = new EmployeeBean();
            employee.setId(res.getInt("id"));
            employee.setName(res.getString("name"));
            employee.setAge(res.getInt("age"));
            employee.setEducation(res.getString("education"));
            employee.setAddress(res.getString("address"));
            employee.setSalary(res.getFloat("salary"));
            list.add(employee);

        }
        preparedStatement.close();
        connection.close();
        return list;
    }

    public boolean insert(){
        Connection connection = null;
        try {
            connection = DBConnection.getConnection();
            String  sql = "insert into employees(name,age,education,address,salary) values\n" +
                    "('李','21','本科','上海市黄浦区','14000')";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
            return true;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean update(){
        Connection connection = null;
        try {
            connection = DBConnection.getConnection();
            String sql = "update employees set name ='陈小春',age=19 where id=1";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
            return true;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean delete(){
        Connection connection = null;
            try {
                connection = DBConnection.getConnection();
                String sql = "DELETE FROM employees where id>7";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.executeUpdate();
                preparedStatement.close();
                connection.close();
                return true;
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        return false;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        EmployeeDao em = new EmployeeDao();
        //em.insert();
        em.update();
        //em.delete();
        List<EmployeeBean> employeeBeans = em.queryList();
        for (EmployeeBean employeeBean : employeeBeans) {
            System.out.println(employeeBean);
        }
    }

}

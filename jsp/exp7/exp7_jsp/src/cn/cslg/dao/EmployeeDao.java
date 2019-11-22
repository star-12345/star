package cn.cslg.dao;

import cn.cslg.Util.DBConnction;
import cn.cslg.model.EmployeeBean;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao {
    private DataSource dataSource = DBConnction.getDataSource();

    public List<EmployeeBean> findAll() throws SQLException {
        String sql = "select * from employees ";
        Connection connection = dataSource.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        ResultSet res = preparedStatement.executeQuery();
        List<EmployeeBean> list = new ArrayList<>();
        while (res.next()){
            EmployeeBean employeeBean = new EmployeeBean();
            employeeBean.setId(res.getInt("id"));
            employeeBean.setName(res.getString("name"));
            employeeBean.setAge(res.getInt("age"));
            employeeBean.setEducation(res.getString("education"));
            //employeeBean.setAddress(res.getString("address"));
            //employeeBean.setSalary(res.getFloat("salary"));
            list.add(employeeBean);
        }
        return list;
    }

    public EmployeeBean findByid(int id) throws SQLException {
        String sql = "select * from employees where id = ?;";
        Connection connection = dataSource.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1,id);
        ResultSet res = preparedStatement.executeQuery();
        EmployeeBean employeeBean = new EmployeeBean();
        while (res.next()){

            employeeBean.setId(res.getInt("id"));
            employeeBean.setName(res.getString("name"));
            employeeBean.setAge(res.getInt("age"));
            employeeBean.setEducation(res.getString("education"));
            //employeeBean.setAddress(res.getString("address"));
            //employeeBean.setSalary(res.getFloat("salary"));

        }
        return employeeBean;
    }

    public boolean update(int id,String name,int age,String education) {
        String sql = "update employees set name = ?,age=?, education=? where id = ?";
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,name);
            preparedStatement.setInt(2,age);
            preparedStatement.setString(3,education);
            preparedStatement.setInt(4,id);
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean delete(int id){
        String sql = "delete  from employees where id = ?;";
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean insert(String name,int age,String education){
        String sql = "  insert into employees(name ,age,education) values (?,?,?);";
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,name);
            preparedStatement.setInt(2,age);
            preparedStatement.setString(3,education);
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


}

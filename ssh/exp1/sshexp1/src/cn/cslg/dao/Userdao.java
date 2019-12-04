package cn.cslg.dao;

import cn.cslg.Util.DBConnction;
import cn.cslg.bean.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Userdao {


    public User login(String username, String password)  {

        try {
            String sql = "select * from user where name= ? and password = ?";
            PreparedStatement preparedStatement = DBConnction.getConnection().prepareStatement(sql);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                User loginuser = new User();
                loginuser.setName(resultSet.getString(1));
                loginuser.setPassword(resultSet.getString(2));
                return loginuser;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean register(String username, String password){

            try {
                String sql = "insert into user(name ,password) values (?,?)";
                PreparedStatement preparedStatement = DBConnction.getConnection().prepareStatement(sql);
                preparedStatement.setString(1,username);
                preparedStatement.setString(2,password);
                preparedStatement.execute();
                return true;
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return false;


    }
}

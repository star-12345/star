package cn.cslg.dao;

import javax.sql.DataSource;
import cn.cslg.Util.*;
import cn.cslg.model.UserBean;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {

    private DataSource dataSource =  DBConnction.getDataSource();


    public UserBean login(UserBean user)  {

        try {
            String sql = "select * from user where name= ? and password = ?";
            PreparedStatement preparedStatement = dataSource.getConnection().prepareStatement(sql);
            preparedStatement.setString(1,user.getName());
            preparedStatement.setString(2,user.getPassword());
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                UserBean loginuser = new UserBean();
                loginuser.setName(resultSet.getString(1));
                loginuser.setPassword(resultSet.getString(2));
                return loginuser;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;



    }


}

package cn.cslg.bean;

import cn.cslg.Util.DBConnction;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class User {

    private String name;
    private String password;

    public User(String name, String password) {
        this.name = name;
        this.password = password;
    }

    public User() {
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


//    public User login(String username,String password)  {
//
//        try {
//            String sql = "select * from user where name= ? and password = ?";
//            PreparedStatement preparedStatement = DBConnction.getConnection().prepareStatement(sql);
//            preparedStatement.setString(1,username);
//            preparedStatement.setString(2,password);
//            ResultSet resultSet = preparedStatement.executeQuery();
//
//            while (resultSet.next()){
//                User loginuser = new User();
//                loginuser.setName(resultSet.getString(1));
//                loginuser.setPassword(resultSet.getString(2));
//                return loginuser;
//            }
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//        return null;
//    }


}

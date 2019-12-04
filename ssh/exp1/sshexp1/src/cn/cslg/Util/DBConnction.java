package cn.cslg.Util;

import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

public class DBConnction {
    private static DataSource dataSource;

    static {
        try{
            Properties properties = new Properties();//加载配置文件
            //使用classloader加载配置文件，获取字节输入流
            InputStream inputStream = DBConnction.class.getClassLoader().getResourceAsStream("druid.properties");
            properties.load(inputStream);
            //初始化连接对象
            dataSource = DruidDataSourceFactory.createDataSource(properties);

        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取连接池对象
     */

    public static DataSource getDataSource(){
        return dataSource;
    }


    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }


}

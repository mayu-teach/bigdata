package com.iweb.until;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUntil {

    private Connection conn;

    private String username = "dev_r";
    private String password = "dev123!@#";
    private String url = "jdbc:mysql://192.168.2.241:3306/test?useUnicode=true&characterEncoding=utf8";
    private String driverClass = "com.mysql.jdbc.Driver";

    public Connection getConnection(){
        try {
            Class.forName(driverClass);
            conn=DriverManager.getConnection(url,username,password);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }


    public void close(){

        if(conn!=null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

}

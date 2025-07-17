package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {

    String sql = "SELECT * FROM login WHERE uname=? AND pass=?";
    String url = "jdbc:postgresql://localhost:5432/telusko";
    String username = "postgres";
    String password = "maiHOON2002!";

    public boolean check(String uname, String pass) {
        try {
            Class.forName("org.postgresql.Driver"); // PostgreSQL driver
            Connection con = DriverManager.getConnection(url, username, password);
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, uname);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

package code.daos;

import code.helper.DBHelper;
import code.models.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    public int userCreate(User user){
        int status = 0;
        Connection con = DBHelper.getInstance().getConnection();
        String query = "INSERT INTO users (name,email,password,roles) VALUES(?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,user.getName());
            ps.setString(2,user.getEmail());
            ps.setString(3,user.getPassword());
            ps.setString(4,user.getRole());
            status =ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Database error delete"+e);
        }
        return status;
    }

    public List<User> getAllUser(){
        ResultSet rs;
        List<User> users=new ArrayList<>();
        String query="SELECT * FROM user";
        Connection con = DBHelper.getInstance().getConnection();
        try {
            PreparedStatement ps=con.prepareStatement(query);
            rs=ps.executeQuery();
            while(rs.next()){
                User user=new User();
                user.setId(rs.getInt("userId"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("roles"));
                users.add(user);
            }
        } catch (SQLException e) {
            System.out.println("Database error !"+e);
        }
        return users;
    }

    public User getUserById(int id){
        ResultSet rs;
        User user=new User();
        String query="SELECT * FROM user WHERE userId=?";
        Connection con = DBHelper.getInstance().getConnection();
        try {
            PreparedStatement ps=con.prepareStatement(query);
            ps.setInt(1,id);
            rs=ps.executeQuery();
            while(rs.next()){

                user.setId(rs.getInt("userId"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("roles"));
            }
        } catch (SQLException e) {
            System.out.println("Database error !"+e);
        }
        return user;
    }

    public int updateUser(User user){
        int status=0;
        Connection con=DBHelper.getInstance().getConnection();
        String query="UPDATE users SET name=?,email=?,password=?,roles=? WHERE userId=?";
        try {
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,user.getName());
            ps.setString(2,user.getEmail());
            ps.setString(3,user.getPassword());
            ps.setString(4,user.getRole());
            status=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }


    public int userDelete(int id){
        int status = 0;
            Connection con= DBHelper.getInstance().getConnection();
            String query="DELETE FROM users WHERE userId=?";
            try {
                PreparedStatement ps=con.prepareStatement(query);
                ps.setInt(1,id);
                status= ps.executeUpdate();
            } catch (SQLException e) {
                System.out.println("Database error delete"+e);
            }

        return status;
    }
}

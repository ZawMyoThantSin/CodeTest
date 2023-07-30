package code.daos;
import code.helper.DBHelper;
import code.models.User;
import code.models.UserView;
import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Component
public class UserDao {

    public int userCreate(User user){
        int status = 0;
        Connection con = DBHelper.getInstance().getConnection();
        String query = "INSERT INTO users (userId,username,email,password,roles) VALUES(?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,user.getUserId());
            ps.setString(2,user.getName());
            ps.setString(3,user.getEmail());
            ps.setString(4,user.getPassword());
            ps.setString(5,user.getRole());
            status =ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Database error delete"+e);
        }
        return status;
    }

    public User userValidate(String userId, String password) {
        Connection connection = DBHelper.getInstance().getConnection();
        String query = "SELECT * FROM users WHERE userId = ? AND password = ?";
        try (
            PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, userId);
            ps.setString(2, password);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    User user = new User();
                    user.setUserId(rs.getString("userId"));
                    user.setName(rs.getString("username"));
                    user.setEmail(rs.getString("email"));
                    user.setPassword(rs.getString("password"));
                    user.setRole(rs.getString("roles"));
                    return user;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<User> getAllUser(){
        ResultSet rs;
        List<User> users = new ArrayList<>();
        String query="SELECT * FROM users";
        Connection con = DBHelper.getInstance().getConnection();
        try {
            PreparedStatement ps=con.prepareStatement(query);
            rs=ps.executeQuery();
            while(rs.next()){
                User user=new User();
                user.setId(rs.getInt("id"));
                user.setUserId(rs.getString("userId"));
                user.setName(rs.getString("username"));
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

    public List<UserView> getUserForView(){
        List<UserView> users = new ArrayList<>();
        ResultSet rs;
        Connection con = DBHelper.getInstance().getConnection();
        String query="SELECT * FROM users";
        try {
            PreparedStatement ps=con.prepareStatement(query);
            rs=ps.executeQuery();
            while(rs.next()){
                UserView user1=new UserView();
                user1.setId(rs.getInt("id"));
                user1.setUser_id(rs.getString("userId"));
                user1.setUser_name(rs.getString("username"));
                user1.setEmail(rs.getString("email"));
                user1.setPassword(rs.getString("password"));
                user1.setRoles(rs.getString("roles"));
                users.add(user1);
            }
        } catch (SQLException e) {
            System.out.println("Database error !"+e);
        }
        return users;
    }
    public User getUserById(int id){
        ResultSet rs;
        User user=new User();
        String query="SELECT * FROM users WHERE id=?";
        Connection con = DBHelper.getInstance().getConnection();
        try {
            PreparedStatement ps=con.prepareStatement(query);
            ps.setInt(1,id);
            rs=ps.executeQuery();
            while(rs.next()){

                user.setId(rs.getInt("id"));
                user.setUserId(rs.getString("userId"));
                user.setName(rs.getString("username"));
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
        String query="UPDATE users SET username=?,email=?,password=?,roles=? WHERE id=?";
        try {
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,user.getName());
            ps.setString(2,user.getEmail());
            ps.setString(3,user.getPassword());
            ps.setString(4,user.getRole());
            ps.setInt(5,user.getId());
            status=ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("error"+e);
        }

        return status;
    }

    public int userDelete(int id){
        int status = 0;
            Connection con= DBHelper.getInstance().getConnection();
            String query="DELETE FROM users WHERE id=?";
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

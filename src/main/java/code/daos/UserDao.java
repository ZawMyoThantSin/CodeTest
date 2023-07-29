package code.daos;

import code.helper.DBHelper;
import code.models.User;

import java.sql.Connection;

public class UserDao {
    public int userCreate(User user){
        int status = 0;
        Connection con = DBHelper.getInstance().getConnection();
        String query = "INSERT INTO users (name,email,password,";
        return status;
    }
}

package code.daos;


import code.helper.DBHelper;
import code.models.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class StudentDao{
    public int studentCreate(Student student){
        int status=0;
        Connection con = DBHelper.getInstance().getConnection();
        String query ="INSERT INTO students (studentname,dob,gender,phone,education,attend) VALUES(?,?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,student.getName());
            ps.setString(2,student.getDob());
            ps.setString(3,student.getGender());
            ps.setString(4,student.getPhone());
            ps.setString(5,student.getEducation());
            ps.setString(6,student.getAttend());
            status=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }
}
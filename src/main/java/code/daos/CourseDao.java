package code.daos;


import code.helper.DBHelper;
import code.models.Course;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CourseDao {
    public int courseCreate(Course course){
        int status=0;
        Connection con = DBHelper.getInstance().getConnection();

        String query = "INSERT INTO courses (courseId,name) VALUES(?,?)";
        try {
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,course.getCourseId());
            ps.setString(2,course.getCourseName());
            status=  ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }
    public List<Course> getAllCourses(){
        List<Course> courses = new ArrayList<>();
        Connection con = DBHelper.getInstance().getConnection();
        String query = "SELECT * FROM courses";
        try {
            PreparedStatement ps = con.prepareStatement(query);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return courses;
    }
}

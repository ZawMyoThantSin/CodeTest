package code.controllers;

import code.daos.CourseDao;
import code.models.Course;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class CourseRegistration {
    @GetMapping("/course/registration")
    public String courseRegistration(){

        return "courseRegistration";
    }

    @PostMapping("/course/registration")
    public String courseRegistration( @RequestParam String id, String name){
        if (id != null && name != null){
        Course courses = new Course(id,name);
        new CourseDao().courseCreate(courses);
        }
        return "courseRegistration";
    }
}

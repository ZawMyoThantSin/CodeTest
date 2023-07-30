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
    public String courseRegistration(@RequestParam String id, String name,Model model){
        if (id != null && name != null){
        Course courses = new Course(id,name);
        int status= new CourseDao().courseCreate(courses);
        if(status==1){
            String msg = "Added Successful!";
            model.addAttribute("message",msg);
        }else {
            String msg = "Something went wrong!, Please try again.";
            model.addAttribute("message",msg);
        }
        }
        return "courseRegistration";
    }
}

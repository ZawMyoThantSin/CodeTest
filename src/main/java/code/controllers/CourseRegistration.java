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
    public String courseRegistration(Model model, @RequestParam String id, String name){
        if (id != null && name != null){
        Course courses = new Course(id,name);
        int status = new CourseDao().courseCreate(courses);
        if(status==1){
            String message ="Registered Succesfully !";
            model.addAttribute("message",message);
             return "courseRegistration";
        }else {
            String message = "Error Create Course! Please try Again...";
            model.addAttribute("message", message);
            return "courseRegistration";
        }
        }
        return "courseRegistration";
    }
}

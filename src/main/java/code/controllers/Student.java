package code.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class Student {

    Date myDate = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    String formattedDate = sdf.format(myDate);


    @GetMapping("/student/search")
    public String studentSearch(Model model){
        model.addAttribute("date",formattedDate);
        return "student/studentSearch";
    }

    @GetMapping("/student/details")
    public String studentDetails(Model model){
        model.addAttribute("date",formattedDate);
        return "student/studentDetails";
    }
    @GetMapping("/student/update")
    public String studentUpdate(Model model){
        model.addAttribute("date",formattedDate);
        return "student/studentUpdate";
    }
    @GetMapping("/student/registration")
    public String studentRegistration(Model model){
        model.addAttribute("date",formattedDate);
        return "student/studentRegistration";
    }
}

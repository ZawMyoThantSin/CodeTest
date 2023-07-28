package code.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class Registration {
    Date myDate = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    String formattedDate = sdf.format(myDate);


    @GetMapping("/course/registration")
    public String course(Model model){
        model.addAttribute("date",formattedDate);
        return "courseRegistration";
    }


    @GetMapping("/user/registration")
    public String userRegistration(Model model){
        model.addAttribute("date",formattedDate);
        return "user/userRegistration";
    }
}

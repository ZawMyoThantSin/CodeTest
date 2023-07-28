package code.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class PageController {
    Date myDate = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    String formattedDate = sdf.format(myDate);

    @GetMapping("/")
    public String homePage(Model model){
        model.addAttribute("pageTitle","Logout ");
        return "home";
    }

    @GetMapping("/login")
    public String loginPage(Model model){
        model.addAttribute("date",formattedDate);
        return "welcome";
    }
}

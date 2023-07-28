package code.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class Registration {



    @GetMapping("/user/registration")
    public String userRegistration(Model model){

        return "user/userRegistration";
    }
}

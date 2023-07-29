package code.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class UserController {
    @GetMapping("/user/registration")
    public String userRegistration(){

        return "user/userRegistration";
    }

    @GetMapping("/user/management")
    public String userManagement(Model model){

        return "user/userManage";
    }
    @GetMapping("/user/update")
    public String userUpdate(Model model){

        return "user/userUpdate";
    }

}

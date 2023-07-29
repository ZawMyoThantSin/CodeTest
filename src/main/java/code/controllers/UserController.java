package code.controllers;

import code.daos.UserDao;
import code.models.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
    @GetMapping("/user/registration")
    public String userRegistration(){
        return "user/userRegistration";
    }

    @PostMapping("/user/registration")
    public String userRegistration(@RequestParam String id,String name,String email,String password,String userRole){
        User user = new User(id,name,email,password,userRole);
        new UserDao().userCreate(user);

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

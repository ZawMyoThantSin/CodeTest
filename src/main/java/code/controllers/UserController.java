package code.controllers;

import code.daos.UserDao;
import code.models.User;
import code.models.UserView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class UserController {
    @GetMapping("/user/registration")
    public String userRegistration(){
        return "user/userRegistration";
    }
    @PostMapping("/user/registration")
    public String userRegistration(@RequestParam String id,String name,String email,String password,String userRole){
        User user = new User(id,name,email,password,userRole);
        int status =new UserDao().userCreate(user);
        if(status==1) {
            return "home";
        }else {
            return "user/userRegistration";
        }
    }

    @GetMapping("/user/delete")
    public String userDelete(@RequestParam int userId){
        int status = new UserDao().userDelete(userId);
        if(status==1){
            return "user/userManage";
        }
        return "user/userManage";
    }
    @GetMapping("/user/management")
    public String userManagement(){
        return "user/userManage";
    }
    @GetMapping("/user/update")
    public String userUpdate(Model model){

        return "user/userUpdate";
    }

}

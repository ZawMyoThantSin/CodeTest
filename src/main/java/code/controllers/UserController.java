package code.controllers;

import code.daos.UserDao;
import code.models.User;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    @GetMapping("/user/registration")
    public String userRegistration(){
        return "user/userRegistration";
    }
    @PostMapping("/user/registration")
    public String userRegistration(@RequestParam String id,String name,String email,String password,String userRole,HttpSession session){
        User user = new User(id,name,email,password,userRole);
        int status =new UserDao().userCreate(user);
        if(status==1) {
            session.setAttribute("user",user);
            return "home";
        }else {
            return "user/userRegistration";
        }
    }

    @GetMapping("/user/delete")
    public String userDelete(@RequestParam int userid){
        int status = new UserDao().userDelete(userid);
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
    public String userUpdate(@RequestParam int userid,HttpSession session,Model model){
        User user = new UserDao().getUserById(userid);
        model.addAttribute("user",user);
        return "user/userUpdate";
    }

    @PostMapping("/user/update")
    public String userUpdate(@RequestParam int id,String name,String email, String password, String userRole,Model model){
        User user = new User(id,name,email,password,userRole);
        int status = new UserDao().updateUser(user);
        if (status==1){
            return "user/userManage";
        }
        return "user/userUpdate";
    }

}

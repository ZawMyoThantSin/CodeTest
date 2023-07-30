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
public class PageController {

    @GetMapping("/")
    public String homePage(){
        return "welcome";
    }
    @GetMapping("/login")
    public String loginPage(Model model){
//        if (!model.containsAttribute("message")) {
//            model.addAttribute("message", "");
//        }
        return "welcome";
    }

    @PostMapping("/login")
    public String loginPage(@RequestParam String userId, String password, HttpSession session,Model model){
        User user = new UserDao().userValidate(userId, password);
        if (user != null) {
            String userRole=user.getRole();
            if(userRole.equals("Admin")){
                session.setAttribute("user", user);
                System.out.println(userRole);
                return "home";
            }else return "home";
        } else
            model.addAttribute("message","User Name and Passsword is Invalid!");
            return "welcome";

    }
}

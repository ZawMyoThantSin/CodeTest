package code.controllers;

import code.daos.UserDao;
import code.models.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class PageController {
    Date myDate = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    String formattedDate = sdf.format(myDate);

    @GetMapping("/")
    public String homePage(){
        return "welcome";
    }

    @PostMapping("/login")
    public String loginPage(@RequestParam String userId, String password, HttpSession session){
        UserDao dao = new UserDao();

        User user = dao.isValidUser(userId, password);
        if (user != null) {
            session.setAttribute("user", user);
            return "home";
        } else {

            return "welcome";
        }
    }
}

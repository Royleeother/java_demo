package picknewbie.ssm.controller;

import picknewbie.ssm.Utility;
import picknewbie.ssm.model.UserModel;
import picknewbie.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

//    @GetMapping("/")
//    public ModelAndView index(HttpServletRequest request) {
//
//        UserModel currentUser = userService.currentUser(request);
//
//        // model 说的是给模板引擎的 model
//        // view 说的是模板名字，没有后缀
//        // view 可以自动补全，也可以直接跳转
//        ModelAndView mv = new ModelAndView("index");
//        mv.addObject("username", currentUser.getUsername());
//        mv.addObject("user_id", currentUser.getId());
//        return mv;
//    }

    @GetMapping("/register")
    public ModelAndView registerView() {
        ModelAndView m = new ModelAndView("user/register");
        return m;
    }


    @GetMapping("/login")
    public ModelAndView loginView() {
        ModelAndView m = new ModelAndView("user/login");
        m.addObject("loginRes", "~");
        return m;
    }

    @PostMapping("/user/add")
    public ModelAndView register(String username, String password) {
        userService.add(username, password);

        ModelAndView mv = new ModelAndView("redirect:/login");
        return mv;
    }

    @PostMapping("/login_action")
    public ModelAndView login(String username, String password, HttpServletRequest request) {
        if (userService.validLogin(username, password)) {
            UserModel current = userService.findByUsername(username);
            HttpSession session = request.getSession();
            session.setAttribute("user_id", current.getId());
            ModelAndView mv = new ModelAndView("redirect:/");
            return mv;
        } else {
            Utility.log("失败");
            ModelAndView m = new ModelAndView("user/login");
            m.addObject("loginRes", "学号或密码错误");
            return m;
        }
    }


}

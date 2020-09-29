//package picknewbie.ssm.controller;
//
//import picknewbie.ssm.Utility;
//import picknewbie.ssm.model.UserModel;
//import picknewbie.ssm.service.UserService;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.*;
//import org.springframework.web.servlet.ModelAndView;
//
//
//import java.util.HashMap;
//import java.util.UUID;
//
//@Controller
//@RequestMapping("/reset")
//public class pwdResetController {
//
//    private UserService userService;
//    private MailTask mailTask;
//
//    private HashMap<String, Integer> tokenUserIdMap = new HashMap<>();
//
//    public pwdResetController(UserService userService, MailTask mailTask) {
//        this.userService = userService;
//        this.mailTask = mailTask;
//    }
//
//
//    @GetMapping("/index")
//    public ModelAndView resetIndex() {
//        ModelAndView m = new ModelAndView("user/reset_index");
//        m.addObject("result", "");
//        return m;
//    }
//
//    @PostMapping("/send")
//    public ModelAndView resetSend(String username) {
//        UserModel user = userService.findByUsername(username);
//
//        String token = UUID.randomUUID().toString();
//        tokenUserIdMap.put(token, user.getId());
//
//        String address = user.getEmail();
//        String title = "重置密码";
//        String url = String.format("http://localhost:9000/reset/view?token=%s", token);
//        String content = String.format("点击链接重置密码 %s", url);
//
//        mailTask.sendMailAsync(address, title, content);
//
//
//        ModelAndView m = new ModelAndView("user/reset_index");
//        m.addObject("result", "邮件发送完毕, 通常1分钟之内就能收到邮件");
//        return m;
//    }
//
//    @GetMapping("/view")
//    public ModelAndView resetView(@RequestParam String token) {
//        ModelAndView m;
//        if (tokenUserIdMap.containsKey(token)) {
//            m = new ModelAndView("user/reset_view");
//            m.addObject("token", token);
//        } else {
//            m = new ModelAndView("user/login");
//        }
//        return m;
//    }
//
//    @PostMapping("/update")
//    public ModelAndView resetView(@RequestParam String token, String password) {
//        if (tokenUserIdMap.containsKey(token)) {
//            Integer userId = tokenUserIdMap.get(token);
//            Utility.log("userId: %s", userId);
//            UserModel user = userService.findById(userId);
//            userService.update(userId, user.getUsername(), password);
//
//        }
//
//        ModelAndView m = new ModelAndView("user/login");
//        return m;
//    }
//
//}

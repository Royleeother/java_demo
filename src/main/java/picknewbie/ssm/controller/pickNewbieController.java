package picknewbie.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import picknewbie.ssm.mapper.UserMapper;
import picknewbie.ssm.model.NewbieListModel;
import picknewbie.ssm.model.UserModel;
import picknewbie.ssm.model.UserRole;
import picknewbie.ssm.service.PickUpService;
import picknewbie.ssm.service.UserService;

import javax.servlet.http.HttpServletRequest;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

@Controller
public class pickNewbieController {

    private UserService userService;
    private String dir = "/var/lib/tomcat9/webapps/avatar";
    private UserMapper userMapper;
    private PickUpService pickUpService;

    public pickNewbieController(UserService userService, PickUpService pickUpService, UserMapper userMapper) {
        this.userService = userService;
        this.pickUpService = pickUpService;
        this.userMapper = userMapper;
    }

    @GetMapping("/")
    public ModelAndView index(HttpServletRequest request) {

        UserModel currentUser = userService.currentUser(request);

        Boolean isVolunteer = currentUser.getRole() == UserRole.volunteer;
        Boolean isNewbie = currentUser.getRole() == UserRole.newbie;

//        NewbieListModel newbies = new NewbieListModel();
        UserModel volunteer = new UserModel();
        UserModel newbie = new UserModel();

        if (isVolunteer) {
//            newbies = pickUpService.findNewbiesByVolunteerId(currentUser.getSchoolId());
            newbie = pickUpService.findVolunteer(currentUser.getSchoolId());

        } else if (isNewbie) {
            volunteer = pickUpService.findByVolunteerId(currentUser.getVolunteerId());
        }
//        List<UserModel> users = this.userService.all();


        ModelAndView mv = new ModelAndView("index");
        mv.addObject("user", currentUser);

        mv.addObject("isVolunteer", isVolunteer);
        mv.addObject("isNewbie", isNewbie);

        mv.addObject("newbie", newbie);
        mv.addObject("volunteer", volunteer);

//        mv.addObject("users", users);

        return mv;
    }

//    @PostMapping("/upload")
//    @ResponseBody
//    public ModelAndView singleFileUpload(HttpServletRequest request, @RequestParam("file") MultipartFile file) {
//        ModelAndView  model = new ModelAndView("redirect:/");
//        if (file.isEmpty()) {
//            model.addObject("uploadResult", "上传失败 空的");
//            return model;
//        } else {
//            String path = "";
//            UserModel current = userService.currentUser(request);
//
//            String originalName = file.getOriginalFilename();
//            String[] fileSplit = originalName.split("\\.");
//            String name = fileSplit[0];
//            Double ran = Math.random();
//            path = String.format("%s/%s_%s.jpg", this.dir, current.getSchoolId(), ran);
//
//            try(FileOutputStream os = new FileOutputStream(path)) {
//                // Get the file and save it somewhere
//                byte[] bytes = file.getBytes();
//                os.write(bytes);
//                String gg = String.format("avatar/%s_%s.jpg", current.getSchoolId(), ran);
//                current.setAvatar(gg);
//                this.userMapper.updateUser(current);
//                return model;
//            } catch (IOException e) {
//                e.printStackTrace();
//                model.addObject("uploadResult", "上传失败 IO");
//                return model;
//            }
//        }
//    }


}

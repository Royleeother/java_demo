package picknewbie.ssm.controller;


import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import picknewbie.ssm.Utility;
import picknewbie.ssm.model.UserModel;
import picknewbie.ssm.service.UserService;

import javax.servlet.http.HttpServletRequest;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Array;

@Controller
public class FileUploadController {
    String dir = "/var/lib/tomcat9/webapps/avatar";

    private UserService userService;

    public FileUploadController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/upload/index")
    public ModelAndView uploadView() {
        return new ModelAndView("upload");
    }


//    @PostMapping("/upload")
//    @ResponseBody
//    public String singleFileUpload(HttpServletRequest request, @RequestParam("file") MultipartFile file) {
//        if (file.isEmpty()) {
//            return "上传失败";
//        } else {
//            String path = "";
//            UserModel current = userService.currentUser(request);
//
//            String originalName = file.getOriginalFilename();
////            String[] fileSplit = originalName.split("\\.");
////            Integer last = fileSplit.length - 1;
////            String imgFormat = fileSplit[last];
////            Utility.log("imgFormat:%s", imgFormat);
//
//            path = String.format("%s/%s_%s", this.dir, current.getSchoolId(), originalName);
//            try(FileOutputStream os = new FileOutputStream(path)) {
//                // Get the file and save it somewhere
//                byte[] bytes = file.getBytes();
//                os.write(bytes);
//                return "上传成功";
//            } catch (IOException e) {
//                e.printStackTrace();
//                return "上传失败";
//            }
//        }
//    }

    @GetMapping("/avatar/{imageName}")
    @ResponseBody
    public ResponseEntity<byte[]>  avatar(@PathVariable String imageName) {
        String path = String.format("%s/%s", dir, imageName);

        byte content[];
        try (FileInputStream is = new FileInputStream(path)) {
            content = is.readAllBytes();
        } catch (IOException e) {
            String s = String.format("Load file <%s> error <%s>", path, e);
            throw new RuntimeException(s);
        }

        return ResponseEntity.ok().
                contentType(MediaType.IMAGE_PNG).
                contentType(MediaType.IMAGE_JPEG).
                body(content);
    }
}

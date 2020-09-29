package picknewbie.ssm.controller;

import picknewbie.ssm.Utility;
import org.springframework.boot.autoconfigure.mail.MailProperties;
import org.springframework.mail.MailException;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Component
class MailTask {
    private final MailSender sender;
    private final MailProperties mailProperties;

    public MailTask(MailProperties mailProperties, MailSender sender) {
        this.sender = sender;
        this.mailProperties = mailProperties;
    }


    @Async
    public void sendMailAsync(String address, String title, String content) {
        Utility.log("异步发送邮件");
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom(mailProperties.getUsername());
        mailMessage.setSubject(title);
        mailMessage.setTo(address);
        mailMessage.setText(content);
        try {
            sender.send(mailMessage);
        } catch (MailException ex) {
            System.err.println(ex.getMessage());
        }
    }

    public void sendMail(String address, String title, String content) {
        Utility.log("同步发送邮件");
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom(mailProperties.getUsername());
        mailMessage.setSubject(title);
        mailMessage.setTo(address);
        mailMessage.setText(content);
        try {
            sender.send(mailMessage);
        } catch (MailException ex) {
            System.err.println(ex.getMessage());
        }
    }
}


@Controller
@RequestMapping("/mail")
public class MailController {

    private MailTask mailTask;

    public MailController(MailTask mailTask) {
        this.mailTask = mailTask;
    }

    @GetMapping("/index")
    public ModelAndView index() {
        return new ModelAndView("mail/index");
    }

    @PostMapping("/send")
    @ResponseBody
    public String send(String address, String title, String content) {
        if (address != null && title != null && content != null) {
            this.mailTask.sendMail(address, title, content);
            Utility.log("发送邮件完毕");
        }
        return "发送成功";
    }

    @PostMapping("/send/async")
    @ResponseBody
    public String sendAsync(String address, String title, String content) {
        if (address != null && title != null && content != null) {
            this.mailTask.sendMailAsync(address, title, content);
            Utility.log("发送邮件完毕");
        }
        return "发送成功";
    }
}

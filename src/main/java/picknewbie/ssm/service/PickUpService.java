package picknewbie.ssm.service;


import org.springframework.stereotype.Service;
import picknewbie.ssm.Utility;
import picknewbie.ssm.mapper.PickUpMapper;
import picknewbie.ssm.mapper.UserMapper;
import picknewbie.ssm.model.NewbieListModel;
import picknewbie.ssm.model.UserModel;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class PickUpService {
    private PickUpMapper pickUpMapper;

    public PickUpService(PickUpMapper pickUpMapper) {
        this.pickUpMapper = pickUpMapper;
    }

    
    public NewbieListModel findNewbiesByVolunteerId(String id) {
        // 找到志愿者对应的所有新生
        // 传入的是 志愿者的学号 schoolId
        return this.pickUpMapper.findNewbiesByVolunteerId(id);
    }
    
    public UserModel findByVolunteerId(String id) {
        // 找到新生对应的一个志愿者
        // 传入的是 志愿者的学号 schoolId
        return pickUpMapper.findByVolunteerId(id);
    }

    public UserModel findVolunteer(String id) {
        // 找到新生对应的一个志愿者
        // 传入的是 志愿者的学号 schoolId
        return pickUpMapper.findVolunteer(id);
    }

}

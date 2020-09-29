package picknewbie.ssm.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import picknewbie.ssm.model.NewbieListModel;
import picknewbie.ssm.model.UserModel;

import java.util.List;

@Repository
@Mapper
public interface PickUpMapper {

    NewbieListModel findNewbiesByVolunteerId(String id);

    UserModel findByVolunteerId(String id);

    UserModel findVolunteer(String id);

}

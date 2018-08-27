package trust.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.common.Mapper;
import trust.mapper.TeamMapper;
import trust.service.TeamService;
@Service
public class TeamServiceImpl extends BaseServiceImpl implements TeamService {

    @Autowired
    TeamMapper mapper;

    @Override
    public Mapper ini() {
        return mapper;
    }
}

package trust.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.common.Mapper;
import trust.mapper.RollMapper;
import trust.service.RollService;

@Service
public class RollServiceImpl extends BaseServiceImpl implements RollService  {

    @Autowired
    RollMapper mappper;

    @Override
    public Mapper ini() {
        return mappper;
    }
}

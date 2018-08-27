package trust.serviceimpl;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.common.Mapper;
import trust.mapper.IllnessMapper;
import trust.pojo.Illness;
import trust.service.IllnessService;

import java.util.List;

@Service
public class IllnessServiceImpl  extends BaseServiceImpl implements IllnessService {

    @Autowired
    IllnessMapper mapper;

    @Override
    public Mapper ini() {
        return mapper;
    }

}

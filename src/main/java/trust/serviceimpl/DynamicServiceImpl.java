package trust.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.common.Mapper;
import trust.mapper.DynamicMapper;
import trust.service.DynamicService;

@Service
public class DynamicServiceImpl extends BaseServiceImpl implements DynamicService {

    @Autowired
    DynamicMapper mapper;
    @Override
    public Mapper ini() {
        return mapper;
    }
}

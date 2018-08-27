package trust.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.common.Mapper;
import trust.mapper.AdminMapper;
import trust.service.AdminService;

/**
 * @program: Trust
 * @description:
 * @author: xiaofei
 * @create: 2018-08-22 18:13
 **/
@Service
public class AdminServiceImpl extends BaseServiceImpl implements AdminService  {

    @Autowired
    AdminMapper adminMapper;

    @Override
    public Mapper ini() {
        return adminMapper;
    }
}

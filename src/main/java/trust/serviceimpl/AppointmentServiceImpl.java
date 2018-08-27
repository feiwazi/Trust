package trust.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.common.Mapper;
import trust.mapper.AppointmentMapper;
import trust.service.AppointmentService;

/**
 * @program: Trust
 * @description: 预约serviceimpl
 * @author: xiaofei
 * @create: 2018-08-18 16:16
 **/
@Service
public class AppointmentServiceImpl extends BaseServiceImpl implements AppointmentService {

    @Autowired
    AppointmentMapper appointmentMapper;

    @Override
    public Mapper ini() {
        return appointmentMapper;
    }
}

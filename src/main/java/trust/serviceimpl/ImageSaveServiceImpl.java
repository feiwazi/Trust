package trust.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.common.Mapper;
import trust.mapper.ImageSaveMapper;
import trust.service.ImageSaveService;
@Service
public class ImageSaveServiceImpl extends BaseServiceImpl implements ImageSaveService {

    @Autowired
    ImageSaveMapper mapper;

    @Override
    public Mapper ini() {
        return mapper;
    }
}

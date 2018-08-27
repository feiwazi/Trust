package trust.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.common.Mapper;
import trust.mapper.ArticleMapper;
import trust.service.ArticleService;

@Service
public class ArticleServiceImpl extends BaseServiceImpl implements ArticleService {

    @Autowired
    ArticleMapper mapper;
    @Override
    public Mapper ini() {
        return mapper;
    }
}

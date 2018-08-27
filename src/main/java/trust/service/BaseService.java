package trust.service;

import org.apache.ibatis.session.RowBounds;
import trust.pojo.BasePojo;
import trust.pojo.entity.Page;

import java.util.List;

/**
 * 服务基接口
 */
public interface BaseService {
    /**
     * 增加
     *
     * @param pojo
     * @return
     */
    boolean add(BasePojo pojo);

    /**
     * 删除
     *
     * @param pojo
     * @return
     */
    boolean delete(BasePojo pojo);

    /**
     * 修改
     *
     * @param pojo
     * @return
     */
    boolean modify(BasePojo pojo);

    /**
     * 查询全部
     *
     * @return
     */
    List<BasePojo> getAllList();

    /**
     * 查询
     *
     * @param pojo
     * @return
     */
    List<? extends BasePojo> getList(BasePojo pojo);

    /**
     * 分页
     * @param pojo
     * @return
     */
    Page getPageList(BasePojo pojo, RowBounds rowBounds);

    /**
     * 分段
     * @param pojo
     * @return
     */
     List<? extends BasePojo> getSectionList(BasePojo pojo, RowBounds rowBounds);

    /**
     * 模糊查询
     *
     * @param pojo
     * @return
     */
    List<? extends BasePojo> getVagueList(BasePojo pojo);

    /**
     * 查询单个值
     *
     * @param pojo
     * @return
     */
    BasePojo getPojo(BasePojo pojo);

    /**
     * 获取总数
     *
     * @param pojo
     * @return
     */
    int getCount(BasePojo pojo);

    /**
     * 获取页数
     *
     * @param count
     * @param size
     * @return
     */
    int getPageCount(int count, int size);
}

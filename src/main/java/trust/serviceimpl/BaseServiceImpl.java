package trust.serviceimpl;

import org.apache.ibatis.session.RowBounds;
import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.entity.Example;
import trust.pojo.BasePojo;
import trust.pojo.entity.Page;
import trust.service.BaseService;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

/**
 * 服务实现
 */
public abstract class BaseServiceImpl implements BaseService {

    Mapper baseDao;

    /**
     * 获取mapper方法 以操作数据库
     *
     * @return
     */
    public abstract Mapper ini();


    @Override
    public boolean add(BasePojo pojo) {
        baseDao = this.ini();
        return baseDao.insert(pojo) == 1;
    }

    @Override
    public boolean delete(BasePojo pojo) {
        baseDao = this.ini();
        int r = baseDao.delete(pojo);
        return r == 1;
    }

    @Override
    public boolean modify(BasePojo pojo) {
        baseDao = this.ini();
        return baseDao.updateByPrimaryKey(pojo) == 1;
    }

    @Override
    public List<BasePojo> getAllList() {
        baseDao = this.ini();
        return baseDao.selectAll();
    }

    @Override
    public List<? extends BasePojo> getVagueList(BasePojo pojo) {
        Class clazz = pojo.getClass();
        Example e = new Example(clazz);
        Example.Criteria c = e.createCriteria();
        for (Method m : clazz.getMethods()) {
            String temp = m.getName();
            if (temp.indexOf("get") != -1 && !temp.equals("getClass")) {
                String name = temp.replace("get", "").toLowerCase();
                try {
                    Object value = m.invoke(pojo);
                    value=value == null ? null : value.toString();
                    if(value!=null){
                        c.andLike(name, "%"+value+"%");
                    }
                } catch (IllegalAccessException e1) {
                    e1.printStackTrace();
                } catch (InvocationTargetException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return baseDao.selectByExample(e);
    }

    @Override
    public List<? extends BasePojo> getList(BasePojo pojo) {
        baseDao = this.ini();
        return baseDao.select(pojo);
    }

    @Override
    public Page getPageList(BasePojo pojo, RowBounds rowBounds) {
        baseDao=this.ini();
        int current = (rowBounds.getOffset() * rowBounds.getLimit()) - rowBounds.getLimit();
        int count = getCount(pojo);
        int pagecount=getPageCount(count,rowBounds.getLimit());
        RowBounds temp=new RowBounds(current,rowBounds.getLimit());
        List<BasePojo> lb = baseDao.selectByRowBounds(pojo,temp);
        Page p = new Page(rowBounds.getOffset(), count, rowBounds.getLimit(), pagecount, lb);
        return p;
    }


    @Override
    public List<? extends BasePojo> getSectionList(BasePojo pojo, RowBounds rowBounds) {
        baseDao = this.ini();
        return  baseDao.selectByRowBounds(pojo,rowBounds);
    }

    @Override
    public BasePojo getPojo(BasePojo pojo) {
        baseDao = this.ini();
        return getList(pojo).get(0);
    }

    @Override
    public int getCount(BasePojo pojo) {
        baseDao = this.ini();
        return baseDao.selectCount(pojo);
    }

    @Override
    public int getPageCount(int count, int size) {
        return (count + size - 1) / size;
    }

}

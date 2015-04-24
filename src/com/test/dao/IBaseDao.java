package com.test.dao;

import com.test.model.BaseModel;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Administrator on 2015/4/22 0022.
 */
public interface IBaseDao <T extends BaseModel,PK extends Serializable>{


    /**
     * 保存数据
     * @param t
     */
    public void save(T t);

    /**
     * 删除数据
     * @param t
     */
    public void delete(T t);

    /**
     * 修改数据
     * @param t
     */
    public void update(T t);

    /**
     * 通过sql语句，查询
     * @param sqlStr
     * @return
     */
    public List<T> get(PK sqlStr);
}

package com.test.dao;

import com.test.model.BaseModel;

import java.util.List;

/**
 * Created by Administrator on 2015/4/22 0022.
 */
public interface IBaseDao <T extends BaseModel>{
    /**
     * 获取所有数据
     * @return
     */
    public List<T> getAll();

}

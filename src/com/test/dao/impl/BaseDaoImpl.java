package com.test.dao.impl;

import com.test.dao.IBaseDao;
import com.test.model.BaseModel;
import org.hibernate.SessionFactory;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Administrator on 2015/4/22 0022.
 */
public class BaseDaoImpl <T extends BaseModel,PK extends Serializable> implements IBaseDao <T,PK> {

    protected SessionFactory sessionFactory ;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void save(T t) {
        sessionFactory.getCurrentSession().save(t);
    }

    @Override
    public void delete(T t) {
        sessionFactory.getCurrentSession().delete(t);
    }

    @Override
    public void update(T t) {
        sessionFactory.getCurrentSession().update(t);
    }

    @Override
    public List<T> get(PK sqlStr) {
        return (List<T>)sessionFactory.getCurrentSession().createSQLQuery(sqlStr.toString()).list();
    }
}

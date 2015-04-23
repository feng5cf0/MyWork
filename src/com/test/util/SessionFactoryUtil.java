package com.test.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


/**
 * Created by Administrator on 2015/4/22 0022.
 *
 * 在独立使用Hibernate时使用此方法，与Spring结合时，SessionFactory将由Spring创建
 */
public class SessionFactoryUtil {

    public static SessionFactory getSessionFactory(){

        SessionFactory sessionFactory = null;

        //加载与数据库相关的配置
        Configuration cfg = new Configuration();
        //cfg.configure("/WEB-INF/classes/hibernate.cfg.xml");
        cfg.configure();
        sessionFactory = cfg.buildSessionFactory();

        return sessionFactory;
    }

}

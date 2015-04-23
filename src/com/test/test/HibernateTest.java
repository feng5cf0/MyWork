package com.test.test;

import com.test.model.Department;
import com.test.util.SessionFactoryUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 * Created by Administrator on 2015/4/22 0022.
 */
public class HibernateTest {

    public static void main(String[] args){
        SessionFactory sessionFactory = SessionFactoryUtil.getSessionFactory();
        Session session = null;
        try{
            session = sessionFactory.openSession();

            Department d = new Department();
            d.setDeptId("124");
            d.setDeptName("区域平台事业部");
            d.setManagerId("1234");

            session.beginTransaction();
            session.save(d);

            session.getTransaction().commit();

        }catch(Exception e){
            System.out.println("sessionFactory创建失败！");
            e.printStackTrace();
        }finally{
            session.close();
        }
    }
}

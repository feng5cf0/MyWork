package com.test.dao.impl;

import com.test.model.Department;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

/**
 * Created by Administrator on 2015/4/22 0022.
 */
public class DepartmentDao{

    private SessionFactory sessionFactory;

    public Department getData(){
        Department department ;

        Session session = this.sessionFactory.openSession();
        session.beginTransaction();

        department = (Department)session.get(Department.class,"123");

        session.close();
        return department;
    }

    public List<Department> getAll(){
        List<Department> departmentList ;

        Session session = this.sessionFactory.openSession();
        session.beginTransaction();

        departmentList = session.createSQLQuery("SELECT * from depart").list();
        //departmentList = session.createQuery("select from").list();

        return departmentList;
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

}

package com.test.action;


import com.opensymphony.xwork2.ActionSupport;
import com.test.dao.impl.DepartmentDao;
import com.test.model.Department;

import java.util.List;

/**
 * Created by Administrator on 2015/4/22 0022.
 */
public class DepartmentAction extends ActionSupport {

    private DepartmentDao departmentDao;

    public String getData(){

        System.out.println("==============================ok");
        List<Department> list = this.departmentDao.getAll();
        System.out.println("***********************test"+list.size());
       //System.out.println(department.getDeptId()+"/"+department.getDeptName()+"/"+department.getManagerId());
        return "getData";
    }

    public DepartmentDao getDepartmentDao() {
        return departmentDao;
    }
    public void setDepartmentDao(DepartmentDao departmentDao) {
        this.departmentDao = departmentDao;
    }
}

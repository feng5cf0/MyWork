package com.test.action;

import com.test.dao.IBaseDao;
import com.test.dao.impl.BaseDaoImpl;
import com.test.dao.impl.DepartmentDao;
import com.test.model.Department;

import java.util.List;

/**
 * Created by Administrator on 2015/4/22 0022.
 */
public class DepartmentAction extends BaseAction {

    private IBaseDao<Department,String> departmentDao;
   // private IBaseDao baseDao;

    public String getData(){

        System.out.println("==============================ok");
        //List<Department> list = this.departmentDao.getAll();
        Department dept = new Department();
        dept.setDeptId("wow");
        dept.setDeptName("heh");
        dept.setManagerId("mang");
       //this.departmentDao.Save(dept);
        this.departmentDao.save(dept);

        return "getData";
    }

    public void setDepartmentDao(IBaseDao<Department, String> departmentDao) {
        this.departmentDao = departmentDao;
    }
}

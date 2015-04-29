package com.test.service.impl;

import com.test.dao.IBaseDao;
import com.test.model.Department;
import com.test.service.IDepartmentService;

import java.util.List;

/**
 * Created by Administrator on 2015/4/29 0029.
 */
public class DepartmentService implements IDepartmentService{
    private IBaseDao departmentDao;
    @Override
    public List<Department> getAll() {

        return this.departmentDao.get("select * from department");
    }

    public void setDepartmentDao(IBaseDao departmentDao) {
        this.departmentDao = departmentDao;
    }
}

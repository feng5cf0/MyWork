package com.test.model;

import javax.persistence.*;

/**
 * Created by Administrator on 2015/4/21 0021.
 */

public class Department extends BaseModel{

    private String deptId;
    private String deptName;
    private String managerId;

    public String getDeptId() {
        return deptId;
    }
    public void setDeptId(String deptId) {
        this.deptId = deptId;
    }
    public String getDeptName() {
        return deptName;
    }
    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }
    public String getManagerId() {
        return managerId;
    }
    public void setManagerId(String managerId) {
        this.managerId = managerId;
    }
}

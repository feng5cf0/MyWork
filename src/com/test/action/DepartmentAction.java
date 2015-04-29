package com.test.action;

import com.test.dao.IBaseDao;
import com.test.dao.impl.BaseDaoImpl;
import com.test.dao.impl.DepartmentDao;
import com.test.model.Department;
import com.test.service.IDepartmentService;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by Administrator on 2015/4/22 0022.
 */
public class DepartmentAction extends BaseAction {

    private IDepartmentService departmentService;
   // private IBaseDao baseDao;

    /**
     * 向页面传输数据，json格式。
     * @return
     */
    public String getDataForPage(){

        String resultStr = null;

        resultStr = "{\"CustomerID\":\"abc123\",\"CompanyName\":\"zoe\",\"ContactName\":\"mgz\",\"City\":\"xm\"}";
        System.out.println(resultStr);
        String jsonStr = "{\"Rows\":[{\"CustomerID\":\"abc123\",\"CompanyName\":\"zoe\",\"ContactName\":\"mgz\",\"City\":\"xm\"}],\"Total\":1}";
        System.out.println(jsonStr);
        PrintWriter out = null;
        try {
            out = getRespose().getWriter();
            out.write(jsonStr);

            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void setDepartmentService(IDepartmentService departmentService) {
        this.departmentService = departmentService;
    }
}
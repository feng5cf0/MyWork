package com.test.action;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2015/4/30 0030.
 */
public class ZTreeAction extends BaseAction {

    public String getData(){
        getResponse().setCharacterEncoding("utf-8");

        try {
            PrintWriter out = getResponse().getWriter();

            String json ="[{\"id\":\"1\",\"pId\":\"0\",\"name\":\"张学友\",\"isParent\":true}," +
                    "{\"id\":\"11\",\"pId\":\"1\",\"name\":\"吻别\"}," +
                    "{\"id\":\"2\",\"pId\":\"0\",\"name\":\"刘德华\"}," +
                    "{\"id\":\"21\",\"pId\":\"2\",\"name\":\"练习\"}," +
                    "{\"id\":\"100\",\"pId\":\"21\",\"name\":\"好听\"}]";

            out.write(json);
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;

    }
}

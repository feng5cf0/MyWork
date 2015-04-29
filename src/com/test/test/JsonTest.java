package com.test.test;

import com.test.model.Department;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2015/4/29 0029.
 */
public class JsonTest {

    public static void main(String[] args){
        JsonTest test = new JsonTest();
        test.beanListToJson();
    }

    //一般数组转化为json格式
    public void arrayToJson(){
        boolean[] boolData = new boolean[]{true,false,true};

        JSONArray jsonArray = JSONArray.fromObject(boolData);
        System.out.println(jsonArray);
    }

    //一般对象的list转化为json格式
    public void listToJson(){
        List list = new ArrayList();
        list.add("first");
        list.add("second");

        JSONArray jsonArray = JSONArray.fromObject(list);
        System.out.println(jsonArray);
    }

    //map对象转化为json格式，使用JSONObject     结果：{"sex":"男","name":"tom","age":12}
    public void mapToJson(){
        Map map = new HashMap();
        map.put("name","tom");
        map.put("age",12);
        map.put("sex","男");

        JSONObject jobject = JSONObject.fromObject(map);
        System.out.print(jobject);
    }

    public void beanListToJson(){
        List list = new ArrayList();

        for(int i=0;i<10;i++){
            Department department = new Department();
            department.setDeptId("abc"+i);
            department.setDeptName("haha"+i);

            list.add(department);
        }

        JSONArray js = JSONArray.fromObject(list);

        System.out.println(js);


    }

}

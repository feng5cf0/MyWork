package com.test.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Created by Administrator on 2015/4/23 0023.
 */
public class BaseAction extends ActionSupport{

    public ServletContext getContext(){
        return ServletActionContext.getServletContext();
    }

    public HttpServletRequest getReqeust(){
        return ServletActionContext.getRequest();
    }

    public HttpServletResponse getResponse(){
        return ServletActionContext.getResponse();
    }

    public HttpSession getSession(){
        return ServletActionContext.getRequest().getSession();
    }
}

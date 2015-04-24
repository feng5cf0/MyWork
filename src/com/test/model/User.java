package com.test.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Administrator on 2015/4/23 0023.
 */

@Entity
@Table(name = "user")
public class User extends BaseModel {

    @Id
    @Column(name = "userid")
    private String userId;

    @Column(name="username")
    private String userName;

    public String getUserId() {
        return userId;
    }
    public void setUserId(String userId) {
        this.userId = userId;
    }
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
}

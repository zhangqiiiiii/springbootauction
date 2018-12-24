package com.baizhi.springmvc.dao;

import com.baizhi.springmvc.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    //��¼
    public User login(@Param("name") String name, @Param("psw") String psw);

    //ע��
    public void zhuce(User user);
}

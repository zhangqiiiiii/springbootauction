package com.baizhi.springmvc.service;

import com.baizhi.springmvc.entity.User;

public interface UserService {
    //��¼
    public User login(String name, String psw);

    //ע��
    public void zhuce(User user);
}

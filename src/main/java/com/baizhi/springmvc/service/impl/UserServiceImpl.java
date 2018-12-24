package com.baizhi.springmvc.service.impl;

import com.baizhi.springmvc.dao.UserDao;
import com.baizhi.springmvc.entity.User;
import com.baizhi.springmvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;


    //��¼
    public User login(String name, String psw) {

        return userDao.login(name, psw);
    }


    //ע��
    public void zhuce(User user) {
        userDao.zhuce(user);

    }

}

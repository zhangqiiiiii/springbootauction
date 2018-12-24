package com.baizhi.springmvc.controller;


import com.baizhi.springmvc.entity.User;
import com.baizhi.springmvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;


@Controller
public class UserController {
    @Autowired
    private UserService us;

    // ��¼
    @RequestMapping("/login")
    public String login(String name, String psw, HttpSession session,
                        String number) {
        User user = us.login(name, psw);
        String sessionkaptcha = (String) session.getAttribute("kaptcha");
        if (user != null && sessionkaptcha.equalsIgnoreCase(number)) {
            session.setAttribute("user", user);
            return "redirect:/selectAlls.do";
        } else {
            return "forward:login.jsp";
        }
		/*if (user != null) {
			session.setAttribute("user", user);
			return "redirect:/selectAlls.do";
		} else {
			return "forward:login.jsp";
		}*/
    }

    // ע��
    @RequestMapping("/zhuce")
    public String zhuce(HttpSession session, User user, String number) {
        String sessionkaptcha = (String) session.getAttribute("kaptcha");
        if (sessionkaptcha.equalsIgnoreCase(number)) {
            us.zhuce(user);
            return "login";
        } else {
            return "zhuce";
        }

    }

}

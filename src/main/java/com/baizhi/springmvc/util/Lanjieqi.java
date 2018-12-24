package com.baizhi.springmvc.util;

import com.baizhi.springmvc.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Lanjieqi implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1,
                             Object arg2) throws Exception {
        //����¼���ܷ���
        HttpSession session = arg0.getSession();
        User user = (User) session.getAttribute("user");
        if (user != null) {
            //�Ѿ���¼  ����
            return true;
        } else {
            //�ض��򵽵�¼����
            arg1.sendRedirect("login.jsp");
            return false;
        }

    }

    @Override
    public void afterCompletion(HttpServletRequest arg0,
                                HttpServletResponse arg1, Object arg2, Exception arg3)
            throws Exception {
        // TODO Auto-generated method stub

    }

    @Override
    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
                           Object arg2, ModelAndView arg3) throws Exception {
        // TODO Auto-generated method stub

    }


}

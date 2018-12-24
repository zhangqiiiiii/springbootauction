package com.baizhi.springmvc.controller;

import com.google.code.kaptcha.Producer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;

@Controller
public class KaptchaController {

    @Autowired
    private Producer producer;

    @RequestMapping("/kaptcha")
    public void kaptcha(HttpSession session, HttpServletResponse response)
            throws IOException {
        // 1.�����ı�����
        String text = producer.createText();
        // 2.���ı����ݷŵ�session��
        session.setAttribute("kaptcha", text);
        // 3.�����ɵ��ı����ݷŵ�һ��ͼƬ�� ��һ��ͼƬ
        BufferedImage image = producer.createImage(text);
        // 4.ͨ��ͼƬ�����࣬��ͼƬд�뵽��Ӧ�����
        ImageIO.write(image, "jpg", response.getOutputStream());

    }
}

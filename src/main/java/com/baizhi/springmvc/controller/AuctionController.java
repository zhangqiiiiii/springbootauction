package com.baizhi.springmvc.controller;

import com.baizhi.springmvc.entity.Auction;
import com.baizhi.springmvc.service.AuctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Map;

@Controller
public class AuctionController {
    @Autowired
    private AuctionService as;


    @RequestMapping("/selectAlls")
    public String selectAlls(String name, String desc, Date startTime,
                             Date endTime, Double price, Map map) {

        /*
         * @RequestMapping("/selectAll") public String selectAll(Map map){
         * map.put("auctionlist",as.selectAll()); return"list"; }
         */
        map.put("auctionlist",
                as.selectAlls(name, desc, startTime, endTime, price));
        return "list";
    }

    @RequestMapping("/add")
    public String add(Auction a, MultipartFile wenjian,
                      HttpServletRequest request) throws IllegalStateException,
            IOException {
        System.out.println(a);
        // ��ȡ�ļ�������
        String fileName = wenjian.getOriginalFilename();
        // �ļ���������
        fileName = new Date().getTime() + "_" + fileName;
        // �ѽ��յ����ļ�ת���ɴ����ļ�
        // wenjian.transferTo(new
        // File("F:\\Tomcat\\apache-tomcat-7.0.72\\webapps\\SpringmvcAuction\\wenjian"+fileName));
        // �����ļ������ֻ�ȡ����·��
        String realPath = request.getRealPath("img");
        wenjian.transferTo(new File(realPath + "\\" + fileName));
        a.setAuction_pic(fileName + ".jpg");
        as.add(a);
        return "redirect:/selectAlls.do";
    }

    @RequestMapping("/delete")
    public String delete(int id) {
        as.delete(id);
        return "redirect:/selectAlls.do";
    }

    @RequestMapping("/selectOne")
    public String selectOne(int id, Map map) {
        map.put("a", as.selectOne(id));
        return "update";
    }

    @RequestMapping("/update")
    public String update(Auction a, MultipartFile wenjian,
                         HttpServletRequest request) throws IllegalStateException,
            IOException {
        // ��ȡ�ļ�������
        String fileName = wenjian.getOriginalFilename();
        if (!"".equals(fileName)) {
            // �ѽ��յ����ļ�ת���ɴ����ļ�
            // �����ļ������ֻ�ȡ����·��
            String realPath = request.getRealPath("img");
            wenjian.transferTo(new File(realPath + "\\" + fileName));
            // �ļ���������
            fileName = new Date().getTime() + "_" + fileName;
            a.setAuction_pic(fileName + ".jpg");
        }
        as.update(a);
        return "redirect:/selectAlls.do";
    }

}

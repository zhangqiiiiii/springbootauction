package com.baizhi.springmvc.controller;

import com.baizhi.springmvc.dto.RecordDTO;
import com.baizhi.springmvc.entity.Auction;
import com.baizhi.springmvc.entity.Record;
import com.baizhi.springmvc.entity.User;
import com.baizhi.springmvc.service.AuctionService;
import com.baizhi.springmvc.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class RecordController {
    @Autowired
    private RecordService ars;
    @Autowired
    private AuctionService as;

    @RequestMapping("/select")
    public String select(Map map, int auction_id, Auction auction) {
        auction = as.selectOne(auction_id);
        System.out.println("----" + auction);
        map.put("auction", auction);
        List<RecordDTO> list = ars.select(auction_id);
        System.out.println("////" + list);
        map.put("list", list);
        return "jingpai1";
    }

    @RequestMapping("/insert")
    public String insert(Record r, HttpSession session) {
        User user = (User) session.getAttribute("user");
        r.setUser_id(user.getUser_id());
        r.setAuction_time(new Date());
        ars.insert(r);
        return "redirect:select.do?auction_id=" + r.getAuction_id();
    }

    @RequestMapping("/wjsc")
    public String wjsc(int id) {
        ars.wjsc(id);
        return "redirect:delete.do?id=" + id;
    }

}

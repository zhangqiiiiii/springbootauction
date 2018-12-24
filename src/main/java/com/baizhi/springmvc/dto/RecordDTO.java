package com.baizhi.springmvc.dto;

import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class RecordDTO {
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date auction_time;
    private String auction_price;
    private String user_name;

    public Date getAuction_time() {
        return auction_time;
    }

    public void setAuction_time(Date auction_time) {
        this.auction_time = auction_time;
    }

    public String getAuction_price() {
        return auction_price;
    }

    public void setAuction_price(String auction_price) {
        this.auction_price = auction_price;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    @Override
    public String toString() {
        return "RecordDTO [auction_time=" + auction_time + ", auction_price="
                + auction_price + ", user_name=" + user_name + "]";
    }

    public RecordDTO(Date auction_time, String auction_price, String user_name) {
        super();
        this.auction_time = auction_time;
        this.auction_price = auction_price;
        this.user_name = user_name;
    }

    public RecordDTO() {
        super();
        // TODO Auto-generated constructor stub
    }

}

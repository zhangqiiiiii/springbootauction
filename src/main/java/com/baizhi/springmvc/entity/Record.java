package com.baizhi.springmvc.entity;

import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;


public class Record {
    private int id;
    private int user_id;
    private int auction_id;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date auction_time;
    private int auction_price;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getAuction_id() {
        return auction_id;
    }

    public void setAuction_id(int auction_id) {
        this.auction_id = auction_id;
    }

    public Date getAuction_time() {
        return auction_time;
    }

    public void setAuction_time(Date auction_time) {
        this.auction_time = auction_time;
    }

    public int getAuction_price() {
        return auction_price;
    }

    public void setAuction_price(int auction_price) {
        this.auction_price = auction_price;
    }

    @Override
    public String toString() {
        return "Record [id=" + id + ", user_id=" + user_id + ", auction_id="
                + auction_id + ", auction_time=" + auction_time
                + ", auction_price=" + auction_price + "]";
    }

    public Record(int id, int user_id, int auction_id, Date auction_time,
                  int auction_price) {
        super();
        this.id = id;
        this.user_id = user_id;
        this.auction_id = auction_id;
        this.auction_time = auction_time;
        this.auction_price = auction_price;
    }

    public Record(int user_id, int auction_id, Date auction_time,
                  int auction_price) {
        super();
        this.user_id = user_id;
        this.auction_id = auction_id;
        this.auction_time = auction_time;
        this.auction_price = auction_price;
    }

    public Record() {
        super();
        // TODO Auto-generated constructor stub
    }

}

package com.baizhi.springmvc.service;

import com.baizhi.springmvc.entity.Auction;

import java.util.Date;
import java.util.List;

public interface AuctionService {
    public List<Auction> selectAll();

    public void add(Auction a);

    public void delete(int id);

    public Auction selectOne(int id);

    public void update(Auction a);

    public List<Auction> selectAlls(String name, String desc, Date startTime, Date endTime, Double price);
}

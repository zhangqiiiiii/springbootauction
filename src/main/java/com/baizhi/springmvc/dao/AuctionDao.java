package com.baizhi.springmvc.dao;

import com.baizhi.springmvc.entity.Auction;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface AuctionDao {
    public List<Auction> selectAll();

    public void add(Auction a);

    public void delete(int id);

    public Auction selectOne(int id);

    public void update(Auction a);

    public List<Auction> selectAlls(@Param("name") String name, @Param("desc") String desc, @Param("startTime") Date startTime, @Param("endTime") Date endTime, @Param("price") Double price);
}

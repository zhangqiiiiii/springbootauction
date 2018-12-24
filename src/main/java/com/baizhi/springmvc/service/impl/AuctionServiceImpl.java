package com.baizhi.springmvc.service.impl;

import com.baizhi.springmvc.dao.AuctionDao;
import com.baizhi.springmvc.entity.Auction;
import com.baizhi.springmvc.service.AuctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
@Transactional
public class AuctionServiceImpl implements AuctionService {
    @Autowired
    private AuctionDao auctionDao;

    public void setAuctionDao(AuctionDao auctionDao) {
        this.auctionDao = auctionDao;
    }

    //��ѯ
    public List<Auction> selectAll() {

        return auctionDao.selectAll();
    }

    //���
    public void add(Auction a) {
        auctionDao.add(a);

    }

    //ɾ��
    public void delete(int id) {
        auctionDao.delete(id);

    }

    //��ѯһ������
    public Auction selectOne(int id) {

        return auctionDao.selectOne(id);
    }

    //�޸�
    public void update(Auction a) {
        auctionDao.update(a);

    }

    //�������ѯ+ȫ����ѯ
    public List<Auction> selectAlls(String name, String desc, Date startTime,
                                    Date endTime, Double price) {

        return auctionDao.selectAlls(name, desc, startTime, endTime, price);
    }

}

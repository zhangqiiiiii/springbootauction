package com.baizhi.springmvc.service.impl;

import com.baizhi.springmvc.dao.RecordDao;
import com.baizhi.springmvc.dto.RecordDTO;
import com.baizhi.springmvc.entity.Record;
import com.baizhi.springmvc.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class RecordServiceImpl implements RecordService {
    @Autowired
    private RecordDao ard;


    @Override
    public List<RecordDTO> select(int id) {

        return ard.select(id);
    }


    @Override
    public void insert(Record ar) {
        ard.insert(ar);
    }


    @Override
    public void wjsc(int id) {
        ard.delete(id);

    }


}

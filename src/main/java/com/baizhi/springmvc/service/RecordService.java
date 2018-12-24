package com.baizhi.springmvc.service;

import com.baizhi.springmvc.dto.RecordDTO;
import com.baizhi.springmvc.entity.Record;

import java.util.List;

public interface RecordService {
    public List<RecordDTO> select(int id);

    public void insert(Record ar);

    public void wjsc(int id);

}

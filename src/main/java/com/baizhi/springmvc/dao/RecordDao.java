package com.baizhi.springmvc.dao;

import com.baizhi.springmvc.dto.RecordDTO;
import com.baizhi.springmvc.entity.Record;

import java.util.List;

public interface RecordDao {
    public List<RecordDTO> select(int auction_id);

    public void insert(Record ar);

    /**
     * ���ɾ��
     *
     * @param id
     */
    public void delete(int id);
}

package com.bank.dao;

import java.util.List;

import com.bank.po.TransRecord;
import com.bank.po.TransRecordExample;
import org.apache.ibatis.annotations.Param;

public interface TransRecordMapper {
    long countByExample(TransRecordExample example);

    int deleteByExample(TransRecordExample example);

    int deleteByPrimaryKey(Integer rid);

    int insert(TransRecord record);

    int insertSelective(TransRecord record);

    List<TransRecord> selectByExample(TransRecordExample example);

    TransRecord selectByPrimaryKey(Integer rid);

    int updateByExampleSelective(@Param("record") TransRecord record, @Param("example") TransRecordExample example);

    int updateByExample(@Param("record") TransRecord record, @Param("example") TransRecordExample example);

    int updateByPrimaryKeySelective(TransRecord record);

    int updateByPrimaryKey(TransRecord record);
}
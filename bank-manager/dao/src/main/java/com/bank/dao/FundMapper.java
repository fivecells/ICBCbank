package com.bank.dao;


import com.bank.pojo.po.Fund;
import com.bank.pojo.po.FundExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FundMapper {
    int countByExample(FundExample example);

    int deleteByExample(FundExample example);

    int deleteByPrimaryKey(Integer fundId);

    int insert(Fund record);

    int insertSelective(Fund record);

    List<Fund> selectByExample(FundExample example);

    Fund selectByPrimaryKey(Integer fundId);

    int updateByExampleSelective(@Param("record") Fund record, @Param("example") FundExample example);

    int updateByExample(@Param("record") Fund record, @Param("example") FundExample example);

    int updateByPrimaryKeySelective(Fund record);

    int updateByPrimaryKey(Fund record);
}
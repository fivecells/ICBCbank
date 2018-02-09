package com.bank.dao;


import com.bank.pojo.po.FundPer;
import com.bank.pojo.po.FundPerExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FundPerMapper {
    int countByExample(FundPerExample example);

    int deleteByExample(FundPerExample example);

    int insert(FundPer record);

    int insertSelective(FundPer record);

    List<FundPer> selectByExample(FundPerExample example);

    int updateByExampleSelective(@Param("record") FundPer record, @Param("example") FundPerExample example);

    int updateByExample(@Param("record") FundPer record, @Param("example") FundPerExample example);

    List<FundPer> selectFundPerDesc();
}
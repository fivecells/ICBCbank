package com.bank.dao;


import java.util.List;

import com.bank.po.FundPer;
import com.bank.po.FundPerExample;
import org.apache.ibatis.annotations.Param;

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
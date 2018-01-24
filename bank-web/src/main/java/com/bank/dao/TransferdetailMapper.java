package com.bank.dao;

import java.util.List;

import com.bank.po.Transferdetail;
import com.bank.po.TransferdetailExample;
import org.apache.ibatis.annotations.Param;

public interface TransferdetailMapper {
    long countByExample(TransferdetailExample example);

    int deleteByExample(TransferdetailExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Transferdetail record);

    int insertSelective(Transferdetail record);

    List<Transferdetail> selectByExample(TransferdetailExample example);

    Transferdetail selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Transferdetail record, @Param("example") TransferdetailExample example);

    int updateByExample(@Param("record") Transferdetail record, @Param("example") TransferdetailExample example);

    int updateByPrimaryKeySelective(Transferdetail record);

    int updateByPrimaryKey(Transferdetail record);
}
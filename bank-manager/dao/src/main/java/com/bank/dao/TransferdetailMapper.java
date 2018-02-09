package com.bank.dao;

import com.bank.pojo.po.TransferdetailExample;
import com.bank.pojo.po.Transferdetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;

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
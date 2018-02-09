package com.bank.dao;

import com.bank.pojo.po.WaiterInfo;
import com.bank.pojo.po.WaiterInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WaiterInfoMapper {
    int countByExample(WaiterInfoExample example);

    int deleteByExample(WaiterInfoExample example);

    int deleteByPrimaryKey(Integer waiterId);

    int insert(WaiterInfo record);

    int insertSelective(WaiterInfo record);

    List<WaiterInfo> selectByExample(WaiterInfoExample example);

    WaiterInfo selectByPrimaryKey(Integer waiterId);

    int updateByExampleSelective(@Param("record") WaiterInfo record, @Param("example") WaiterInfoExample example);

    int updateByExample(@Param("record") WaiterInfo record, @Param("example") WaiterInfoExample example);

    int updateByPrimaryKeySelective(WaiterInfo record);

    int updateByPrimaryKey(WaiterInfo record);
}
package com.bank.dao;

import com.bank.pojo.po.DrawInfo;
import com.bank.pojo.po.DrawInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DrawInfoMapper {
    int countByExample(DrawInfoExample example);

    int deleteByExample(DrawInfoExample example);

    int deleteByPrimaryKey(Integer drawId);

    int insert(DrawInfo record);

    int insertSelective(DrawInfo record);

    List<DrawInfo> selectByExample(DrawInfoExample example);

    DrawInfo selectByPrimaryKey(Integer drawId);

    int updateByExampleSelective(@Param("record") DrawInfo record, @Param("example") DrawInfoExample example);

    int updateByExample(@Param("record") DrawInfo record, @Param("example") DrawInfoExample example);

    int updateByPrimaryKeySelective(DrawInfo record);

    int updateByPrimaryKey(DrawInfo record);
}
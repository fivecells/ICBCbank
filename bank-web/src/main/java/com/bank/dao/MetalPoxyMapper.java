package com.bank.dao;

import com.bank.po.MetalPoxy;
import com.bank.po.MetalPoxyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MetalPoxyMapper {
    int countByExample(MetalPoxyExample example);

    int deleteByExample(MetalPoxyExample example);

    int deleteByPrimaryKey(Integer metalId);

    int insert(MetalPoxy record);

    int insertSelective(MetalPoxy record);

    List<MetalPoxy> selectByExample(MetalPoxyExample example);

    MetalPoxy selectByPrimaryKey(Integer metalId);

    int updateByExampleSelective(@Param("record") MetalPoxy record, @Param("example") MetalPoxyExample example);

    int updateByExample(@Param("record") MetalPoxy record, @Param("example") MetalPoxyExample example);

    int updateByPrimaryKeySelective(MetalPoxy record);

    int updateByPrimaryKey(MetalPoxy record);

}
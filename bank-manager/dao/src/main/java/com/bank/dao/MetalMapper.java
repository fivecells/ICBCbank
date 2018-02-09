package com.bank.dao;


import com.bank.pojo.po.Metal;
import com.bank.pojo.po.MetalExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MetalMapper {
    int countByExample(MetalExample example);

    int deleteByExample(MetalExample example);

    int deleteByPrimaryKey(Integer metalId);

    int insert(Metal record);

    int insertSelective(Metal record);

    List<Metal> selectByExample(MetalExample example);

    Metal selectByPrimaryKey(Integer metalId);

    int updateByExampleSelective(@Param("record") Metal record, @Param("example") MetalExample example);

    int updateByExample(@Param("record") Metal record, @Param("example") MetalExample example);

    int updateByPrimaryKeySelective(Metal record);

    int updateByPrimaryKey(Metal record);
}
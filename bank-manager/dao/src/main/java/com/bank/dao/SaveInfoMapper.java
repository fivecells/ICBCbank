package com.wenlong.dao;

import com.wenlong.pojo.po.SaveInfo;
import com.wenlong.pojo.po.SaveInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SaveInfoMapper {
    int countByExample(SaveInfoExample example);

    int deleteByExample(SaveInfoExample example);

    int deleteByPrimaryKey(Integer saveId);

    int insert(SaveInfo record);

    int insertSelective(SaveInfo record);

    List<SaveInfo> selectByExample(SaveInfoExample example);

    SaveInfo selectByPrimaryKey(Integer saveId);

    int updateByExampleSelective(@Param("record") SaveInfo record, @Param("example") SaveInfoExample example);

    int updateByExample(@Param("record") SaveInfo record, @Param("example") SaveInfoExample example);

    int updateByPrimaryKeySelective(SaveInfo record);

    int updateByPrimaryKey(SaveInfo record);
}
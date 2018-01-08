package com.wenlong.dao;

import com.wenlong.pojo.po.Staffinfo;
import com.wenlong.pojo.po.StaffinfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface StaffinfoMapper {
    int countByExample(StaffinfoExample example);

    int deleteByExample(StaffinfoExample example);

    int deleteByPrimaryKey(Integer staffId);

    int insert(Staffinfo record);

    int insertSelective(Staffinfo record);

    List<Staffinfo> selectByExample(StaffinfoExample example);

    Staffinfo selectByPrimaryKey(Integer staffId);

    int updateByExampleSelective(@Param("record") Staffinfo record, @Param("example") StaffinfoExample example);

    int updateByExample(@Param("record") Staffinfo record, @Param("example") StaffinfoExample example);

    int updateByPrimaryKeySelective(Staffinfo record);

    int updateByPrimaryKey(Staffinfo record);
}
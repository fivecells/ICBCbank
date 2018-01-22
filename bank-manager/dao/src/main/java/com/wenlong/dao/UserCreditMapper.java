package com.wenlong.dao;

import com.wenlong.pojo.po.UserCredit;
import com.wenlong.pojo.po.UserCreditExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserCreditMapper {
    int countByExample(UserCreditExample example);

    int deleteByExample(UserCreditExample example);

    int deleteByPrimaryKey(Integer creditId);

    int insert(UserCredit record);

    int insertSelective(UserCredit record);

    List<UserCredit> selectByExample(UserCreditExample example);

    UserCredit selectByPrimaryKey(Integer creditId);

    int updateByExampleSelective(@Param("record") UserCredit record, @Param("example") UserCreditExample example);

    int updateByExample(@Param("record") UserCredit record, @Param("example") UserCreditExample example);

    int updateByPrimaryKeySelective(UserCredit record);

    int updateByPrimaryKey(UserCredit record);
}
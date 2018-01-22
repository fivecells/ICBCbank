package com.bank.dao;


import com.bank.po.UserCard;
import com.bank.po.UserCardExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserCardMapper {
    int countByExample(UserCardExample example);

    int deleteByExample(UserCardExample example);

    int deleteByPrimaryKey(Long userCardId);

    int insert(UserCard record);

    int insertSelective(UserCard record);

    List<UserCard> selectByExample(UserCardExample example);

    UserCard selectByPrimaryKey(Long userCardId);

    int updateByExampleSelective(@Param("record") UserCard record, @Param("example") UserCardExample example);

    int updateByExample(@Param("record") UserCard record, @Param("example") UserCardExample example);

    int updateByPrimaryKeySelective(UserCard record);

    int updateByPrimaryKey(UserCard record);
}
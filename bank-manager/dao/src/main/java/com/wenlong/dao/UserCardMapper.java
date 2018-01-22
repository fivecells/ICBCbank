package com.wenlong.dao;

import com.wenlong.pojo.po.UserCard;
import com.wenlong.pojo.po.UserCardExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

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
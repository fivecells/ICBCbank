package com.bank.dao;

import com.bank.pojo.po.CompanyCard;
import com.bank.pojo.po.CompanyCardExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CompanyCardMapper {
    int countByExample(CompanyCardExample example);

    int deleteByExample(CompanyCardExample example);

    int deleteByPrimaryKey(Long companyCardId);

    int insert(CompanyCard record);

    int insertSelective(CompanyCard record);

    List<CompanyCard> selectByExample(CompanyCardExample example);

    CompanyCard selectByPrimaryKey(Long companyCardId);

    int updateByExampleSelective(@Param("record") CompanyCard record, @Param("example") CompanyCardExample example);

    int updateByExample(@Param("record") CompanyCard record, @Param("example") CompanyCardExample example);

    int updateByPrimaryKeySelective(CompanyCard record);

    int updateByPrimaryKey(CompanyCard record);
}
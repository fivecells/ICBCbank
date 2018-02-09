package com.bank.dao;

import com.wenlong.dto.Page;
import com.bank.pojo.po.WaiterInfo;
import com.bank.pojo.vo.WaiterInfoSearch;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface WaiterIFMapper {
    List<WaiterInfo> selectlistWaiterInfoByPage(Page page);

    List<WaiterInfo> selectlistWaiterInfoBySearch(@Param("waiterInfoSearch") WaiterInfoSearch waiterInfoSearch);
}

package com.wenlong.dao;

import com.wenlong.dto.Page;
import com.wenlong.pojo.po.WaiterInfo;
import com.wenlong.pojo.vo.WaiterInfoSearch;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface WaiterIFMapper {
    List<WaiterInfo> selectlistWaiterInfoByPage(Page page);

    List<WaiterInfo> selectlistWaiterInfoBySearch(@Param("waiterInfoSearch") WaiterInfoSearch waiterInfoSearch);
}

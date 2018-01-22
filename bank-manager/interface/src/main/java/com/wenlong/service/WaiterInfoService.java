package com.wenlong.service;

import com.wenlong.dto.Page;
import com.wenlong.dto.Result;
import com.wenlong.pojo.po.WaiterInfo;
import com.wenlong.pojo.vo.WaiterInfoSearch;

import java.util.List;

public interface WaiterInfoService {
    Result<WaiterInfo> listWaiterInfoByPage(Page page);

    WaiterInfo selectWaiterInfoById(Integer waiterId);

    int deleteWaiterInfoById(List<Integer> waiterIds);

    Result<WaiterInfo> listUserInfoBySearch(WaiterInfoSearch waiterInfoSearch);

    int waiterInfoModifySave(WaiterInfo waiterInfo);

    int waiterInfoAddSave(WaiterInfo waiterInfo);
}

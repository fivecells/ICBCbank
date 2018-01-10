package com.wenlong.service;

import com.wenlong.dto.Page;
import com.wenlong.dto.Result;
import com.wenlong.pojo.po.Staffinfo;

public interface StaffInfoService {
    Result<Staffinfo> listStaffInfoByPage(Page page);

    Staffinfo selectStaffById(Integer staffId);
}

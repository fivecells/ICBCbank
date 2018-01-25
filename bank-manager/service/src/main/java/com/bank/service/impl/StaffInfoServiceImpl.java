package com.bank.service.impl;

import com.wenlong.dao.StaffinfoMapper;
import com.wenlong.dto.Page;
import com.wenlong.dto.Result;
import com.wenlong.pojo.po.Staffinfo;
import com.bank.service.StaffInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StaffInfoServiceImpl implements StaffInfoService {
    @Autowired
    private StaffinfoMapper dao;
    @Override
    public Result<Staffinfo> listStaffInfoByPage(Page page) {
        Result<Staffinfo> result = new Result<Staffinfo>();
        List<Staffinfo> list = dao.selectByExample(null);
        Long count = Long.valueOf(dao.countByExample(null));
        result.setRows(list);
        result.setTotal(count);
        return result;
    }

    @Override
    public Staffinfo selectStaffById(Integer staffId) {
        Staffinfo staff = dao.selectByPrimaryKey(staffId);
        return staff;
    }
}

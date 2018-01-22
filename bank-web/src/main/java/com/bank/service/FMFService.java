package com.bank.service;


import com.bank.dao.FundPerMapper;
import com.bank.dao.FundPsMapper;
import com.bank.po.FundPer;
import com.bank.vo.FundPs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FMFService {
    @Autowired
    private FundPsMapper fundPsDao;
    @Autowired
    private FundPerMapper fundPerDao;

    public List<FundPs> findFundPsList() {
        List<FundPs> list = fundPsDao.findFundPsList();
        return list;
    }

    public List<FundPer> FundPerList() {
        return fundPerDao.selectFundPerDesc();
    }
}

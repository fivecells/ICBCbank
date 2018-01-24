package com.bank.service;


import com.bank.dao.FundPerMapper;
import com.bank.dao.FundPsMapper;
import com.bank.dao.MetalPoxyPsMapper;
import com.bank.dao.MetalPsMapper;
import com.bank.po.FundPer;
import com.bank.vo.FundPs;
import com.bank.vo.MetalPoxyPs;
import com.bank.vo.MetalPs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FMFService {
    @Autowired
    private FundPsMapper fundPsDao;
    @Autowired
    private FundPerMapper fundPerDao;
    @Autowired
    private MetalPsMapper metalPsDao;
    @Autowired
    private MetalPoxyPsMapper metalPoxyPsDao;

    public List<FundPs> findFundPsList() {
        List<FundPs> list = fundPsDao.findFundPsList();
        return list;
    }

    public List<FundPer> FundPerList() {
        return fundPerDao.selectFundPerDesc();
    }

    public List<MetalPs> findMetalList() {
        return metalPsDao.findMetalPsList();
    }

    public List<MetalPoxyPs> findMetalPoxyList() {return metalPoxyPsDao.findMetalPoxyPsList();}
}

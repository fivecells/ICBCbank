package com.bank.service.impl;


import com.bank.dao.*;
import com.bank.pojo.po.Financing;
import com.bank.pojo.po.FundPer;
import com.bank.pojo.vo.FinancingPs;
import com.bank.pojo.vo.FundPs;
import com.bank.pojo.vo.MetalPoxyPs;
import com.bank.pojo.vo.MetalPs;
import com.bank.service.FMFInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class FMFService implements FMFInterface{
    @Autowired
    private FundPsMapper fundPsDao;
    @Autowired
    private FundPerMapper fundPerDao;
    @Autowired
    private MetalPsMapper metalPsDao;
    @Autowired
    private MetalPoxyPsMapper metalPoxyPsDao;
    @Autowired
    private FinancingMapper financingDao;

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

    public List<FinancingPs> findFinancingPsList() {
        List<Financing> list = financingDao.selectByExample(null);
        List<FinancingPs> psList = new ArrayList<FinancingPs>();
        for (Financing financing:list) {
            FinancingPs ps = new FinancingPs();
            ps.setFinancingName(financing.getFinancingName());
            ps.setIncomePer(financing.getIncomePer());
            ps.setTimeLimit(financing.getTimeLimit());
            Double v = financing.getBeginPrice() / 10000;
            ps.setBeginPriceShow(v.toString().substring(0,v.toString().lastIndexOf(".")));
            ps.setDateShow(new Date());
            psList.add(ps);
        }
        return psList;
    }
}

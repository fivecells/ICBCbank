package com.bank.service;


import com.bank.dao.*;
import com.bank.po.Financing;
import com.bank.po.FundPer;
import com.bank.vo.FinancingPs;
import com.bank.vo.FundPs;
import com.bank.vo.MetalPoxyPs;
import com.bank.vo.MetalPs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
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

package com.bank.service;

import com.bank.pojo.po.FundPer;
import com.bank.pojo.vo.FinancingPs;
import com.bank.pojo.vo.FundPs;
import com.bank.pojo.vo.MetalPoxyPs;
import com.bank.pojo.vo.MetalPs;

import java.util.List;

public interface FMFInterface {
     List<FundPs> findFundPsList() ;
     List<FundPer> FundPerList();
     List<MetalPs> findMetalList();
     List<MetalPoxyPs> findMetalPoxyList() ;
     List<FinancingPs> findFinancingPsList();
}

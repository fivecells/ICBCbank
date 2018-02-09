package com.bank.service.impl;

import com.bank.dao.TransRecordMapper;
import com.bank.dao.UserCardMapper;
import com.bank.pojo.po.TransRecord;
import com.bank.pojo.po.UserCard;
import com.bank.pojo.po.UserCardExample;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class InterestService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private UserCardMapper userCardDao;
    @Autowired
    private TransRecordMapper transRecordDao;

    public void addInterest() {
        //得到用户总额，计算利息，增加利息，生成订单
        System.out.println(11111);
        List<UserCard> list = userCardDao.selectByExample(null);
        for (UserCard userCard : list) {
            //计算利息
            Double interest = userCard.getUserCardAmount()*0.04;
            Double balance = userCard.getUserCardAmount()+interest;

            UserCard userCard1 = new UserCard();
            userCard1.setUserCardAmount(balance);
            UserCardExample example = new UserCardExample();
            UserCardExample.Criteria criteria = example.createCriteria();
            criteria.andUserCardIdEqualTo(userCard.getUserCardId());
            userCardDao.updateByExampleSelective(userCard1,example);
            //生成订单
            TransRecord transRecord = new TransRecord();
            transRecord.setMoney(+interest);
            transRecord.setBalance(balance);
            transRecord.setType("利息");
            transRecord.setTransDate(new Date());
            transRecord.setUid((int)(long)userCard.getUserCardId());
            transRecordDao.insertSelective(transRecord);
        }

    }
}

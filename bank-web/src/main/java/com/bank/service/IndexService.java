package com.bank.service;

import com.bank.dao.TransRecordMapper;
import com.bank.dao.UserCardMapper;
import com.bank.po.TransRecord;
import com.bank.po.TransRecordExample;
import com.bank.po.UserCard;
import com.bank.po.UserCardExample;
import com.bank.vo.DateAndBalance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class IndexService {

    @Autowired
    private UserCardMapper mapper;
    @Autowired
    private TransRecordMapper recordMapper;

    public UserCard getCardIdAndAmount(Integer userId) {
        UserCardExample example = new UserCardExample();
        example.createCriteria().andUserIdEqualTo(userId);
        List<UserCard> cards = mapper.selectByExample(example);
   //只考虑了只有一张卡的情况,  多张卡不取第一个, 返回所有
        if (cards!=null&&!cards.isEmpty()){
            UserCard card = cards.get(0);
            String s = card.getUserCardId().toString();
            if (s.length()>4){
                String sub = s.substring(s.length()-4);
                card.setUserCardId(Long.parseLong(sub));
            }
            return card;
        }
        return null;
    }


    public DateAndBalance getDateAndBalance(Integer userId) {
        TransRecordExample example = new TransRecordExample();
        example.createCriteria().andUidEqualTo(userId);
        example.setOrderByClause("trans_date asc");
        List<TransRecord> transRecords = recordMapper.selectByExample(example);
        DateAndBalance dab = new DateAndBalance();
        dab.setUid(userId);
        Map<Long, Double> map = new TreeMap<>();
        if (transRecords != null && !transRecords.isEmpty()) {
            for (TransRecord transRecord : transRecords) {

                Long date = transRecord.getTransDate().getTime();

                map.put(date,transRecord.getBalance());
            }
        }
        dab.setDateAndBalance(map);
        return dab;
    }
}

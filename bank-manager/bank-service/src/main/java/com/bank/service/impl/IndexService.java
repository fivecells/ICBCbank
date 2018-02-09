package com.bank.service.impl;

import com.bank.dao.TransRecordMapper;
import com.bank.dao.UserCardMapper;
import com.bank.pojo.vo.*;
import com.bank.pojo.po.TransRecord;
import com.bank.pojo.po.TransRecordExample;
import com.bank.pojo.po.UserCard;
import com.bank.pojo.po.UserCardExample;
import com.bank.service.IndexInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;

@Service
public class IndexService implements IndexInterface{

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
        com.bank.pojo.vo.DateAndBalance dab = new DateAndBalance();
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

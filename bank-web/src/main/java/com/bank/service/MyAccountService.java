package com.bank.service;


import com.bank.dao.TransRecordMapper;
import com.bank.dao.UserCardMapper;
import com.bank.po.TransRecord;
import com.bank.po.TransRecordExample;
import com.bank.po.UserCard;
import com.bank.po.UserCardExample;
import com.bank.transfer.vo.TransferDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MyAccountService {
@Autowired
UserCardMapper userdao;
@Autowired
TransRecordMapper transRecord;
    public List<UserCard > FindMyAccount(Integer id) {
        UserCardExample example = new UserCardExample();
        UserCardExample.Criteria criteria = example.createCriteria().andUserIdEqualTo(id);
        List <UserCard> userCards = userdao.selectByExample(example);
        return  userCards;
    }

    public List<TransRecord> finddetail(TransferDetail detail) {
        TransRecordExample example=new TransRecordExample();
        TransRecordExample.Criteria criteria = example.createCriteria().andTransDateBetween(detail.getStartdate(),detail.getEnddate()).andUidEqualTo(detail.getUid());
        List <TransRecord> transRecords = transRecord.selectByExample(example);
        return transRecords;
    }
}

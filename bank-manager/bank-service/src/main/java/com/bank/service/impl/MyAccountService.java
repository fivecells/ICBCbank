package com.bank.service.impl;


import com.bank.dao.TransRecordMapper;
import com.bank.dao.UserCardMapper;
import com.bank.pojo.po.TransRecord;
import com.bank.pojo.po.TransRecordExample;
import com.bank.pojo.po.UserCard;
import com.bank.pojo.po.UserCardExample;
import com.bank.pojo.vo.TransferDetail;
import com.bank.service.MyAccountInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class MyAccountService implements MyAccountInterface{
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

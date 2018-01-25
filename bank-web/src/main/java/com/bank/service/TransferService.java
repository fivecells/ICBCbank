package com.bank.service;

import com.bank.dao.TransRecordMapper;
import com.bank.dao.TransferdetailMapper;
import com.bank.dao.UserCardMapper;
import com.bank.dao.UserinfoMapper;
import com.bank.po.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class TransferService {
    @Autowired
    private UserCardMapper userCardMapper;
    @Autowired
    TransferdetailMapper transferdetailMapper;
    @Autowired
    TransRecordMapper transRecordMapper;
    @Autowired
    UserinfoMapper userinfoMapper;

    //获取付款账号
    public List<Long> getPayAccount(Integer userId) {
        UserCardExample example = new UserCardExample();
        example.createCriteria().andUserIdEqualTo(userId);
        List<UserCard> list = userCardMapper.selectByExample(example);
        List<Long> cardList = new ArrayList<>();
        if (list != null) {
            for (UserCard card : list) {
                cardList.add(card.getUserCardId());
            }
        }
        return cardList;
    }

    //转账业务
    @Transactional(isolation = Isolation.READ_COMMITTED,propagation = Propagation.REQUIRED)
    public boolean getTransfer(Transferdetail tf) {
        UserCard payCard = userCardMapper.selectByPrimaryKey((long) tf.getPayAccount());
        if (payCard.getUserCardAmount() >= tf.getMoney()) {
            UserCardExample acceptExample = new UserCardExample();
            acceptExample.createCriteria().andUserCardIdEqualTo((long) tf.getAcceptAccount());
            List<UserCard> acceptList = userCardMapper.selectByExample(acceptExample);
            if (acceptList.size() > 0) {
                UserCard acceptCard = acceptList.get(0);
                Userinfo acceptInfo = userinfoMapper.selectByPrimaryKey(acceptCard.getUserId());
                if (acceptInfo.getUserName().equals(tf.getAcceptName())) {
                    double payAmount = payCard.getUserCardAmount() - tf.getMoney();
                    payCard.setUserCardAmount(payAmount);
                    double acceptAmount = acceptCard.getUserCardAmount() + tf.getMoney();
                    acceptCard.setUserCardAmount(acceptAmount);
                    userCardMapper.updateByPrimaryKey(payCard);
                    userCardMapper.updateByPrimaryKey(acceptCard);
                    tf.setCreatetime(new Date());
                    transferdetailMapper.insert(tf);
                    TransRecord payrecord = new TransRecord();
                    payrecord.setTransDate(tf.getCreatetime());
                    payrecord.setType("转账");
                    payrecord.setMoney(tf.getMoney());
                    payrecord.setCurrency("人民币");
                    payrecord.setBalance(payCard.getUserCardAmount());
                    payrecord.setOtherInfo(acceptInfo.getUserName());
                    payrecord.setOtherId(Integer.parseInt(acceptCard.getUserCardId().toString()));
                    payrecord.setUid(payCard.getUserId());
                    transRecordMapper.insert(payrecord);
                    TransRecord acceptRecord = new TransRecord();
                    acceptRecord.setTransDate(tf.getCreatetime());
                    acceptRecord.setType("入账");
                    acceptRecord.setMoney(tf.getMoney());
                    acceptRecord.setCurrency("人民币");
                    acceptRecord.setBalance(acceptCard.getUserCardAmount());
                    Userinfo payInfo = userinfoMapper.selectByPrimaryKey(payCard.getUserId());
                    acceptRecord.setOtherInfo(payInfo.getUserName());
                    acceptRecord.setOtherId(Integer.parseInt(payCard.getUserCardId().toString()));
                    acceptRecord.setUid(acceptCard.getUserId());
                    transRecordMapper.insert(acceptRecord);
                    return true;
                }
            }
        }
        return false;
    }
}

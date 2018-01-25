package com.bank.service;


import com.bank.dao.UserCardMapper;
import com.bank.po.UserCard;
import com.bank.po.UserCardExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MyAccountService {
@Autowired
UserCardMapper userdao;

    public List<UserCard > FindMyAccount(Integer id) {
        UserCardExample example = new UserCardExample();
        UserCardExample.Criteria criteria = example.createCriteria().andUserIdEqualTo(id);
        List <UserCard> userCards = userdao.selectByExample(example);
        return  userCards;
    }
}

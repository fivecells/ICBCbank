package com.bank.service;

import com.bank.pojo.po.UserCard;
import com.bank.pojo.vo.DateAndBalance;

public interface IndexInterface {
    UserCard getCardIdAndAmount(Integer userId);
    DateAndBalance getDateAndBalance(Integer userId);
}

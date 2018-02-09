package com.bank.service;

import com.bank.pojo.po.TransRecord;
import com.bank.pojo.po.UserCard;
import com.bank.pojo.vo.TransferDetail;

import java.util.List;

public interface MyAccountInterface {
    List<UserCard > FindMyAccount(Integer id);
    List<TransRecord> finddetail(TransferDetail detail);
}

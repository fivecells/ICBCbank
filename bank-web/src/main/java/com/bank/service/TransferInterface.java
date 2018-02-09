package com.bank.service;

import com.bank.pojo.po.Transferdetail;

import java.util.List;

public interface TransferInterface {
    List<Long> getPayAccount(Integer userId);
    boolean getTransfer(Transferdetail tf);
}

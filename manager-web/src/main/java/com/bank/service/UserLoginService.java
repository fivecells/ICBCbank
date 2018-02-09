package com.bank.service;

import com.bank.pojo.po.Staffinfo;
import com.bank.pojo.vo.Loginvo;

import java.util.List;

public interface UserLoginService {

    public List<Staffinfo> CheckUsername(Loginvo loginvo);
}

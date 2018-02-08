package com.wenlong.service;

import com.wenlong.pojo.po.Staffinfo;
import com.wenlong.pojo.vo.Loginvo;

import java.util.List;

public interface UserLoginService {

    public List<Staffinfo> CheckUsername(Loginvo loginvo);
}

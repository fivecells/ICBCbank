package com.bank.service.impl;

import com.bank.dao.StaffinfoMapper;
import com.bank.service.UserLoginService;
import com.bank.pojo.po.Staffinfo;
import com.bank.pojo.po.StaffinfoExample;
import com.bank.pojo.vo.Loginvo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserLoginServiceImpl implements UserLoginService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private StaffinfoMapper staffinfoDao;

    @Override
    public  List<Staffinfo> CheckUsername(Loginvo loginvo) {
        List<Staffinfo> staffinfos=null;
        try {
            //创建模板
            StaffinfoExample example = new StaffinfoExample();
            StaffinfoExample.Criteria criteria=example.createCriteria();
            criteria.andStaffNameEqualTo(loginvo.getUsername());
            staffinfos = staffinfoDao.selectByExample(example);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return staffinfos;
    }
}

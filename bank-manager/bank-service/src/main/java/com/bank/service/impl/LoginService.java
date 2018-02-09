package com.bank.service.impl;

import com.bank.dao.UserinfoMapper;
import com.bank.pojo.po.Userinfo;
import com.bank.pojo.po.UserinfoExample;
import com.bank.service.LoginInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class LoginService implements LoginInterface{
    @Autowired
    private UserinfoMapper userinfoMapper;
    @Override
    public Userinfo doLogin(Userinfo user) {
        if(user!=null&&user.getUserName()!=null&&user.getUserPwd()!=null) {
            UserinfoExample userinfoExample = new UserinfoExample();
            userinfoExample.createCriteria().andUserNameEqualTo(user.getUserName()).andUserPwdEqualTo(user.getUserPwd());
            List<Userinfo> userList = userinfoMapper.selectByExample(userinfoExample);
            if (userList!=null && !userList.isEmpty()){
                return userList.get(0);
            }else {
                return null;
            }
        }
        return null;
    }
}

package com.wenlong.service.impl;

import com.wenlong.dao.UserIFMapper;
import com.wenlong.dao.UserinfoMapper;
import com.wenlong.dto.Page;
import com.wenlong.dto.Result;
import com.wenlong.pojo.po.Userinfo;
import com.wenlong.pojo.po.UserinfoExample;
import com.wenlong.pojo.vo.UserinfoSearch;
import com.wenlong.service.UserInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserInfoServiceImpl implements UserInfoService{
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserIFMapper userIFDao;
    @Autowired
    private UserinfoMapper userInfoDao;
    @Override
    public Result<Userinfo> listUserInfoByPage(Page page) {
        Result<Userinfo> result = new Result<Userinfo>();
        List<Userinfo> list = userIFDao.selectlistUserInfoByPage(page);
        Long count = Long.valueOf(userInfoDao.countByExample(null));
        result.setRows(list);
        result.setTotal(count);
        return result;
    }

    @Override
    public int deleteUserInfoById(List<Integer> userIds) {
        int i = 0;
        try {
            Userinfo userinfo = new Userinfo();
            userinfo.setUserStatus("0");
            //创建更新模板
            UserinfoExample example = new UserinfoExample();
            UserinfoExample.Criteria criteria = example.createCriteria();
            criteria.andUserIdIn(userIds);
            //更新操作
            i = userInfoDao.updateByExampleSelective(userinfo, example);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public Result<Userinfo> listUserInfoBySearch(UserinfoSearch userinfoSearch) {
        Result<Userinfo> result = new Result<Userinfo>();
        List<Userinfo> list = userIFDao.selectlistUserInfoBySearch(userinfoSearch);
        result.setTotal(Long.valueOf(list.size()));
        result.setRows(list);
        return result;
    }

    @Override
    public Userinfo getUserInfoById(Integer userId) {
        Userinfo result = new Userinfo();
        Userinfo userinfo = userInfoDao.selectByPrimaryKey(userId);

        return userinfo;
    }
}

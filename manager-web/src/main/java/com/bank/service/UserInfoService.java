package com.bank.service;

import com.bank.pojo.po.Userinfo;
import com.bank.pojo.vo.UserinfoSearch;
import com.wenlong.dto.Page;
import com.wenlong.dto.Result;

import java.util.List;

public interface UserInfoService {
    Result<Userinfo> listUserInfoByPage(Page page);

    int deleteUserInfoById(List<Integer> userIds);

    Result<Userinfo> listUserInfoBySearch(UserinfoSearch userinfoSearch);

    Userinfo getUserInfoById(Integer userId);

    int updateUser(Userinfo userinfo);

    int insertNewUser(Userinfo userinfo);
}

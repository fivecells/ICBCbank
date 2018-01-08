package com.wenlong.dao;

import com.wenlong.dto.Page;
import com.wenlong.pojo.po.Userinfo;

import java.util.List;

public interface UserIFMapper {
    List<Userinfo> selectlistUserInfoByPage(Page page);

}

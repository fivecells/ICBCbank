package com.wenlong.dao;

import com.wenlong.dto.Page;
import com.wenlong.pojo.po.Userinfo;
import com.wenlong.pojo.vo.UserinfoSearch;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserIFMapper {
    List<Userinfo> selectlistUserInfoByPage(Page page);

    List<Userinfo> selectlistUserInfoBySearch(@Param("userinfoSearch") UserinfoSearch userinfoSearch);
}

package com.wenlong.web;

import com.wenlong.dto.Page;
import com.wenlong.dto.Result;
import com.wenlong.pojo.po.Userinfo;
import com.wenlong.pojo.vo.UserinfoSearch;
import com.wenlong.service.UserInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class UserInfoAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserInfoService ser;
//分页和全查询操作
    @ResponseBody
    @RequestMapping("/userinfo-list")
    public Result<Userinfo> userInfoList(Page page) {
        Result<Userinfo> result = null;
        try {
            result = ser.listUserInfoByPage(page);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }
//删除操作，后台将用户的状态设置为0
    @ResponseBody
    @RequestMapping("/userinfo-delete")
    public int userInfoDelete(@RequestParam("arr[]") List<Integer> userIds){
        int i = 0;
        i = ser.deleteUserInfoById(userIds);
        return i;
    }
//模糊查询操作
    @ResponseBody
    @RequestMapping("/userinfo-search")
    public Result<Userinfo> userInfoSearch(UserinfoSearch userinfoSearch){
        Result<Userinfo> result = null;
        try {
            result = ser.listUserInfoBySearch(userinfoSearch);
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }

    /*@ResponseBody
    @RequestMapping(value = "/userinfo-get", method = RequestMethod.GET)
    public Userinfo getUserInfoById(@RequestParam("userId") Integer userId){
        Userinfo userinfo = null;

        userinfo = ser.getUserInfoById(userId);

        return userinfo;
    }*/

//    回显用户信息
    @RequestMapping(value="/table-user-modify/{userId}", method = RequestMethod.GET)
    public String getUserInfoById(@PathVariable("userId") Integer userId, Model model){
        Userinfo userinfo = null;


        try {
            userinfo = ser.getUserInfoById(userId);

            model.addAttribute("userinfo", userinfo);
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return "table-user-modify";
    }

//    update用户信息
    @ResponseBody
    @RequestMapping("/updateUser.do")
    public int updateUser(Userinfo userinfo){
        int i = 0;

        try {
            i  = ser.updateUser(userinfo);
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return i;

    }
//    添加新用户
    @ResponseBody
    @RequestMapping("/insertNewUser.do")
    public int insertNewUser(Userinfo userinfo){
        int i = 0;

        try {
            i = ser.insertNewUser(userinfo);
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return i ;
    }
}


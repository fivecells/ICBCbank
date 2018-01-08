package com.wenlong.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexAction {

//    默认跳转到服务员登陆窗口
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String intoLoginWaiter(){
            return "login-waiter";
    }

//    跳转到表格列表页\欢迎选项卡\新增数据页面
    @RequestMapping(value = "/{page}", method = RequestMethod.GET)
    public String tableListTab(@PathVariable("page") String page){
        return page;
    }

//    跳转到后台管理主页面
    @RequestMapping("/index")
    public String intoIndex(){
        return "index";
    }

}

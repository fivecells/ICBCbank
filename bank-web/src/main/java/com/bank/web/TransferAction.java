package com.bank.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TransferAction {
    //展示转账页面
    @RequestMapping("/PBL200811")
    public String showTraPage() {
        return "/transfer/showtransfer";
    }
    //转账后跳转页面
    @RequestMapping("/transfer")
    public String getTransfer(){
        return "/transfer/success";
    }
    //获取付款账号
    @RequestMapping(value = "/getPayAccount",method = RequestMethod.GET)
    public int getPayAccount(Integer userId){
        System.out.println(userId);
        return 0;
    }
}

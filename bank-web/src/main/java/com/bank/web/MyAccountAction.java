package com.bank.web;

import com.bank.po.UserCard;
import com.bank.po.Userinfo;
import com.bank.service.MyAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller

public class MyAccountAction {

    @Autowired
    private MyAccountService myAccountService;
    @RequestMapping("/PBL201804")
    public String MyAccount(Model model, HttpServletRequest request){
      /*
      返回给我的账户界面的参数
      * */

      //首先从session拿到是谁登录的参数
        Userinfo user = (Userinfo) request.getSession().getAttribute("user");

        Integer id = user.getUserId();

        List<UserCard> cards=myAccountService.FindMyAccount(id);
        double allAmount=0;
        for (UserCard usercard:cards) {

            allAmount= allAmount+ usercard.getUserCardAmount();

        }
        model.addAttribute("allAmount",allAmount);
        model.addAttribute("cards",cards);

       // System.out.println(cards.size());


        return "PBL201804";
    }

}

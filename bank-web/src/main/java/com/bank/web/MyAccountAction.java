package com.bank.web;

import com.bank.pojo.po.TransRecord;
import com.bank.pojo.po.UserCard;
import com.bank.pojo.po.Userinfo;
import com.bank.service.MyAccountInterface;
import com.bank.pojo.vo.TransferDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller

public class MyAccountAction {

    @Resource
    private MyAccountInterface myAccountService;

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

    /*
    * 账单明细
    * */
    @RequestMapping(value = "/myAccountdetail")
    public String MyAccountdetail(TransferDetail detail,Model model){

        System.out.println(detail);
        List <TransRecord> finddetails = myAccountService.finddetail(detail);
        double out =0;
        double in=0;
        for (TransRecord transRecord:finddetails){
           if (transRecord.getType().equals("转账")){

               out=out+transRecord.getMoney();

           }else if (transRecord.getType().equals("入账")||transRecord.getType().equals("利息")){
               in=in+transRecord.getMoney();

            }
        }
        model.addAttribute("details",finddetails);
        model.addAttribute("detail",detail);
        model.addAttribute("out",out);
        model.addAttribute("in",in);

        System.out.println(finddetails);
        return "transdetails";

    }

}

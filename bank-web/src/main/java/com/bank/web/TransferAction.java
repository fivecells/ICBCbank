package com.bank.web;

import com.bank.po.Transferdetail;
import com.bank.po.Userinfo;
import com.bank.service.TransferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class TransferAction {
    @Autowired
    private TransferService transferService;
    //展示转账页面
    @RequestMapping("/PBL200811")
    public String showTraPage( HttpServletRequest request) {
        Integer userId =((Userinfo)request.getSession().getAttribute("user")).getUserId();
        List<Long> payList = transferService.getPayAccount(userId);
//        model.addAttribute("payList",payList);
        request.setAttribute("payList",payList);
        return "/transfer/showtransfer";
    }
    //转账后跳转页面
    @RequestMapping("/transfer")
    public String getTransfer(Transferdetail tf,Model model){
        boolean result = false;
        if(tf!=null){
            result = transferService.getTransfer(tf);
        }
        if (result) {
            model.addAttribute("tf",tf);
            return "/transfer/success";
        }else {
            return "/transfer/error";
        }
    }
}

package com.bank.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class loanAction {

    @RequestMapping("/PBL201097")
    public String loan(){
//        贷款
        return "loan";
    }
    @RequestMapping("/servlet/ICBCBaseReqServletNoSession")
    public String loanServlet(){

        return "loanContent";
    }
}

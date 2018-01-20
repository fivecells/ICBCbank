package com.bank.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexAction {
    @RequestMapping("/")
    public String indexAction(){
        return "frame_index";
    }
    @ResponseBody
    @RequestMapping("/AsynGetDataServlet")
    public String servletAction(){

        return "true";
    }
    @RequestMapping("/servlet/ICBCPERBANKLocationServiceServlet")
    public String servletAction(String serviceId){

        return "forward:/"+serviceId;
    }
    @RequestMapping("/PBL200203")
    public String huiShengHuo(){
        //业务逻辑
        return "PBL200203";
    }



}

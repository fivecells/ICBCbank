package com.bank.web;

import cn.com.webxml.ChinaOpenFundWSSoap;
import com.bank.pojo.vo.OpenFund;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class OpenFundWSClient {
    @Resource
    private ChinaOpenFundWSSoap chinaOpenFundWSClient;

    @RequestMapping(value = "/findOpenFund",method = RequestMethod.GET)
    public String findOpenFund(HttpServletRequest request){
        List<OpenFund> list = new ArrayList<OpenFund>();
        List<String> strings = chinaOpenFundWSClient.getOpenFundString(null).getString();
        for (String string : strings) {
            OpenFund openFund = new OpenFund();
            String[] s = string.split("@");
            openFund.setS1(s[0]);
            openFund.setS2(s[1]);
            openFund.setS3(s[2]);
            openFund.setS4(s[3]);
            openFund.setS5(s[4]);
            openFund.setS6(s[5]);
            openFund.setS7(s[6]);
            openFund.setS8(s[7]);
            openFund.setS9(s[8]);
            list.add(openFund);
        }
        request.setAttribute("openList",list);
        return "openFund_list";
    }
}

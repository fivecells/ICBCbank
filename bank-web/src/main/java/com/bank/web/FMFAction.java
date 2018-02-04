package com.bank.web;

import com.bank.po.FundPer;
import com.bank.po.Userinfo;
import com.bank.service.FMFService;
import com.bank.vo.FinancingPs;
import com.bank.vo.FundPs;
import com.bank.vo.MetalPoxyPs;
import com.bank.vo.MetalPs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class FMFAction {
    @Autowired
    private FMFService fmfService;
//将基金衔接进指定区域的操作@@@@@@@@@@@@@
    @RequestMapping("/PBL200317")
    public String fundIndex(HttpServletRequest request){
//        完成基金右侧热销榜的数据查询
        List<FundPer> list = fmfService.FundPerList();
        //取list中的前8个数据显示到前端页面
        List<FundPer> fundPerList = list.subList(0,8);
        request.setAttribute("fundPerList",fundPerList);
        return "PBL200317";
    }

    //    跳转到基金产品选项卡的具体内容页面
    @RequestMapping(value = "/fund_list", method = RequestMethod.GET)
    public String tableListTab(){
        return "fund_list";
    }

//    基金产品选项卡表格数据的查询操作
    @ResponseBody
    @RequestMapping(value = "/fundList",method = RequestMethod.POST)
    public List<FundPs> findFundPsList(){
        List<FundPs> list = fmfService.findFundPsList();
        for (FundPs fundPs:list) {

            fundPs.setBuy("<a href='${pageContext.request.contextPath}/login/login.jsp'><img alt='购买' src='http://120.79.90.102:81/images/goumai.jpg'> </a>");
            fundPs.setWatch("<img slt='热门' src='http://120.79.90.102:81/images/menu_hotp.png'>");
        }
        return list;
    }
    //    跳转到我的基金选项卡的具体内容页面
    @RequestMapping(value = "/fund_my",method = RequestMethod.GET)
    public String fundMy(HttpSession session){
        Userinfo user = (Userinfo) session.getAttribute("user");
        //若还未登录，显示登录窗口
        if (user==null){
            return "forward:login/login.jsp";
        }
        return "";
    }
    //    跳转到交易明细选项卡的具体内容页面
    @RequestMapping(value = "/fund_trade",method = RequestMethod.GET)
    public String fundTrade(HttpSession session){
        Userinfo user = (Userinfo) session.getAttribute("user");
        //若还未登录，显示登录窗口
        if (user==null){
            return "forward:login/login.jsp";
        }
        return "";
    }
    //    跳转到我的定投选项卡的具体内容页面
    @RequestMapping(value = "/fund_invest",method = RequestMethod.GET)
    public String fundInvest(HttpSession session){
        Userinfo user = (Userinfo) session.getAttribute("user");
        //若还未登录，显示登录窗口
        if (user==null){
            return "forward:login/login.jsp";
        }
        return "";
    }

    //将贵金属衔接进指定区域的操作@@@@@@@@@@@@
    @RequestMapping("/PBL200603")
    public String fundIndexMetal(){

        return "PBL200603";
    }

    //品种为账户贵金属的表格数据查询
    @ResponseBody
    @RequestMapping(value = "/metalList",method = RequestMethod.POST)
    public List<MetalPs> findMetalList(){
        List<MetalPs> list = fmfService.findMetalList();
        for (MetalPs metalPs:list) {
            metalPs.setBuy("<a href='${pageContext.request.contextPath}/login/login.jsp'><img alt='购买' src='http://120.79.90.102:81/images/goumai.jpg'> </a>");
            Integer status = metalPs.getMetalStatus();
            if(status==1){
                metalPs.setMetalStatusShow("<img alt='涨' src='http://120.79.90.102:81/images/up.jpg'>");
            }else {
                metalPs.setMetalStatusShow("<img alt='跌' src='http://120.79.90.102:81/images/down.jpg'>");
            }
//            调整当日涨跌值，当日涨跌幅，当年涨跌幅的显示样式
            Double flu = metalPs.getFluctuation();
            Double perDay = metalPs.getFluPerDay();
            Double perYear = metalPs.getFluPerYear();
            if(flu>0){
                metalPs.setFluctuationShow("<font color='red'>"+flu+"</font>");
            }
            if(flu<0){
                metalPs.setFluctuationShow("<font color='green'>"+flu+"</font>");
            }
            if(perDay>0){
                metalPs.setFluPerDayShow("<font color='red'>"+perDay+"%"+"</font>");
            }else if(perDay<0){
                metalPs.setFluPerDayShow("<font color='green'>"+perDay+"%"+"</font>");
            }else {
                metalPs.setFluPerDayShow(""+perDay);
            }
            if(perYear>0){
                metalPs.setFluPerYearShow("<font color='red'>"+perYear+"%"+"</font>");
            }else if(perYear<0){
                metalPs.setFluPerYearShow("<font color='green'>"+perYear+"%"+"</font>");
            }else {
                metalPs.setFluPerYearShow(""+perYear);
            }
        }
        return list;
    }

    //品种为代理贵金属现货的表格数据查询
    @ResponseBody
    @RequestMapping(value = "/metalPoxyList",method = RequestMethod.POST)
    public List<MetalPoxyPs> findMetalPoxyList(){
        List<MetalPoxyPs> list = fmfService.findMetalPoxyList();
        for (MetalPoxyPs metalPoxyPs:list) {
            metalPoxyPs.setBuy("<a href='http://localhost:8080/moneybank/login/login.jsp'><img alt='购买' src='http://120.79.90.102:81/images/goumai.jpg'> </a>");
            Double flu = metalPoxyPs.getFluctuation();
            Integer status = metalPoxyPs.getMetalStatus();
            metalPoxyPs.setFluctuationShow(flu+"%");
            if(status==1){
                metalPoxyPs.setMetalStatusShow("<img alt='涨' src='http://120.79.90.102:81/images/up.jpg'>");
            }else if(status==2){
                metalPoxyPs.setMetalStatusShow("<img alt='跌' src='http://120.79.90.102:81/images/down.jpg'>");
            }else {
                metalPoxyPs.setMetalStatusShow("—");
            }
        }
        return list;
    }

    //将理财衔接进指定区域的操作@@@@@@@@@@@@
    @RequestMapping("/PBL201139")
    public String financingIndex(){

        return "PBL201139";
    }

    //理财产品选项卡数据展示
    @RequestMapping(value = "/financing_list",method = RequestMethod.GET)
    public String tabToFinancingList(HttpServletRequest request) {
        List<FinancingPs> list = fmfService.findFinancingPsList();
        request.setAttribute("list",list);
        return "financing_list";
    }
    //    跳转到我的理财选项卡的具体内容页面
    @RequestMapping(value = "/financing_my",method = RequestMethod.GET)
    public String financingMy(HttpSession session){
        Userinfo user = (Userinfo) session.getAttribute("user");
        //若还未登录，显示登录窗口
        if (user==null){
            return "forward:login/login.jsp";
        }
        return "";
    }
    //    跳转到交易明细选项卡的具体内容页面
    @RequestMapping(value = "/financing_trade",method = RequestMethod.GET)
    public String financingTrade(HttpSession session){
        Userinfo user = (Userinfo) session.getAttribute("user");
        //若还未登录，显示登录窗口
        if (user==null){
            return "forward:login/login.jsp";
        }
        return "";
    }

}

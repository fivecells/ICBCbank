package com.bank.web;

import com.bank.po.FundPer;
import com.bank.service.FMFService;
import com.bank.vo.FundPs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class FMFAction {
    @Autowired
    private FMFService fmfService;
//将基金衔接进指定区域的操作
    @RequestMapping("/PBL200317")
    public String fundIndex(HttpServletRequest request){
//        完成基金右侧热销榜的数据查询
        List<FundPer> list = fmfService.FundPerList();
        //取list中的前8个数据显示到前端页面
        List<FundPer> fundPerList = list.subList(0,8);
        request.setAttribute("fundPerList",fundPerList);
        return "PBL200317";
    }

    //    跳转到各个选项卡的具体内容页面
    @RequestMapping(value = "/{tabPage}", method = RequestMethod.GET)
    public String tableListTab(@PathVariable("tabPage") String tabPage){
        return tabPage;
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

    //将贵金属衔接进指定区域的操作
    @RequestMapping("/PBL200603")
    public String fundIndexMetal(){

        return "PBL200603";
    }
}

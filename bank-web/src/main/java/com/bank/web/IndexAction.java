package com.bank.web;

import com.bank.po.UserCard;
import com.bank.po.Userinfo;
import com.bank.service.IndexService;
import com.bank.vo.DateAndBalance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class IndexAction {

    @Autowired
    private IndexService indexService;

    @RequestMapping("/")
    public String indexAction() {
        return "frame_index";
    }

    @ResponseBody
    @RequestMapping("/AsynGetDataServlet")
    public String servletAction() {

        return "true";
    }

    @RequestMapping("/servlet/ICBCPERBANKLocationServiceServlet")
    public String servletAction(String serviceId) {

        return "forward:/" + serviceId;
    }

    @RequestMapping("/PBL200203")
    public String huiShengHuo() {
        //惠生活
        return "PBL200203";
    }

    @RequestMapping("/PBL201805")
    public String myAccount(HttpServletRequest request, HttpSession session, Model model, HttpServletResponse response) {
        //业务逻辑

        //显示上次登录时间
        String result = null;
        Cookie[] cookies = request.getCookies();
        Integer userId = ((Userinfo) session.getAttribute("user")).getUserId();
        if (userId != null) {
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (("lastAccessTime" + userId).equals(cookie.getName())) {
                        //找到该Cookie并获得他的值
                        result = cookie.getValue();
                    }
                }
            }
        }

        if (result == null) {
            model.addAttribute("lastAccess", "欢迎您的第一次登陆");
        } else {
            model.addAttribute("lastAccess", "上次登录时间:" + result);
        }
        //获得一个格式化的时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String accessTime = sdf.format(new Date());
        Cookie cookie = new Cookie("lastAccessTime" + userId, accessTime);
        response.addCookie(cookie);

        UserCard card = null;

        if (userId != null) {
           card =  indexService.getCardIdAndAmount(userId);
        }

        model.addAttribute("card", card);

        DateAndBalance dab = null;

        if (userId != null) {
            dab = indexService.getDateAndBalance(userId);
        }

        model.addAttribute("dateAndBalance", dab.getDateAndBalance());


        return "myaccount";
    }
    @RequestMapping("/PBL200204")
    public String allProducts(){
        //全部
        System.out.println("0204");
        return "PBL200204";    }


}

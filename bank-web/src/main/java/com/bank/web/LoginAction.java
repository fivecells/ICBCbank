package com.bank.web;

import com.bank.service.LoginInterface;
import com.bank.pojo.po.Userinfo;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class LoginAction {
    @Resource
    LoginInterface loginService;
    @ResponseBody
    @RequestMapping("/loginin")
    public String doLogin(Userinfo userinfo, HttpSession session) {
        Userinfo user_result = null;
        try {

            user_result = loginService.doLogin(userinfo);
            if (user_result != null) {
                String dse_sessionId = session.getId();
                session.setAttribute("user", user_result);
                session.setAttribute("dse_sessionId", dse_sessionId);
                //设置用户不操作后的 过期
//                session.setMaxInactiveInterval(2*60);
                return "1";
            } else {
                return "0";
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "0";
    }

    @RequestMapping("/logout")
    public String doLogout(HttpSession session){
        session.removeAttribute("dse_sessionId");
        session.removeAttribute("user");

        return "frame_index";

    }
}

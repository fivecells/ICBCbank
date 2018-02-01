package com.bank.web;

import com.bank.service.LoginService;
import com.bank.po.Userinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class LoginAction {
    @Autowired
    private LoginService loginService;

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

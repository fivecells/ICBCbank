package com.wenlong.web;
import com.wenlong.pojo.po.Staffinfo;
import com.wenlong.pojo.vo.Loginvo;
import com.wenlong.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.List;

public class AutoLoginFilter implements Filter {
    @Autowired
    private UserLoginService userLogin;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // TODO Auto-generated method stub

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        List<Staffinfo> sta=null;
        //1.强转ServletRequest
        HttpServletRequest req = (HttpServletRequest) request;
        Cookie[] cookies = req.getCookies();
        //2.遍历cookie找到相应的cookie
        String username_code = null;
        String username = null;
        String password = null;
        if(cookies!=null){
            for (Cookie cookie : cookies) {
                if("cookie_username".equals(cookie.getName())){
                    username_code = cookie.getValue();
                    username = URLDecoder.decode(username_code, "utf-8");
                }
                if("cookie_password".equals(cookie.getName())){
                    password = cookie.getValue();
                }
            }
            if(username!=null&&password!=null){
                //找到cookie中存放的用户名和密码，然后去数据库验证
                Loginvo loginvo=new Loginvo();
                loginvo.setUsername(username);
                loginvo.setPassword(password);
                req.getSession().setAttribute("user", loginvo);
            }
        }
        //放行  去访问其他过滤器或者servlet
        chain.doFilter(request, response);


    }

    @Override
    public void destroy() {
        // TODO Auto-generated method stub

    }

}

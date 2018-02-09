package com.bank.web;

import com.bank.pojo.po.Staffinfo;
import com.bank.pojo.vo.Loginvo;
import com.bank.service.UserLoginService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;


@Controller
public class IndexAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    private UserLoginService userLoginService;

    //    默认跳转到服务员登陆窗口
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String intoLoginWaiter(){
            return "login-waiter";
    }

//    跳转到表格列表页\欢迎选项卡\新增数据页面
    @RequestMapping(value = "/{page}", method = RequestMethod.GET)
    public String tableListTab(@PathVariable("page") String page){
        return page;
    }
/*
* 自动登录
* */
    @RequestMapping(value = "/autologin")
    public String AutoLogin(){

        return "index";
    }

/*
* 用户退出
* */
@RequestMapping(value = "/signOut")
public void  SignOut(HttpServletRequest request,HttpServletResponse response){

    request.getSession().removeAttribute("user");
    Cookie cookie_username = new Cookie("cookie_username",null);
    Cookie cookie_password = new Cookie("cookie_password",null);
    cookie_username.setPath(request.getContextPath());
    cookie_password.setPath(request.getContextPath());
    cookie_username.setMaxAge(0);
    cookie_password.setMaxAge(0);
    //设置过期时间过后 还要这个设置的值
    response.addCookie(cookie_username);
    response.addCookie(cookie_password);
    //	System.out.println("销毁完毕！");
    try {
        response.sendRedirect(request.getContextPath()+"/");
    } catch (IOException e) {
        logger.error(e.getMessage(), e);
        e.printStackTrace();
    }

}




    //    跳转到后台管理主页面
    @RequestMapping("/index")
    public String intoIndex(Loginvo loginvo, HttpServletRequest request, HttpServletResponse response){
        List<Staffinfo> sta = null;
        try {
          sta = userLoginService.CheckUsername(loginvo);
            System.out.println(sta);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }

        if(sta!=null){
        if(loginvo.getPassword().equals(sta.get(0).getStaffPwd())){

            /*level为0的普通人员
            * */
            if (sta.get(0).getStaffLevel()==1){
                /*自动登录

                * */
                System.out.println(loginvo.getAuto());
                if(loginvo.getAuto()!=null){
                    System.out.println("111");
                    //使用utf-8对username进行编码。避免cookie不接受中文的问题。
                    try{
                    String userneme_code = URLEncoder.encode(loginvo.getUsername(),"utf-8");
                    Cookie cookie_username = new Cookie("cookie_username",userneme_code);
                    Cookie cookie_password = new Cookie("cookie_password",loginvo.getPassword());
                    cookie_username.setMaxAge(60*3);
                    cookie_password.setMaxAge(60*3);
                    //路径，存到这里的
                    cookie_username.setPath(request.getContextPath());
                    cookie_password.setPath(request.getContextPath());
                    response.addCookie(cookie_username);
                    response.addCookie(cookie_password);
                    }catch (Exception e) {
                        logger.error(e.getMessage(), e);
                        e.printStackTrace();
                    }

                }

                return "index";

            }else{
                    /*level为1的超级管理员
            * */
                return "super";

            }

        }
        }
/*密码错的的情况
* */

        return "redirect:/";
    }


  /*
      自动登录
    * */


}

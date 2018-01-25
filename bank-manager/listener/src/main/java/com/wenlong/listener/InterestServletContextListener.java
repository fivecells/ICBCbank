//package com.wenlong.listener;
//
//import com.wenlong.service.impl.InterestService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.event.EventListener;
//
//import javax.servlet.ServletContextEvent;
//import javax.servlet.ServletContextListener;
//import java.text.ParseException;
//import java.text.SimpleDateFormat;
//import java.util.Date;
//import java.util.Timer;
//import java.util.TimerTask;
//
//public class InterestServletContextListener implements ServletContextListener{
//    @Autowired
//    private InterestService service;
//
//    @Override
//    public void contextInitialized(ServletContextEvent sce) {
//        //1.创建一个Timer对象
//        Timer timer = new Timer();
//        /*
//         * 2.
//         * 第一个参数：TimerTask接口:指计时器要做的事情，在TimerTask的实现类的对象的run方法中
//         * 第二个参数：计时器开始工作的时间
//         * 第三个参数：时间间隔，从计时器开始工作的时间开始计算，一到间隔的时间就做一次run
//         * 			是一个毫秒值
//         */
//        //生成00:00:00时间
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        String date = "2017-11-02 00:00:00";
//        Date date2 = null;
//        try {
//            date2 = sdf.parse(date);
//        } catch (ParseException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//        timer.scheduleAtFixedRate(new TimerTask() {
//            @Override
//            public void run() {
//                System.out.println("算利息");
//                service.addInterest(0.06);
//                System.out.println("发钱啦！...");
//            }
//        }, new Date(), 1000*10);
//    }
//
//    @Override
//    public void contextDestroyed(ServletContextEvent sce) {
//
//    }
//}

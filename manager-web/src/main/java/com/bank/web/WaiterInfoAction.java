package com.bank.web;


import com.wenlong.dto.Page;
import com.wenlong.dto.Result;
import com.bank.pojo.po.WaiterInfo;
import com.bank.pojo.vo.WaiterInfoSearch;
import com.bank.service.WaiterInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class WaiterInfoAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    private WaiterInfoService waiterInfoService;
    //职员分页和全查询操作
    @ResponseBody
    @RequestMapping("/waiterInfo-list")
    public Result<WaiterInfo> waiterInfoList(Page page) {
        Result<WaiterInfo> result = null;
        try {
            result = waiterInfoService.listWaiterInfoByPage(page);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }
    //进入职员修改页面后的回显操作
    @RequestMapping(value = "/toModifyWaiter/{waiterId}", method = RequestMethod.GET)
    public String tableListTab(@PathVariable("waiterId") Integer waiterId,Model model){
        WaiterInfo waiter = waiterInfoService.selectWaiterInfoById(waiterId);
        model.addAttribute("waiter",waiter);
        return "waiter-modify";
    }
    //删除操作，后台将职员的状态设置为0
    @ResponseBody
    @RequestMapping("/waiterinfo-delete")
    public int waiterInfoDelete(@RequestParam("arr[]") List<Integer> waiterIds){
        int i = waiterInfoService.deleteWaiterInfoById(waiterIds);
        return i;
    }
    //模糊查询操作
    @ResponseBody
    @RequestMapping("/waiterinfo-search")
    public Result<WaiterInfo> userInfoSearch(WaiterInfoSearch waiterInfoSearch){
        Result<WaiterInfo> result = null;
        try {
            result = waiterInfoService.listUserInfoBySearch(waiterInfoSearch);
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }
    //修改页面点击提交后的后台操作
    @ResponseBody
    @RequestMapping("/waiter-modifySave")
    public int waiterInfoModifySave(WaiterInfo waiterInfo){
        int i = waiterInfoService.waiterInfoModifySave(waiterInfo);
        return i;
    }
    //添加页面点击提交后的后台操作
    @ResponseBody
    @RequestMapping("/waiter-addSave")
    public int waiterInfoAddSave(WaiterInfo waiterInfo){
        int i = waiterInfoService.waiterInfoAddSave(waiterInfo);
        return i;
    }

}

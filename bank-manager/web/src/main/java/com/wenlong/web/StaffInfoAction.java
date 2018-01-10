package com.wenlong.web;


import com.wenlong.dto.Page;
import com.wenlong.dto.Result;
import com.wenlong.pojo.po.Staffinfo;
import com.wenlong.service.StaffInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class StaffInfoAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private StaffInfoService service;
    //分页和全查询操作
    @ResponseBody
    @RequestMapping("/staffInfo-list")
    public Result<Staffinfo> staffInfoList(Page page) {
        Result<Staffinfo> result = null;
        try {
            result = service.listStaffInfoByPage(page);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }
    @RequestMapping(value = "/toModifyStaff/{staffId}", method = RequestMethod.GET)
    public String tableListTab(@PathVariable("staffId") Integer staffId,Model model){
        Staffinfo staff = service.selectStaffById(staffId);
        model.addAttribute("staff",staff);
        return "staff-modify";
    }
}

package com.wenlong.pojo.vo;

import com.wenlong.pojo.po.WaiterInfo;

import javax.xml.crypto.Data;
import java.text.SimpleDateFormat;
//此实体类用于转换时间格式
public class WaiterIF extends WaiterInfo {
    private String showHiredate;

    public String getShowHiredate() {
        return showHiredate;
    }

    public void setShowHiredate(Data waiterHiredate) {
        SimpleDateFormat sdf = new SimpleDateFormat("YYYY年MM月dd日");
        String format = sdf.format(waiterHiredate);
        this.showHiredate = format;
}
}

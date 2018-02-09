package com.bank.pojo.vo;


import javax.xml.crypto.Data;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import com.bank.pojo.po.WaiterInfo;
//此实体类用于转换时间格式
public class WaiterIF extends WaiterInfo implements Serializable{
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

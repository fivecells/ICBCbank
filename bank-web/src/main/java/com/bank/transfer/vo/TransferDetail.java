package com.bank.transfer.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TransferDetail {
    private Date startdate;
    private Date enddate;
    private int uid;

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(String startdate) {

        SimpleDateFormat formatter = new SimpleDateFormat( "yyyy-MM-dd");
        Date date=null;
        try {
             date =  formatter.parse(startdate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        this.startdate = date;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {


        SimpleDateFormat formatter = new SimpleDateFormat( "yyyy-MM-dd");
        Date date=null;
        try {
            date =  formatter.parse(enddate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        this.enddate = date;
    }

    @Override
    public String toString() {
        return "TransferDetail{" +
                "startdate=" + startdate +
                ", enddate=" + enddate +
                '}';
    }
}

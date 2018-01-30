<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:forEach items="${list}" var="fin">
<div align="center" style="margin-top: 20px;margin-left: 20px">
    <div style="float: left;">
        <p style="color: #00a0e9;font-size: 16px">${fin.financingName}</p>
        <p style="color:rgb(136,136,137);font-size: 12px">预期年化收益率/业绩基准</p>
        <p style="color: #bf0000;font-size: 20px">${fin.incomePer}%</p>
    </div>
    <div style="float: left;margin: 5px;" align="left">
        <p><img src="http://120.79.90.102:81/images/xinpin.bmp"></p>
        <p><div style="float: left;color:rgb(136,136,137);font-size: 12px">起购金额</div><div style="margin-left: 22px;float: right;color:rgb(136,136,137);font-size: 12px">期限</div></p>
        <p><div style="float: left;margin-top: 10px;font-size: 22px">${fin.beginPriceShow}<span style="font-size: 12px">万</span></div><div style="float: right;margin-left:22px;margin-top: 10px;font-size: 22px">${fin.timeLimit}<span style="font-size: 12px">天</span></div></p>
    </div>
    <div style="float: right;margin-right: 10px">
        <p style="color:rgb(136,136,137);font-size: 12px">【精品主题】募集期：${fin.dateShow}</p>
        <p><div style="float: right"><button type="button" class="btn btn-danger">购买</button></div><div style="margin-top: 12px;color:rgb(136,136,137);font-size: 12px">产品风险等级</div></p>
        <p><div style="float: none;margin-top: 10px" class="glyphicon glyphicon-signal"></div><div></div></p>
    </div>
</div>
<hr width="110%" align="center">
</c:forEach>
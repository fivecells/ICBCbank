<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/icbc/newperbank/js/blockui/JQuery.BlockUI.min.2.39.js"></script>
</head>
<body>

<script language="JavaScript">

/**
显示登录
**/
function showLogonDiv(serviceId,transData,logoffstat){
    //设置好内容之后再展现
    var wi="200";
	try{
		wi=(jQuery("body").width()-310)/2;
	}catch (e){}
	if($.browser.msie && parseInt($.browser.version)<=8){
		frames['ICBC_login_frame_f'].location="https://epass.icbc.com.cn/login/login.jsp?StructCode=1&orgurl=0&STNO=31";
	}
    $.blockUI({message: $('#ICBC_login_float'),
    			css: { 
                 left: wi,
                 border:'1px solid #AAA',
                 width: '310px',
                  top:'10%'
            	}
             });
    //注入数据必须是先显示后设置
    //
    setTimeout("setValue('"+serviceId+"','"+transData+"','"+logoffstat+"')",1000);
    setTimeout("setValue('"+serviceId+"','"+transData+"','"+logoffstat+"')",2000);
    setTimeout("setValue('"+serviceId+"','"+transData+"','"+logoffstat+"')",3000);
    
}
/**
显示浮动广告
**/
function showAdDiv(obj){
    //设置好内容之后再展现
    var intWidth = obj.width.replace(/px/gi,'');
    var left  = (document.body.clientWidth - intWidth)/2;
    jQuery("#ICBC_common_frame_f").attr('src',obj.url);
    $.blockUI({message: $('#ICBC_common_float'),
    			css: { 
                 width: obj.width,
                 height: obj.height,
                 top:'15%',
                 left:left
            	}
             });
}
//呼出新页面时是设置值
/**
@serviceId 原子服务id
@transData 交易数据
@logoffstat 前登陆状态

"1由于您已经在另一台计算机上登录网银，本次登录强行退出";
"2根据客户指令，本次登录强行退出";
"3对不起，您的操作已超时，感谢您使用"+normalBankName+"网银";
"4您在登录过程中网卡信息发生变化，为保证安全，请重新登录网上银行，感谢您使用"+normalBankName+"网上银行。";
"5您在登录过程中IP地址已发生变化，为保证安全，请重新登录网上银行，感谢您使用"+normalBankName+"网上银行。";
"6您已注销我行个人网银，本次登录强行退出。";

**/
var isFreashFrame = "0";//是否刷新首页面0或""不刷新
function setValue(serviceId,transData,logoffstat){
	if(logoffstat!=null && typeof(logoffstat)!="undefined" && logoffstat!="undefined"){
		isFreashFrame = logoffstat;
	}
	var serviceIdInto="";
	if(serviceId.indexOf(">")>0){
		serviceIdInto=serviceId;
		serviceId=serviceId.substring(0,serviceId.indexOf(">"));
			
	}
	/* frames['ICBC_login_frame_f'].form1.logonCardNum.focus();
	frames['ICBC_login_frame_f'].form1.serviceId.value=serviceId;
	frames['ICBC_login_frame_f'].form1.serviceIdInto.value=serviceIdInto;
	frames['ICBC_login_frame_f'].form1.transData.value=transData;  */
	
	//支持fire的标准写法
	//frames['ICBC_login_frame_f'].document.getElementById("logonCardNum").focus();
	
	try{
		frames['ICBC_login_frame_f'].document.getElementById("serviceId").value=serviceId;
		frames['ICBC_login_frame_f'].document.getElementById("serviceIdInto").value=serviceIdInto;
		frames['ICBC_login_frame_f'].document.getElementById("transData").value=transData; 
		if(serviceId!=""&&serviceId!=null&&serviceId!='undefined')
			frames['ICBC_login_frame_f'].document.getElementById("serviceIdfirst").value=serviceId; 
		else
			frames['ICBC_login_frame_f'].document.getElementById("serviceIdfirst").value=""; 
		
		if(logoffstat=="1"){
			frames['ICBC_login_frame_f'].jQuery("#logintips").html("重新登录");
			frames['ICBC_login_frame_f'].showErrTip("您已经在另一台计算机上登录网银，本次登录强行退出");
		}else if(logoffstat=="2"){
			frames['ICBC_login_frame_f'].jQuery("#logintips").html("重新登录");
			frames['ICBC_login_frame_f'].showErrTip("根据客户指令，本次登录强行退出");
		}else if(logoffstat=="3"){
			frames['ICBC_login_frame_f'].jQuery("#logintips").html("重新登录");
			//frames['ICBC_login_frame_f'].showErrTip("");
		}else if(logoffstat=="4"){
			frames['ICBC_login_frame_f'].jQuery("#logintips").html("重新登录");
			frames['ICBC_login_frame_f'].showErrTip("您的网卡发生变化，为保证安全，请重新登录网上银行");
		}else if(logoffstat=="5"){
			frames['ICBC_login_frame_f'].jQuery("#logintips").html("重新登录");
			frames['ICBC_login_frame_f'].showErrTip("您的IP发生变化，为保证安全，请重新登录网上银行");
		}else if(logoffstat=="6"){
			frames['ICBC_login_frame_f'].jQuery("#logintips").html("重新登录");
			frames['ICBC_login_frame_f'].showErrTip("您已注销我行个人网银，本次登录强行退出");
		}else{
			frames['ICBC_login_frame_f'].jQuery("#logintips").html("登录");
		}
		
	}catch(e){}
	
	
}
/**
关闭登录
**/
function hideLogonDiv(){
	//关闭弹出层
    $.unblockUI();
    if(isFreashFrame!="" && isFreashFrame!="0"){//关闭登录窗口后刷新首页面
    	//window.location="/icbc/newperbank/perbank3/frame/frame_index.jsp";//reload();
    	document.topfameFrom4Login.submit();
    }
    //关闭窗口时需要隐藏loading
    try{frames['perbank-content-frame'].AtomSerivceHideLoading();}catch(e){}
    //关闭窗口时，重置固定登录框中输入
    //try{frames['ICBC_login_frame'].resetSafe();}catch(e){}
    try{frames['ICBC_login_frame'].location.reload();}catch(e){}
    
}

jQuery(document).ready(function() {
      	$('#ICBC_login_float_x').click(function() {
      		//frames['ICBC_login_frame_f'].KeyPart.clear();
      		try{
	      		frames['ICBC_login_frame_f'].document.getElementById("KeyPart").clear();
				//frames['ICBC_login_frame_f'].safeEdit1.clear();
				frames['ICBC_login_frame_f'].document.getElementById("safeEdit1").clear();
			}catch(e){}
			hideLogonDiv();
		});
		
		$('#ICBC_login_float_open').click(function() {
			showLogonDiv();
		});
		           
});


	function hasFloatlogon(){
		//只有点“请登录”并且是首页的时候
		var h=jQuery("#ICBC_login_float").is(':visible');//可见即为首页
		return h;
		
	}
	



</script>
<div id="ICBC_login_float_open" style="width: 40px;height: 30px;background-color: red;display: none">打开测试</div>
<div>
<div id="ICBC_login_float">
	<div id="ICBC_login_float_left">  
				<iframe marginWidth="0" id="ICBC_login_frame_f" name="ICBC_login_frame_f"
					marginHeight="0" 
					scrolling="no" 
					frameborder="no"
					src="https://epass.icbc.com.cn/login/login.jsp?StructCode=1&orgurl=0&STNO=31"
					style="width: 310px;height:370px; border:0;overflow:hidden;"></iframe> 
	</div>
	<div id="ICBC_login_float_x"><div id="ICBC_login_float_xxx">&nbsp;</div></div>
</div>

<div id="ICBC_common_float">
	<div id="ICBC_common_float_left">  
				<iframe marginWidth="0" id="ICBC_common_frame_f" name="ICBC_common_frame_f"
					marginHeight="0" 
					scrolling="no" 
					frameborder="no"
					src=""
					style="width: 100%;height:100%; border:0;overflow:hidden;"></iframe> 
	</div>
	<div id="ICBC_common_float_x"><div id="ICBC_common_float_xxx" onclick="hideLogonDiv();">X</div></div>
</div>
</div>

<form name="topfameFrom4Login"   id="topfameFrom4Login"  method="post"  target="_top"
	action="/icbc/newperbank/perbank3/frame/frame_index.jsp" onSubmit="return false;">
</form>	

</body>
</html>
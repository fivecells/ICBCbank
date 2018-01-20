<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script language="JavaScript1.1" src="${pageContext.request.contextPath}/js/ControlsId.js"></script>
	
 <script>
	try{
		if(isNaN('icbc.com.cn'.replace(/\./g,""))){
			document.domain='icbc.com.cn';}
	}catch(e){
		
	}
 </script>

<script src="${pageContext.request.contextPath}/js/jquery-1.4.3.min.js?ver=1.2"></script>
<script src="${pageContext.request.contextPath}/js/pebank_browsercompatible_eb.js?ver=1.2"></script>
<script src="${pageContext.request.contextPath}/js/checkacct.js?ver=1.2"></script>
<script src="${pageContext.request.contextPath}/js/json2.js?ver=1.2"></script>
<script src="${pageContext.request.contextPath}/js/datastruct-ajax-eb.js?ver=1.2"></script>
<script src="${pageContext.request.contextPath}/js/floatTip1.js?ver=1.2"></script>

<link href="${pageContext.request.contextPath}/icbc/newperbank/css/base.css?ver=1.2" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/icbc/newperbank/css/style.css?ver=1.2" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/login-s.css?ver=1.2" rel="stylesheet" type="text/css"/>

</head>
<body>


<script language="JavaScript">

	function dealException(){
		
		if(!detectAssistComm()){
			//没有安装助手弹出新提示，点击后下载
			showErrTip("“工行网银助手”助您一键安装更新网银安全控件及工具，建议<a href='javascript:downloadAss();'><u><font color='blue'>安装</u></a>。</font>",true);
		}else{
			//已经安装助手提示信息不变，自动启动助手
			showErrTip ("如果无法输入密码，请根据浏览器弹出提示进行控件安装。");
			try{RunAssistComm();}catch(exception){}
				}
		
	}
	
	
	function downloadAss(){
		window.open('http://www.icbc.com.cn/icbc/html/download/EbankToolsSoftware/ICBCSetupIntegration.msi');
	}

	//random number
	var randomId = "1516167912660425984";
	function queryObj(idOrName){
		if(BrowserCompatible.prototype.isSafari() && idOrName != "verifyCodeCn"){
			return document.embeds[idOrName];
		}else{
			return document.getElementById(idOrName);
		}
	}
	//控件回车回调函数，函数名称必须是“XReturnDown”
	//firefox和chrome不支持object.focus()方法
	function XReturnDown(item){
	 /*  if(item == "verifyCodeCn"){ */
	  	queryObj("verifyCodeCn").focus();
	 /*  }else{
	  	if(BrowserCompatible.prototype.isChrome()){
	  		queryObj("verifyCodeCn").removeFocus();//移除控件的焦点，避免后台钩子锁死键盘;
	  	}
	  	loginSubmit(); 
	  }*/
	}
	
	function getfocus1(id, event){
		if(pebankBrowserCompatible.getKeycode(event)==13){
			if(BrowserCompatible.prototype.isChrome() || BrowserCompatible.prototype.isFirefox()){
				document.getElementById("divss").focus();
			}
		if(id=="loginLink"){
				loginSubmit(); 
			}else{
				queryObj(id).focus();
			}
			
		}
	}
	function commitPreHanddle(){
		var vcode = document.getElementById("verifyCodeCn").value;
		document.getElementById("verifyCode").value = encodeURIComponent(vcode);
		if(vcode==''){
		return false;
		}
		return true;
	}
	
	function unParamSafe(str,name){
		var tmp = {};
		var arr = str.split("&");
		for(var i=0;i<arr.length;i++){
			var idx = arr[i].indexOf("=");
			tmp[arr[i].substring(0,idx)] = arr[i].substring(idx+1);
		}
		if(!tmp[name])
			tmp[name] =  tmp["Edit"]; 
		return tmp;
	}
	function resetSafe(randomIdNew){
		//randomId = randomIdNew;
	   	//document.form1.randomId.value = randomId;
	   	try{
		   	queryObj("safeEdit1").clear();
			//queryObj("safeEdit1").updateSeed(randomId);
			verifyCodeClear();//清除验证码输入
			//queryObj("KeyPart").updateSeed(randomId);*/
	   	}catch(e){}
		refreshVerifyimage(1);
	}
	
	function getFormJsonSafe(frm){
		var o = {};
		var a = jQuery(frm).serializeArray();
		$.each(a, function(){
			if(o[this.name] == undefined) {
				o[this.name] = this.value || '';
			}
		});
		
		queryObj("KeyPart").commitKeyPart(queryObj("safeEdit1"));
		queryObj("KeyPart").commitKeyPart(queryObj("KeyPart"));
		
		if(BrowserCompatible.prototype.isChrome()){
			o['logonCardPass'] = queryObj("safeEdit1").getValue();
			o['verifyCode'] = queryObj("KeyPart").getValue();
		}else{
			var pass = unParamSafe(queryObj("safeEdit1").getValue(),"logonCardPass");
			var keypart = unParamSafe(queryObj("KeyPart").getValue(),"verifyCode");
			$.extend(o,pass,keypart);
		}
		return o;
	}
	var _isLoggining = false;
	function loginSubmit(){
		try{
			if(_isLoggining)return;
			_isLoggining=true;
		    jQuery("#loginLink").focus();
			showErrTip("none");
			//check user name
			var uName = $("#logonCardNum").val();
			if(uName==""){
				showErrTip("请输入登录名！");
				return;
			}else if(!/^[A-Za-z0-9_]{2,22}$/.test(uName)){
				showErrTip("登录名错误，请重新输入！");
				return;
			}else if((uName.length==16 || uName.length==19) && /^\d*$/.test(uName)){
				if(!isValidCardAndAcctPublic(uName)){
					showErrTip("请输入正确的卡(账)号!");
					return;
				}
			}
			
			//check password and verify code
			if (queryObj("safeEdit1").getLength()<4){
				showErrTip("密码长度至少应该为四位!");
				return;
			}
			if (!queryObj("safeEdit1").isValid()){
		   		showErrTip("输入的密码不合法，请重新输入！");
				return ;
			}
			if (!commitPreHanddle()){
				showErrTip("输入的验证码不合法，请重新输入！");
				return ;
			}
			try{
				//获取当前客户设置的业务地
				if(parent.zoneNo!=undefined){
					document.form1.requestChannelzoneNo.value=parent.zoneNo;
				}
			}catch(e){}
			document.form1.action="/servlet/ICBCINBSEstablishSessionServlet";
			/*  try{
				 if(!commitPreHanddle()){
					alert("输入的验证码不合法，请重新输入！");
					return;
				}; 
			}catch(e){} */
			
			//增加获取浏览器语言和浏览器分辨率的逻辑
			try{
				if(navigator.browserLanguage != null) {
					document.form1.language.value = navigator.browserLanguage.toLowerCase();
				} else if(navigator.language != null) {
					document.form1.language.value = navigator.language.toLowerCase();
				}
			
				if(screen.width > screen.height) {
					document.form1.resolution.value = screen.width + "*" + screen.height;
				} else {
					document.form1.resolution.value = screen.height + "*" + screen.width;
				}
			
			}catch(e){}
			
			
			
			
 			document.all.safeSubmit1.reset();
			document.all.safeEdit1.commit( document.all.safeSubmit1);  
			document.all.safeSubmit1.submit(document.form1); 
		
			btnToggleState("busy");
		}catch(e){
			console.log(e);
			btnToggleState("ok");
			if(e.getMessage)
				log(e.getMessage());
			else
				log(e);
			showErrTip("系统错误，登录异常！");
		}
	}

	//截取错误信息最大字符数，超过用省略号显示..
	function substr(str){
		var maxwidth=120;
		if(str.length > maxwidth)
		{
			str = str.substring(0,maxwidth)+'...';
		}
		return str;
	}
	

	
	function showErrTip(t,issub,epay){
		_isLoggining=false;
		if(t!='none'){
			btnToggleState("ok");
			var te=t;
			if(!issub){//按原文显示
				if(t.length>30){
					te=t.substring(0,30)+"...";
				}
				$("#errorstext").html(te);
				$("#errorstext").attr("title",t); //此区域3月版再放开
			}else{
				$("#errorstext").html(te);
			}
			if(epay){
				$("#errors").hide()
				$("#registlink").hide();
				$("#epaylink").show();
				$("#registlinkdiv").show();
			}else{
				$("#errors").show()
				$("#registlink").hide();
				$("#epaylink").hide();
				$("#registlinkdiv").hide();
			}
			
		}else{
			
			$("#errorstext").html(" ");
			$("#errors").hide()
			$("#errorstext").attr("title","");//此区域3月版再放开
			$("#registlink").show();
			$("#epaylink").hide();
			$("#registlinkdiv").show();
			
		}
	}
	
	function clearErrTip(){
		showErrTip('none');
	}
	
	function btnToggleState(s){
		_isLoggining = false;
		if(s=="ok"){
			//$("#loginBtn").bind("click",loginSubmit);
			$(".login-text").show();
			$(".login-loader").hide();
		}else if(s=="busy"){
			//$("#loginBtn").unbind("click",loginSubmit);
			$(".login-text").hide();
			$(".login-loader").show();
		}
	}
	
	function log(m){
		if(window.console) console.log(m);
	}
	$(function(){
	
		try{
		//if(pebankBrowserCompatible.isIE()){
			document.all.safeSubmit1.reset();
		//}
		}catch(Exception){
			dealException();
		}
		try{
			document.getElementById("logonCardNum").focus();
		}catch(Exception){}	
		//$("#loginBtn").bind("click",loginSubmit);
		$("#logonCardNum").bind("click keydown",function(){
			$("#logonNameHolder").hide();
			showVCode();
			clearErrTip();
		}).bind("blur",function(){
			if($("#logonCardNum").val()==""){
				$("#logonNameHolder").show();
			}
		});
		//jQuery.get("${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/login/uin-h.png");
		//jQuery.get("${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/login/pwd-h.png");
		//jQuery.get("${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/login/vcode-h.png");
		if($("#logonCardNum").val()!=""){
			$("#logonNameHolder").hide();
			jQuery("#logonCardNum").focus();
		}
		
	});
	
	function vcf(flag){
		if("1"==flag){
			try{
			  queryObj("safeEdit1").clear();
				document.all.verifyCode.value='';
		   	}catch(e){}
			refreshVerifyimage(1);//点击按钮刷新的时候需要刷新后台内存和控件的rule值
		}else{
			refreshVerifyimage();	
		}
		
		document.all("VerifyimageFrame").style.display="";
		try{document.getElementById("link4Verifyimage2Name").innerText="";
			jQuery("#link4Verifyimage2Name").hide();		
		}catch(exception){}
		
	}
	function vctimeout(){
		document.getElementById("VerifyimageFrame").style.display="none";
		document.getElementById("VerifyimageFrame").src="";
		try{document.getElementById("link4Verifyimage2Name").innerText="刷新验证码";
		jQuery("#link4Verifyimage2Name").show();}catch(exception){}
		//验证码超时的时候，清空密码输入框和验证码输入框
		try{
		  queryObj("safeEdit1").clear();
			document.all.verifyCode.value='';
	   	}catch(e){}
	   		
		document.getElementById("link4Verifyimage2Name").href="javascript:vcf(1)";
	}
	var vctime=setTimeout("vctimeout()",300000);
	
	// rewrite this function for login
	
	function detectCapsLock(theform,safeEdit,x,y,float_width,posObj){
    var capflag=false;
    var safeEdit1; 
    try{
    	safeEdit1 = eval("document." + theform+"."+ safeEdit);
    	capflag = safeEdit1.CapsOnOrNot();
 	 }catch(exception ){
 		try{
 		 safeEdit1 = eval("document.all."+ safeEdit);
 		 capflag = safeEdit1.CapsOnOrNot();
 		}catch(e){
 		  	capflag=false
 		}
  	}
  	
     if (capflag)
      {
      	showErrTip("大写锁定打开，可能会使您错误输入密码。");
      	
     	//helpor_net_show2(this,event,'<b>大写锁定打开</b><br>保持大写锁定打开可能会使您错误输入密码。<br><br>在输入密码之前，您应该按“Caps Lock”键来将其关闭。',x,y,float_width);
 	}else{
 		try{showErrTip("none");}catch(exception){}
 		
 		}		
	}
	function closeCapTip(theform,safeEdit){
		FocusFlag = false;//控件处于失去焦点状态
		var safeEdit1;// = eval("document." + theform+"."+ safeEdit);
		try{
			safeEdit1 = eval("document." + theform+"."+ safeEdit);
			FocusFlag = safeEdit1.FocusOrNot();
		}catch(Exception){
			try{
				safeEdit1 = eval("document.all."+ safeEdit);
				FocusFlag = safeEdit1.FocusOrNot();
			}catch(e){
				FocusFlag = false;
			}	
		}
		if(!FocusFlag){
			try{showErrTip("none");}catch(exception){}
		}
		
	}

	function form2submit(){
		var serviceId=document.form1.serviceId.value;
		var serviceIdInto=document.form1.serviceIdInto.value;
		var transData=document.form1.transData.value;
		var serviceId1= "";
		var serviceIdInto1 = "";
		var transData1 = "";
		if(serviceId1 != ''){
			document.form2.serviceId.value=serviceId1;
		}else{
			document.form2.serviceId.value=serviceId;
		}
		if(serviceIdInto1 != ''){
			document.form2.serviceIdInto.value=serviceIdInto1;
		}else{
			document.form2.serviceIdInto.value=serviceIdInto;
		}
		if(transData1 != ''){
			document.form2.transData.value=transData1; 
		}else{
			document.form2.transData.value=transData; 
		}
		document.form2.submit();
	}
</script>
<div id="divss"  hidefocus="true"  style="outline:none" ></div>
<form id="form1" name="form1" onsubmit="return false;" 
		action="/servlet/com.icbc.inbs.servlet.ICBCINBSEstablishSessionServlet" target="hiddenPage1516167912660425984" method="post" >
	<input type="hidden" id="AutoVerify" name="AutoVerify" value="4"> 
	<input type="hidden" id="requestChannelInput" name="requestChannelInput" value="302"> 
	<input type="hidden" id="requestChannelzoneNo" name="requestChannelzoneNo" value="0200"> 
	<input type="hidden" id="serviceId" name="serviceId" value=""> 
	<input type="hidden" id="serviceIdInto" name="serviceIdInto" value=""> 
	<input type="hidden" id="transData" name="transData" value="">
	<input type="hidden" id="loginCardFlag" name="loginCardFlag" value="0"> 
	
	<input type="hidden" id="ua" name="ua" value="Wget/1.14 (linux-gnu)">
	<input type="hidden" id="language" name="language" value="">
	<input type="hidden" id="netType" name="netType" value="130">
	<input name="randomId" type="hidden" value="1516167912660425984" />
	<input name="data" type="hidden" value="" />
	<input name="ComputID" type="hidden" value="10" />
	<input name="PlatFlag" type="hidden" value="0" />
	<input name="logonSrc" type="hidden" value="1" />
	<input name="serviceIdfirst" id="serviceIdfirst" type="hidden" value="" />
	<input name="orgurl" id="orgurl" type="hidden" value="" />
	<input name="APPNO" id="APPNO" type="hidden" value="" />
	<input name="ccsi" id="ccsi" type="hidden" value="" />
	<input type="hidden" name="resolution" value="">
	<div class="login-panel">
		<div class="form-area">
			<div class="form-area-line" style="padding-top:15px;">
				<div class="label-login" id="label-login-id" style="padding-bottom:0px;float:left;padding-top:11px;width:220px"><span><b id="logintips">登录</b></span></div>
			
				<div style="float:left">
					<a href="javascript:form2submit();" target="_self" style="text-decoration: none;">
						<img width="46px" height="46px" style="border: currentColor;" src="${pageContext.request.contextPath}/images/login/erwm.png">
					</a>
				</div>
			
			</div>
			<div class="form-area-line">
				<div class="wrapper-obj">
				<div style="float: left;" class="login_username"></div>
				<div style="float: left;">
					<label class="place-holder" id="logonNameHolder" for="logonCardNum">卡（账）号/手机号/用户名</label>
					<input id="logonCardNum" 
						name="logonCardNum" 
						class="input-uname" 
						value="" 
						maxlength="22"
						onkeydown="if((pebankBrowserCompatible.isSafari()||pebankBrowserCompatible.isFirefox()||pebankBrowserCompatible.isChrome())&&pebankBrowserCompatible.getKeycode(event)==9)event.preventDefault();"
						onKeyUp="getfocus1('safeEdit1',event)" 
						style="ime-mode: disabled" autocomplete="off"/>
					</div>
				</div>login
			</div>
			<div class="form-area-line" style="margin-bottom:0px;">
				
					
					<!-- 
						promptText = "登录密码" 
						promptTextColor = "102,102,102" 
						backgroundColor = "255,255,255"
						isBorderVisible = "1"-->
					<div class="wrapper-obj">
					<div style="float: left; " class="login_password"></div>
					<div style="float: left;padding-top: 4px;width: 230px">
						<!--<object id="safeEdit1" codebase="${pageContext.request.contextPath}/icbc/newperbank/AxSafeControls.cab#version=1,0,0,26" classid="CLSID:73E4740C-08EB-4133-896B-8D0A7C9EE3CD" width=200 height=24 style="vertical-align:middle;" onKeyUp="getfocus1('verifyCodeCn', event);" onfocus="clearErrTip();detectCapsLock('logonform','safeEdit1',670,140,400,'logontb')"  onblur="closeCapTip('logonform','safeEdit1')"  >
<param name="name" value="logonCardPass">
<param name="minLength" value="4">
<param name="maxLength" value="30">
<param name="rule" value="10111">
<param name="UniqueID" value="1516167912660425984">
<param name="IsPassword" value="true">
<param name="prompttext" value="登录密码">
<param name="prompttextcolor" value="102,102,102">
<param name="backgroundcolor" value="255,255,255">
<param name="isbordervisible" value="0">
<param name="CryptAlg" value="2">
<param name="ruleName" value="ruleName">
<param name="changeRuleName" value="changeRuleName">
</object>-->
<script>
document.all.safeEdit1.setChangeRules('1239');
document.all.safeEdit1.setRules('115235121131141152287164265217325921112212264228518191');
</script>
<input type="hidden" name="logonCardPass_cryptAlg" value="1"/> 
<input type="text" id="HWInfo" name="HWInfo" value=" " /><script>
try{
 document.all.safeEdit1.setRandom('a48fb838e04048d8de33');
document.all.safeEdit1.setPublicKeyNew('896ea9606752a56e87f30362d852273d3192a2ec7e229015dad5db53bb55fa25ffc7e633d49aa5b4c05c16358b553a62bc10194159df07aa41506dd93e6f68b37b4f62302a0804eb5d2edd54d9b392d4e7fcdf0703601e824ff23876d99f73e4ea3059eda33786168a852f2e695df528eb3e9caf295dca06985cb145fb282c020b57fb4e7e26446b48bcea9ac2b60a249b4491215d35d7c38fb77751416e80288b4a3b76a8d55b4845be814466e5ae07b3aef97094279b1b531bc6a4b8ee63fad321634f8559cf08db337ed706945d178ef1a4f58fd9d9d38d87d078e5b0b6a5abe0eb3b600c6648dc0a69f31ad3e578db513da12818e59436913d899243c3a9||2E42217E840A81289AFD14F912EED3D65AA318D7866F0D8CD05EF149489FA7F3FCDCEB84EA09C123210B5D006AF04E239EC458FF0CF5088BBAFF5A5768FB36A9A466073E0EF42EC013DE2B340CC1071B445BE02ACA82718EEE9C0CFC8C6E21551220A4F0B516C8CE0E4AD250DC3FDAE6801A9679672F75E68C067C281D7A8F41A7894C4993C76D13D6EF283C33D42127ACE07BE3EAE50D9C88386EC9FD05C79BA1546E741384CC7B8579F1F4288B1DEA70F8EC00629F63D5CC169222C1A6BD4C3D2722E1946348192D7BA5EEDE8317D3555401D6CD405F7D49FA850DA2DAF6D69E60ABF412DB662B034FA83CD009163D9F875047F1A73488286CA4F86050F6D1');
var jshwinfo = document.all.safeEdit1.getHwInfo();
document.getElementById("HWInfo").value = jshwinfo;
 }catch(e){}
</script>


					
					</div>
					</div>
					
			</div>
			<div class="form-area-line" style="line-height:32px;overflow:hidden;margin-bottom:0px;text-align:right;font-size:14px;width: 270px;">
						<a href="/resetpwd/reset_pwd_index.jsp?StructCode=1&encryptedData=w9A3onPU54b7Lq9Du2GSCLs8Fpe9sVkrmFZHbpyAf74JsR6gEJL8ONaW1btfSEuQ7VZKRFqR6osR

Rr2cbm2XcEMBgjny0OOiSRhxSFBbuxRRV4vtmX9Yx%2BvmAeqXB3ovXD34QexCrLuBblQX5YTh1MzS

nlcpqSHdRjGz8UaOW69r/70YBfOn0CPyVMaYcOVAd7cJbWx%2B8g3OZYYLzkofLo38v%2BXI3qG3r4O%2B

c9yj1bKDJiYeNRGV4ZdGCnHhsu0hgM/rhHRe25tWjjXXXKLThYhH%2BEtyjlovZTaRIN0Q9S1u1Poq

EX3b2D2WC%2BsWOUBoVOHtTIT66nR6zjghWDRUBRaOWgCymHBey9LxoZBQHt4fPxPpejeFNJpHaU7V

DkggWQD7PZqclCfbVho7WFutMqxxDNt5wgEpw8Cz7ssPCDk=%2B" target="_top" class="link-pwd" hidefocus="true" tabindex="100">忘记密码</a>
			</div>
			<div class="form-area-line" style="margin-bottom: 0px"> 
				
					<div class="wrapper-obj-left">
						<div style="float: left;" class="login_verify"></div>
						<div  style="float: left;padding-top: 4px">
							<div style="position:relative;display:inline-block;_display:inline;_zoom:1;width:135px;">
<label class="place-holder" id="verifyCodeCnHolder" for="verifyCodeCn">验证码</label><input type="text" id="verifyCodeCn" name="verifyCodeCn" value="" maxlength="4" autocomplete="off" style="width:135px;ime-mode:inactive;" nextElemId="login" onKeyUP="if(navigator.userAgent.toLowerCase().indexOf('chrome')!=-1){getfocus1('loginLink', event);}else if(navigator.userAgent.toLowerCase().indexOf('safari')!=-1){}else if(navigator.userAgent.toLowerCase().indexOf('firefox')!=-1){getfocus1('loginLink', event);}else{if(pebankBrowserCompatible.getKeycode(event)==13) loginSubmit();}" onkeydown="if(navigator.userAgent.toLowerCase().indexOf('safari')!=-1){getfocus1('loginLink', event);}" onfocus="clearErrTip()"/><input type="hidden" id="verifyCode" name="verifyCode" value="" /></div>
<style>#verifyCodeCnHolder{z-index:2;position:absolute;color:#666;top:-3px;}</style><script>
function commitPreHanddle(){
var vcode = document.getElementById("verifyCodeCn").value;
document.getElementById("verifyCode").value = encodeURIComponent(vcode);
if(vcode==''){
return false;
}
return true;
}
function verifyCodeClear(){
document.getElementById("verifyCodeCn").value='';
document.getElementById("verifyCode").value = '';
jQuery("#verifyCodeCnHolder").show();}
jQuery("#verifyCodeCn").bind("click keydown",function(){
jQuery("#verifyCodeCnHolder").hide();
}).bind("blur",function(){
if(jQuery("#verifyCodeCn").val()==""){
jQuery("#verifyCodeCnHolder").show();
}
});
jQuery(document).ready(function(){jQuery("#verifyCodeCn").val("");jQuery("#verifyCodeCnHolder").show();});</script>

 
						</div>
					</div>
					<div class="vcode-img-wrapper" style="display: none;height: 36px;overflow: hidden;">
							
							
								
								
								
								
								
							

<IFRAME frameBorder="0" name="VerifyimageFrame" id="VerifyimageFrame" scrolling="no" src="/servlet/com.icbc.inbs.person.servlet.Verifyimage3?randomKey=1516167912660425984&imageAlt=点击图片可刷新&imgheight=36&safePassId=safeEdit1&safePassName=logonCardPass&imgwidth=90" marginHeight=0 marginWidth=0 height=36 width=90 onload="">
</IFRAME>
&nbsp;<a  class="link"  id="link4Verifyimage2Name" href="JavaScript:refreshVerifyimage();" ><nobr><nobr>刷新验证码</nobr></nobr></a>
<script language="JavaScript">
if(navigator.userAgent.toLowerCase().indexOf("chrome/")!=-1){//这里注意chrome的useragent也包含safari
	VerifyimageFrame.location.href="/servlet/com.icbc.inbs.person.servlet.Verifyimage3?randomKey=1516167912660425984&imageAlt=点击图片可刷新&imgheight=36&safePassId=safeEdit1&safePassName=logonCardPass&imgwidth=90"+"&appendRandom="+(new Date()).getTime();
}else if(navigator.userAgent.toLowerCase().indexOf("safari")!=-1|| navigator.userAgent.toLowerCase().indexOf("firefox")!=-1){
	VerifyimageFrame.location.href="/servlet/com.icbc.inbs.person.servlet.Verifyimage3?randomKey=1516167912660425984&imageAlt=点击图片可刷新&imgheight=36&safePassId=safeEdit1&safePassName=logonCardPass&imgwidth=90"+"&appendRandom="+(new Date()).getTime();
}
function refreshVerifyimage(flag){
	if("1"==flag){
	
		if(navigator.userAgent.toLowerCase().indexOf("chrome/")!=-1){//这里注意chrome的useragent也包含safari
			var url = window.document.location.protocol+'//'+window.document.location.host+"/servlet/com.icbc.inbs.person.servlet.Verifyimage3?randomKey=1516167912660425984&imageAlt=点击图片可刷新&imgheight=36&safePassId=safeEdit1&safePassName=logonCardPass&imgwidth=90"+"&appendRandom="+(new Date()).getTime()+"&flushflag=1";
			VerifyimageFrame.location.replace(url);
		}else if(navigator.userAgent.toLowerCase().indexOf("safari")!=-1){//safari回退时，验证码不刷新问题
			window.focus();//解决db103335688
			VerifyimageFrame.location.href=window.document.location.protocol+'//'+window.document.location.host+"/servlet/com.icbc.inbs.person.servlet.Verifyimage3?randomKey=1516167912660425984&imageAlt=点击图片可刷新&imgheight=36&safePassId=safeEdit1&safePassName=logonCardPass&imgwidth=90"+"&appendRandom="+(new Date()).getTime()+"&flushflag=1";
		}else{
			VerifyimageFrame.location.href=window.document.location.protocol+'//'+window.document.location.host+"/servlet/com.icbc.inbs.person.servlet.Verifyimage3?randomKey=1516167912660425984&imageAlt=点击图片可刷新&imgheight=36&safePassId=safeEdit1&safePassName=logonCardPass&imgwidth=90"+"&appendRandom="+(new Date()).getTime()+"&flushflag=1";
		}
	}else{
		if(navigator.userAgent.toLowerCase().indexOf("chrome/")!=-1){//这里注意chrome的useragent也包含safari
			var url = window.document.location.protocol+'//'+window.document.location.host+"/servlet/com.icbc.inbs.person.servlet.Verifyimage3?randomKey=1516167912660425984&imageAlt=点击图片可刷新&imgheight=36&safePassId=safeEdit1&safePassName=logonCardPass&imgwidth=90"+"&appendRandom="+(new Date()).getTime();
			VerifyimageFrame.location.replace(url);
		}else if(navigator.userAgent.toLowerCase().indexOf("safari")!=-1){//safari回退时，验证码不刷新问题
			window.focus();//解决db103335688
			VerifyimageFrame.location.href=window.document.location.protocol+'//'+window.document.location.host+"/servlet/com.icbc.inbs.person.servlet.Verifyimage3?randomKey=1516167912660425984&imageAlt=点击图片可刷新&imgheight=36&safePassId=safeEdit1&safePassName=logonCardPass&imgwidth=90"+"&appendRandom="+(new Date()).getTime();
		}else{
			VerifyimageFrame.location.href=window.document.location.protocol+'//'+window.document.location.host+"/servlet/com.icbc.inbs.person.servlet.Verifyimage3?randomKey=1516167912660425984&imageAlt=点击图片可刷新&imgheight=36&safePassId=safeEdit1&safePassName=logonCardPass&imgwidth=90"+"&appendRandom="+(new Date()).getTime();
		}
	}

	try{
		//刷新验证码后重新进行倒计时，只对页面定义了vctimeout()的页面有效。
	    clearTimeout(vctime);
	    vctime=setTimeout("vctimeout()",300000);
	}catch(exception){}
}
</script>
							
							<script language="javascript">
								try{
									jQuery("#link4Verifyimage2Name").css("color","#5aa5ff");
									jQuery("#link4Verifyimage2Name").html("");//不改变文字会导致首次显示验证码触发vcf方法
									jQuery("#link4Verifyimage2Name").hide();//不隐藏会导致多次按tab键时显示有问题
									//document.getElementById("link4Verifyimage2Name").innerText="";
								}catch(exception){}
								
								function showVCode(){
									if(!jQuery(".vcode-img-wrapper").is(":visible")){
										jQuery(".vcode-img-wrapper").show();
										if(!jQuery("#link4Verifyimage2Name").html()=="")
											vcf();
									}
								}
							</script>
				 	</div>
			</div>
			<div class="form-area-line" style="margin-bottom:0px;height: 36px;width:270px">
					
			</div>
			
			<div class="form-area-line form-area-line-login">
				<a id="loginLink" href="javascript:void(0);" onfocus = this.blur()>
					<div id="loginBtn" class="login-btn n_btn" onClick="loginSubmit()">
						<span class="login-text">登&nbsp;&nbsp;&nbsp;录</span>
						<img class="login-loader" src="${pageContext.request.contextPath}/images/login/load.gif" width="22px" height="22px" />
					</div>
				</a>
			</div>
			<div class="form-area-line text-left" style="line-height: 25px" id="registlinkdiv">
			
							 	
			<div class="form-area-link" id="registlink">
			
					<!-- <a href="javascript:form2submit();" target="_self" style="text-decoration: none;margin-right:15px">扫码登录</a> -->
			
					<a href="/regist/regist_index.jsp?StructCode=1&encryptedData=w9A3onPU54b7Lq9Du2GSCLs8Fpe9sVkrmFZHbpyAf74JsR6gEJL8ONaW1btfSEuQ7VZKRFqR6osR

Rr2cbm2XcEMBgjny0OOiSRhxSFBbuxRRV4vtmX9Yx%2BvmAeqXB3ovXD34QexCrLuBblQX5YTh1MzS

nlcpqSHdRjGz8UaOW69r/70YBfOn0CPyVMaYcOVAd7cJbWx%2B8g3OZYYLzkofLo38v%2BXI3qG3r4O%2B

c9yj1bKDJiYeNRGV4ZdGCnHhsu0hgM/rhHRe25tWjjXXXKLThYhH%2BEtyjlovZTaRIN0Q9S1u1Poq

EX3b2D2WC%2BsWOUBoVOHtTIT66nR6zjghWDRUBRaOWgCymHBey9LxoZBQHt4fPxPpejeFNJpHaU7V

DkggWQD7PZqclCfbVho7WFutMqxxDNt5wgEpw8Cz7ssPCDk=%2B" target="_blank" style="text-decoration: none;">立即注册
					<!-- <img src="${pageContext.request.contextPath}/images/login/registlink.gif" /> -->
					<!-- <div class="form-area-link-line">
						<div class="form-area-link-left">
							<div>已有工行卡，未注册网上银行<br/>没有工行卡，就要用网上银行</div>
						</div>
						
						<div class="form-area-link-right">
						立即<br/>注册
						</div>
					</div> -->
					</a>
				</div>
				<div id="epaylink" class="form-area-link"  title="" style="display:none">
					<div  class=" form-area-link-line" style="padding-left: 16px;padding-right: 16px;padding-top: 3px;">96114676:已为您升级电子银行服务，请点击<a href="/resetpwd/reset_pwd_index.jsp?StructCode=1&encryptedData=w9A3onPU54b7Lq9Du2GSCLs8Fpe9sVkrmFZHbpyAf74JsR6gEJL8ONaW1btfSEuQ7VZKRFqR6osR

Rr2cbm2XcEMBgjny0OOiSRhxSFBbuxRRV4vtmX9Yx%2BvmAeqXB3ovXD34QexCrLuBblQX5YTh1MzS

nlcpqSHdRjGz8UaOW69r/70YBfOn0CPyVMaYcOVAd7cJbWx%2B8g3OZYYLzkofLo38v%2BXI3qG3r4O%2B

c9yj1bKDJiYeNRGV4ZdGCnHhsu0hgM/rhHRe25tWjjXXXKLThYhH%2BEtyjlovZTaRIN0Q9S1u1Poq

EX3b2D2WC%2BsWOUBoVOHtTIT66nR6zjghWDRUBRaOWgCymHBey9LxoZBQHt4fPxPpejeFNJpHaU7V

DkggWQD7PZqclCfbVho7WFutMqxxDNt5wgEpw8Cz7ssPCDk=%2B" target="_top" class="link-pwd" hidefocus="true" tabindex="100">账户升级</a>以获取更多服务。</div>
				</div>
               <script type="text/javascript">
                   ////获取Canvas对象(画布)
                   try{
								
								
                   var canvas = document.getElementById("myCanvas2");
                   ////简单地检测当前浏览器是否支持Canvas对象，以免在一些不支持html5的浏览器中提示语法错误
                   if (canvas.getContext) {
                       //    //获取对应的CanvasRenderingContext2D对象(画笔)
                       var ctx = canvas.getContext("2d");    //注意，Canvas的坐标系是：Canvas画布的左上角为原点(0,0)，向右为横坐标，向下为纵坐标，单位是像素(px)。
                       //    //开始一个新的绘制路径
                       ctx.beginPath();
                       //    //定义直线的起点坐标为(0,0)
                       ctx.moveTo(0, 0);
                       //    //定义直线的终点坐标为(300,150)
                       ctx.lineTo(300, 150);
                       ctx.strokeStyle = 'rgba(255,255,255,0.5)';
                       //    //沿着坐标点顺序的路径绘制直线
                       ctx.stroke();
                       //    //关闭当前的绘制路径
                       ctx.closePath();
                   }
                   }catch(exception){}
               </script>
		</div>
		<div class="form-area-line text-left" style="line-height: 25px">
		<div id="errors" class="form-area-link"  title="" style="display:none">
			<div id="errorstext" class=" form-area-link-line" style="padding-left: 16px;padding-right: 16px;padding-top: 3px;"></div>
		</div>
		</div>
	</div>
	</div>
</form>
<form id="form2" name="form2" action="/servlet/ICBCBaseReqServletNoSession" method="get" onsubmit="return false;" >
	<input type="hidden" name="dse_operationName" value="epass_CreateQRCodeOp">    
	<input type="hidden" id="serviceId" name="serviceId" value=""> 
	<input type="hidden" id="serviceIdInto" name="serviceIdInto" value=""> 
	<input type="hidden" id="transData" name="transData" value="">
	<input type="hidden" id="StructCode" name="StructCode" value="1" />
	<input type="hidden" id="clientIP" name="clientIP"  value="" />
	<input type="hidden" id="orgurl" name="orgurl" value="" />
	<input type="hidden" id="APPNO" name="APPNO"  value="" />
</form>
<canvas width="0" height="0" id="myCanvas2" style="position: absolute; left: 0px; top:0px;"></canvas>
<iframe id="hiddenPage1516167912660425984" name="hiddenPage1516167912660425984" src="${pageContext.request.contextPath}/login/1.html" height="0" width="0" style="display:none">&nbsp;</iframe>
<object id="safeSubmit1" codebase="${pageContext.request.contextPath}/icbc/newperbank/AxSafeControls.cab#version=1,0,0,12" classid="CLSID:8D9E0B29-563C-4226-86C1-5FF2AE77E1D2" height=0 width=0>
</object>

</body>
</html>
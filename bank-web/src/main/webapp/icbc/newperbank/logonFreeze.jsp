







<script language="JavaScript1.1" src="/icbc/newperbank/js/includes/ControlsId.js"></script>




 <script>
	try{
		if(isNaN('icbc.com.cn'.replace(/\./g,""))){
			document.domain='icbc.com.cn';}
	}catch(e){
		
	}
 </script>
<script src="/icbc/newperbank/js/perbank3/js0011.js?ver=2018011409"></script>

<script>
 CrossDomain.parentHost =  'https://mybank.icbc.com.cn';
 CrossDomain.perbankHost =  'https://mybank.icbc.com.cn';
 CrossDomain.crossHost = 'icbc.com.cn';
 CrossDomain.icbcDomain="*.icbc.com.cn";//添加父域名
 CrossDomain.clientIP = '47.94.130.112';
</script>


<html>
	<head>
		<title>个人网上银行</title>
		<meta http-equiv="Content-Type" content="text/html; charset=GBK">
		<link rel="stylesheet" type="text/css" href="../newperbank/css/css.css">
		<script language="javascript" src="js/swapimage.js"></script>
		<script language="javascript" src="js/checkacct.js"></script>
		<script language="javascript" src="js/LogoncommonCheck.js"></script>
		<script language="javascript" src="js/includes/pebank_browsercompatible.js"></script>
		<script language="javascript" src="/icbc/newperbank/js/preventFresh.js"></script>
		<script language="javascript">
		<!--
			function check()
			{
				var tempcardnum=	document.all.regCardNum.value;
				if(tempcardnum.substring(0,6)=="955886" && tempcardnum.substring(10,11)=="9" ){
					alert("该功能不支持e理财客户！");
					return ;
				}
				
				if(!isValidCardAndAcctPublic(tempcardnum)){
					alert("请输入正确的卡（账）号！");
					document.all.regCardNum.select();
					document.all.regCardNum.focus();
					return;
		
				}
				else if(!document.all.KeyPart.isValid())
				{
				    alert("输入的验证码不合法，请重新输入！");
					return ;					
				}
				else
				{
				    document.all.tokenSafeSubmit.reset();
					document.all.KeyPart.commitKeyPart(document.all.KeyPart);
					document.all.KeyPart.commit(tokenSafeSubmit);
					document.all.tokenSafeSubmit.submit(LogonFreezeForm);
					return false;
				}
			}			
			function myreset()
			{
				document.LogonFreezeForm.reset();
				return;
			}
			function checkKeyUp(event) {
            	if(event.keyCode==13) {
            		check();
            	}
            }		
		//-->
		</script>
	</head>	
	
	<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="MM_preloadImages('../newperbank/images/corpor2.gif','../newperbank/images/returnhome2.jpg')">

		<object id="tokenSafeSubmit" codebase="/icbc/newperbank/AxSafeControls.cab#version=1,0,0,7" classid="CLSID:8D9E0B29-563C-4226-86C1-5FF2AE77E1D2" height=0 width=0style="HEIGHT: 0px; WIDTH: 0px" VIEWASTEXT>
</object>

		<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="70">
			<tr valign="middle">
				<td width="278"><img src="/icbc/newperbank/images/logo.gif" width="278" height="48"></td>
				<td width="130"><img src="/icbc/newperbank/images/webbank.gif" width="130" height="48"></td>
				<td width="76"><img src="/icbc/newperbank/images/red.gif" width="76" height="48"></td>				
				<td width="542">
					<br>
					<table width="85%" border="0" cellspacing="0" cellpadding="0" align="center" height="22">
						<tr valign="bottom"> 
							<td><a href="/icbc/newperbank/bankbook/bankbook_gowww.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('home1','','/icbc/newperbank/images/returnhome2.jpg',1)"><img src="/icbc/newperbank/images/returnhome1.jpg" border="0" name="home1"></a></td>
							<td align="right"><a href="https://corporbank.icbc.com.cn/icbc/corporbank/logon.jsp" target="_top" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image2','','../newperbank/images/corpor2.gif',1)"><img src="images/corpor1.gif" width="99" height="15" border="0" name="Image2"></a></td>
						</tr>
					</table>
				</td>
				<td width="50"><img src="images/red.gif" width="50" height="48"></td>
			</tr>
		</table>
		<table width="600" border="0" cellspacing="0" cellpadding="0" align="center">
			<tr>
				<td align="center" height="19" valign="top" width="5%">
					<p><img src="../newperbank/images/arrow1.gif" width="18" height="13" align="top"></p>
				</td>
				<td>自助关闭网上银行登录操作提示：</td>
			</tr>
		</table>
		<table border="0" cellspacing="0" cellpadding="0" align="center">
			<tr>
				<td width="20"></td>
				<td width="570">
					<p style="line-height: 150%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您可在系统验证自己身份信息后，来完成自助关闭个人网银的操作。关闭成功后，将无法登录您的个人网银，如需再次使用个人网上银行，请携带您的注册卡、有效证件到当地的工行营业网点办理“取消网上银行登录限制”。</p>
				</td>
			</tr>
		</table>

<form name="LogonFreezeForm" method="post" action="/servlet/com.icbc.inbs.servlet.ICBCINBSEstablishSessionServlet" onsubmit="javascript:return false">
	<input type="hidden" name="netType" value="124">
	<input type="hidden" name="Language" value="zh_CN">
	<input type="hidden" name="tranFlag" value="0">
	<input type="hidden" name="OperFlag" value="2">
	<input type="hidden" name="PlatFlag" value="0">
	<input type="hidden" name="ComputID" value="10">
		<table width="485" border="0" cellspacing="0" cellpadding="0" align="center">
			<tr>
				<td colspan="3"><img src="../newperbank/images/regist1.jpg" width="485"></td>
			</tr>
			<tr>
				<td width="25"><IMG src="../newperbank/images/regist21.jpg"></td>
				<td width="451" rowspan="3">
					<table width="451" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>&nbsp;</td>
							<td align="right"><img src="../newperbank/images/regis_top2.gif"></td>
						</tr>
					</table>
					<table width="451" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td valign="bottom"><img src="../newperbank/images/regis_bottom3.gif"></td>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
									<tr align="center">
										<td height="25" colspan="3"><b><FONT size=3>自助关闭网上银行登录</FONT></b></td>
									</tr>
									<tr>
										<td height="30">&nbsp;</td>
										
									</tr>
									<tr>
										<td height="20" width="35%" align="right">注册卡(账)号：</td>
										<td height="20" width="65%">
											<input type="text" style="font-size: 12px;width:141px;" name="regCardNum" size="22" maxlength=22	checktype="cardnum">
										</td>
									</tr>
									<tr>
										<td height="30" align="right">验证码：</td>
										<td>
											<object id="KeyPart" codebase="/icbc/newperbank/AxSafeControls.cab#version=1,0,0,13" classid="CLSID:73E4740C-08EB-4133-896B-8D0A7C9EE3CD" width=40 height=28 style="vertical-align:middle;" onKeyUP="checkKeyUp(event)">
<param name="name" value="verifyCode">
<param name="minLength" value="4">
<param name="maxLength" value="4">
<param name="rule" value="10111">
<param name="UniqueID" value="151609159613197761">
<param name="IsPassword" value="false">
<param name="prompttext" value=" ">
<param name="prompttextcolor" value="0,0,0">
<param name="backgroundcolor" value="255,255,255">
<param name="isbordervisible" value="1">
</object>

	                                        <input type="hidden" name="randomId" value="151609159613197761">
											
										



<IFRAME frameBorder="0" name="VerifyimageFrame" id="VerifyimageFrame" scrolling="no" src="/servlet/com.icbc.inbs.person.servlet.Verifyimage2?randomKey=151609159613197761&imageAlt=点击图片可刷新" marginHeight=0 marginWidth=0 style="vertical-align:middle;" height=28 width=80 onload="this.contentWindow.document.oncontextmenu =  function(){return false;};">
</IFRAME>
&nbsp;<a  class="link"  id="link4Verifyimage2Name" href="JavaScript:refreshVerifyimage();" ><nobr><nobr>刷新验证码</nobr></nobr></a>
<script language="JavaScript">
if(navigator.userAgent.toLowerCase().indexOf("chrome/")!=-1){//这里注意chrome的useragent也包含safari
	VerifyimageFrame.location.href="/servlet/com.icbc.inbs.person.servlet.Verifyimage2?randomKey=151609159613197761&imageAlt=点击图片可刷新"+"&appendRandom="+(new Date()).getTime();
}else if(navigator.userAgent.toLowerCase().indexOf("safari")!=-1|| navigator.userAgent.toLowerCase().indexOf("firefox")!=-1){
	VerifyimageFrame.location.href="/servlet/com.icbc.inbs.person.servlet.Verifyimage2?randomKey=151609159613197761&imageAlt=点击图片可刷新"+"&appendRandom="+(new Date()).getTime();
}
function refreshVerifyimage(){
	if(navigator.userAgent.toLowerCase().indexOf("chrome/")!=-1){//这里注意chrome的useragent也包含safari
		var url = "/servlet/com.icbc.inbs.person.servlet.Verifyimage2?randomKey=151609159613197761&imageAlt=点击图片可刷新"+"&appendRandom="+(new Date()).getTime();
		VerifyimageFrame.location.replace(url);
	}else if(navigator.userAgent.toLowerCase().indexOf("safari")!=-1){//safari回退时，验证码不刷新问题
		window.focus();//解决db103335688
		VerifyimageFrame.location.href="/servlet/com.icbc.inbs.person.servlet.Verifyimage2?randomKey=151609159613197761&imageAlt=点击图片可刷新"+"&appendRandom="+(new Date()).getTime();
	}else{
		VerifyimageFrame.location.reload();
	}

	 try{
		//刷新验证码后重新进行倒计时，只对页面定义了vctimeout()的页面有效。
	    clearTimeout(vctime);
	    vctime=setTimeout("vctimeout()",300000);
	}catch(exception){} 
		
}
/*
if(pebankBrowserCompatible.isSafari()||pebankBrowserCompatible.isChrome()){
	//屏蔽回退按钮
	challengeFrame.history.go=function(){
		pebankBrowserCompatible.alertHistoryTip();
	}
	challengeFrame.history.back=function(){
		pebankBrowserCompatible.alertHistoryTip();
	}
}
*/
</script>
										<script language="javascript">try{document.getElementById("link4Verifyimage2Name").innerHTML="刷新";}catch(exception){}</script>
										</td>
									</tr>
									<tr>
										<td height="30">&nbsp;</td>
										
									</tr>
									<tr>										
										<td height="20" colspan="3">
											&nbsp;&nbsp;&nbsp;&nbsp;尊敬的客户：如果发现您的个人网银有可能被盗用、或近期内不使用个人网银，可以通过本功能自助关闭网上银行的登录权限，关闭后将不能登录个人网上银行或进行B2C支付。
										</td>
									</tr>
									<tr>										
										<td height="10" colspan="3">
											
										</td>
									</tr>
									<tr>										
										<td height="20" colspan="3">
											&nbsp;&nbsp;&nbsp;&nbsp;如需再次使用个人网上银行，请您本人携带注册卡及有效证件到我行当地的营业网点办理“取消网银登录限制”。
										</td>
									</tr>
									<tr>										
										<td height="20" colspan="3">
											
										</td>
									</tr>
									<tr>
										<td height="25" colspan="3" align="center">
											<br>
											<a href="javascript:check();"><img src="../newperbank/images/button/submit.gif" border="0"></a>
											&nbsp;&nbsp;
											<a href="/icbc/perbank/index.jsp"><img	src="/icbc/newperbank/images/button/cancel.gif" border="0"></a>
										</td>
									</tr>
								</table>
							</td>
							<td align="right" valign="top">
								<img src="../newperbank/images/regis_top3.gif">
							</td>
						</tr>
					</table>
					<table width="451" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<img src="../newperbank/images/regis_bottom2.gif">
							</td>
						</tr>
					</table>
				</td>
				<td width="9" rowspan="3" background="../newperbank/images/regist4.jpg">&nbsp;</td>
			</tr>
			<tr>
				<td background="../newperbank/images/regist22.jpg" height="200">&nbsp;</td>
			</tr>
			<tr>
				<td valign="bottom"><img src="../newperbank/images/regist23.jpg"></td>
			</tr>
			<tr>
				<td colspan="3" height="2">
					<img src="../newperbank/images/regist3.jpg" width="485">
				</td>
			</tr>
		</table>
</form>

		<table width="700" border="0" cellspacing="0" cellpadding="0" align="center">
  			<tr align="center">
  				<td>
					
						<font color="bc0021">请与我们联系 <a href="mailto:webmaster@icbc.com.cn">webmaster@icbc.com.cn</a> 中国工商银行版权所有</font>
					  				
				</td>
  			</tr>
  		</table>

	</body>
</html>

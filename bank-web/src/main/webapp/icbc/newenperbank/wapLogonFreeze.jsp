






<script language="JavaScript1.1" src="/icbc/newenperbank/js/includes/ControlsId.js"></script>



<html>
	<head>
		<title>Personal Internet Banking-self-registration</title>
		<meta http-equiv="Content-Type" content="text/html; charset=GBK">
		<link rel="stylesheet" type="text/css" href="../newenperbank/css/css.css">
		<script language="javascript" src="js/swapimage.js"></script>
		<script language="javascript" src="js/checkacct.js"></script>
		<script language="javascript" src="js/LogoncommonCheck.js"></script>
		<script language="javascript" src="js/includes/pebank_browsercompatible.js"></script>
		<script language="javascript" src="/icbc/newperbank/js/preventFresh.js"></script>
		<script language="javascript">
		<!--
			function check()
			{
				var tempcardnum=	document.LogonFreezeForm.regCardNum.value;
				if(tempcardnum.substring(0,6)=="955886" && tempcardnum.substring(10,11)=="9" ){
					alert("This function does not support customers holding wealth e-Card!");
					return ;
				}
				
				if(formCheck('LogonFreezeForm')==false)
				{
					return;
				}
				else if(!document.all.KeyPart.isValid())
				{
				    alert("Invalid verification code, enter again!");
					return ;					
				}
				else
				{
					if(AcctCheck19(document.LogonFreezeForm.regCardNum.value)){
						document.LogonFreezeForm.OperFlag.value="7";
					}
				    document.all.tokenSafeSubmit.reset();
					document.all.KeyPart.commitKeyPart(document.all.KeyPart);
					document.all.KeyPart.commit(tokenSafeSubmit);
					document.all.tokenSafeSubmit.submit(LogonFreezeForm);
					return false;
				}
			}	
			function checkKeyUp(event) {
            	if(event.keyCode==13) {
            		check();
            	}
            }	
					
			function myreset()
			{
				document.LogonFreezeForm.reset();
				return;
			}		
		//-->
		</script>
	</head>	
	
	<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="MM_preloadImages('../newenperbank/images/corpor2.gif','../newenperbank/images/returnhome2.jpg')">
		<object id="tokenSafeSubmit" codebase="/icbc/newperbank/AxSafeControls.cab#version=1,0,0,7" classid="CLSID:8D9E0B29-563C-4226-86C1-5FF2AE77E1D2" height=0 width=0style="HEIGHT: 0px; WIDTH: 0px" VIEWASTEXT>
</object>

		<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="70">
			<tr valign="middle">
				<td width="278"><img src="/icbc/newenperbank/images/logo.gif" width="278" height="48"></td>
				<td width="200"><img src="/icbc/newenperbank/images/webbank_1.gif" width="200" height="48"></td>
				<td width="50"><img src="/icbc/newenperbank/images/red.gif" width="50" height="48"></td>				
				<td width="542">
					<br>
					<table width="85%" border="0" cellspacing="0" cellpadding="0" align="center" height="22">
						<tr valign="bottom"> 
							<td><a href="/icbc/newenperbank/bankbook/bankbook_gowww.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('home1','','/icbc/newenperbank/images/returnhome2.jpg',1)"><img src="/icbc/newenperbank/images/returnhome1.jpg" border="0" name="home1"></a></td>
							<td align="right"><a href="https://corporbank.icbc.com.cn/icbc/corporbank/logon.jsp" target="_top" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image2','','../newenperbank/images/corpor2.gif',1)"><img src="images/corpor1.gif" width="99" height="15" border="0" name="Image2"></a></td>
						</tr>
					</table>
				</td>
				<td width="50"><img src="images/red.gif" width="50" height="48"></td>
			</tr>
		</table>
		<table width="600" border="0" cellspacing="0" cellpadding="0" align="center">
			<tr>
				<td align="center" height="19" valign="top" width="5%">
					<p><img src="../newenperbank/images/arrow1.gif" width="18" height="13" align="top"></p>
				</td>
				<td>Instruction for disabling logon Mobile Banking:</td>
			</tr>
		</table>
		<table border="0" cellspacing="0" cellpadding="0" align="center">
			<tr>
				<td width="20"></td>
				<td width="570">
					<p style="line-height: 150%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You can disable Mobile Banking after verification of your identity by the system. You cannot logon after your Mobile Banking is successfully disabled. To use the Mobile Banking again, bring your registration card and valid identity document, go to local ICBC outlet to "Cancel restriction in Mobile Banking logon"</p>
				</td>
			</tr>
		</table>

<form name="LogonFreezeForm" method="post" action="/servlet/com.icbc.inbs.servlet.ICBCINBSEstablishSessionServlet" onsubmit="javascript:return false">
	<input type="hidden" name="netType" value="129">
	<input type="hidden" name="Language" value="en_US">
	<input type="hidden" name="tranFlag" value="0">
	<input type="hidden" name="OperFlag" value="7">
	<input type="hidden" name="PlatFlag" value="0">
	<input type="hidden" name="ComputID" value="10"> 
		<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
			<tr>
				<td colspan="3"><img src="../newenperbank/images/regist1.jpg" width="560"></td>
			</tr>
			<tr>
				<td width="25"><IMG src="../newenperbank/images/regist21.jpg"></td>
				<td width="526" rowspan="3">
					<table width="526" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>&nbsp;</td>
							<td align="right"><img src="../newenperbank/images/regis_top2.gif"></td>
						</tr>
					</table>
					<table width="526" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td valign="bottom"><img src="../newenperbank/images/regis_bottom3.gif"></td>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
									<tr align="center">
										<td height="25" colspan="3"><b><FONT size=3>Disable Mobile Banking logon</FONT></b></td>
									</tr>
									<tr>
										<td height="30">&nbsp;</td>
										
									</tr>
									<tr>
										<td height="20" width="35%" align="right">Registration card (A/C) No.:</td>
										<td height="20" width="65%">
											<input type="text" style="font-size: 12px" name="regCardNum" size="19" maxlength=19	checktype="cardnum">
										</td>
									</tr>
									<tr>
										<td height="30" align="right">Verification code:</td>
										<td>
											<object id="KeyPart" codebase="/icbc/newperbank/AxSafeControls.cab#version=1,0,0,13" classid="CLSID:73E4740C-08EB-4133-896B-8D0A7C9EE3CD" width=40 height=28 style="vertical-align:middle;" onKeyUP="checkKeyUp(event)">
<param name="name" value="verifyCode">
<param name="minLength" value="4">
<param name="maxLength" value="4">
<param name="rule" value="10111">
<param name="UniqueID" value="1515824163578761964">
<param name="IsPassword" value="false">
<param name="prompttext" value=" ">
<param name="prompttextcolor" value="0,0,0">
<param name="backgroundcolor" value="255,255,255">
<param name="isbordervisible" value="1">
</object>


	                                        <input type="hidden" name="randomId" value="1515824163578761964">
											



<IFRAME frameBorder="0" name="VerifyimageFrame" id="VerifyimageFrame"  scrolling="no" src="/servlet/com.icbc.inbs.person.servlet.Verifyimage2?lang_en=en_US&randomKey=1515824163578761964&imageAlt=Refresh verification code" marginHeight=0 marginWidth=0 style="vertical-align:middle;" height=28 width=80 onload="this.contentWindow.document.oncontextmenu =  function(){return false;};">
</IFRAME>
&nbsp;<a  class="link"  id="link4Verifyimage2Name" href="JavaScript:refreshVerifyimage();" ><nobr><nobr>Refresh verification code</nobr></nobr></a>
<script language="JavaScript">
if(navigator.userAgent.toLowerCase().indexOf("chrome/")!=-1){//这里注意chrome的useragent也包含safari
	VerifyimageFrame.location.href="/servlet/com.icbc.inbs.person.servlet.Verifyimage2?lang_en=en_US&randomKey=1515824163578761964&imageAlt=Refresh verification code"+"&appendRandom="+(new Date()).getTime();
}else if(navigator.userAgent.toLowerCase().indexOf("safari")!=-1|| navigator.userAgent.toLowerCase().indexOf("firefox")!=-1){
	VerifyimageFrame.location.href="/servlet/com.icbc.inbs.person.servlet.Verifyimage2?lang_en=en_US&randomKey=1515824163578761964&imageAlt=Refresh verification code"+"&appendRandom="+(new Date()).getTime();
}
function refreshVerifyimage(){
	if(navigator.userAgent.toLowerCase().indexOf("chrome/")!=-1){//这里注意chrome的useragent也包含safari
		var url = "/servlet/com.icbc.inbs.person.servlet.Verifyimage2?lang_en=en_US&randomKey=1515824163578761964&imageAlt=Refresh verification code"+"&appendRandom="+(new Date()).getTime();
		VerifyimageFrame.location.replace(url);
	}else if(navigator.userAgent.toLowerCase().indexOf("safari")!=-1){//safari回退时，验证码不刷新问题
		window.focus();//解决db103335688
		VerifyimageFrame.location.href="/servlet/com.icbc.inbs.person.servlet.Verifyimage2?lang_en=en_US&randomKey=1515824163578761964&imageAlt=Refresh verification code"+"&appendRandom="+(new Date()).getTime();
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
											<script language="javascript">try{document.getElementById("link4Verifyimage2Name").innerHTML="Refresh";}catch(exception){}</script>
										</td>
									</tr>
									<tr>
										<td height="30">&nbsp;</td>
										
									</tr>
									<tr>										
										<td height="20" colspan="3">
											&nbsp;&nbsp;&nbsp;&nbsp;Dear Customer: if you found out that your Mobile Banking may be used by someone, or you are not going to use Mobile Banking in the near future, use this function to disable your logon permission. After that, you cannot logon Mobile Banking or make B2C payment. 

										</td>
									</tr>
									<tr>										
										<td height="10" colspan="3">
											
										</td>
									</tr>
									<tr>										
										<td height="20" colspan="3">
											&nbsp;&nbsp;&nbsp;&nbsp;To use the Mobile Banking again, bring your registration card and valid identity document, go to local ICBC outlet to "Cancel restriction in Mobile Banking logon".
										</td>
									</tr>
									<tr>										
										<td height="20" colspan="3">
											
										</td>
									</tr>
									<tr>
										<td height="25" colspan="3" align="center">
											<br>
											<a href="javascript:check();"><img src="../newenperbank/images/button/submit.gif" border="0"></a>
											&nbsp;&nbsp;
											<a href="/icbc/enperbank/index.jsp"><img	src="/icbc/newenperbank/images/button/cancel.gif" border="0"></a>
										</td>
									</tr>
								</table>
							</td>
							<td align="right" valign="top">
								<img src="../newenperbank/images/regis_top3.gif">
							</td>
						</tr>
					</table>
					<table width="470" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<img src="../newenperbank/images/regis_bottom2.gif">
							</td>
						</tr>
					</table>
				</td>
				<td width="9" rowspan="3" background="../newenperbank/images/regist4.jpg">&nbsp;</td>
			</tr>
			<tr>
				<td background="../newenperbank/images/regist22.jpg" height="200">&nbsp;</td>
			</tr>
			<tr>
				<td valign="bottom"><img src="../newenperbank/images/regist23.jpg"></td>
			</tr>
			<tr>
				<td colspan="3" height="2">
					<img src="../newenperbank/images/regist3.jpg" width="560">
				</td>
			</tr>
		</table>
</form>

		<table width="700" border="0" cellspacing="0" cellpadding="0" align="center">
  			<tr align="center">
  				<td>
  					<font color="bc0021">Conact us <a href="mailto:webmaster@icbc.com.cn">webmaster@icbc.com.cn</a>  ICBC @ Copyright All Rights Reserved</font>
  				</td>
  			</tr>
  		</table>

	</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script language="JavaScript1.1" src="/js/ControlsId.js"></script>

<title>中国工商银行-注册</title>

<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" type="text/css" href="/css/css.css">
<script language="javascript" src="/js/swapimage.js"></script>
<script language="javascript" src="/js/checkacct.js"></script>
<script language="javascript" src="/js/commonCheck.js"></script>
<script language="javascript" src="/js/pid.js"></script>
<script language="javascript" src="/js/getcardbinfo.js"></script>
<script language="javascript" src="/js/pebank_browsercompatible.js"></script>
<script language="javascript" src="/js/preventFresh.js"></script>
<script language="javascript" src="/js/jquery-1.4.3.js"></script>
<script language="Javascript" src="/js/floatTip1.js"></script>
<script language="javascript" src="/js/floatTip.js"></script>
<script language="javascript" src="/js/json2.js"></script>
<script language="javascript" src="/js/datastruct-ajax-eb.js"></script>
<script language="javascript">
	var submitflag = false;
	function check() {
		//form1.CNcustName.value = encodeURI(form1.custNameTmp.value);
		if (document.all.CNcustName.value == ""
				|| document.all.CNcustName.value == null) {
			alert("姓名不能为空！");
			document.all.CNcustName.focus();
			return;
		}
		//证件类型、证件号码
		if (document.all.credType.value == "xx") {
			alert("请选择证件类型！");
			return;
		}
		//添加身份证最后一位输入‘x’->‘X’的转换   add by kfzx-fengyd 20170815
		document.all.credNum.value = document.all.credNum.value.toUpperCase();
		//add end	
		var cn = document.all.credNum.value;
		if (cn == "" || cn == null) {
			alert("请输入证件号码");
			document.all.credNum.focus();
			return;
		}
		if (document.all.credType.value == "0") {
			if (cn == "" || cn == null || cn.length != 18) {
				alert("请输入18位二代身份证号码");
				document.all.credNum.focus();
				return;
			}
			if (checkPID(cn) == false) {
				alert("输入的身份证号码不正确，请重新输入！");
				document.all.credNum.focus();
				return;
			}
		}
		//手机号
		var wapMobile = document.all.phoneNum.value;
		if (wapMobile.indexOf(" ") != -1) {
			alert("手机号码中间不能有空格！");
			document.all.phoneNum.focus();
			return;
		} else if (wapMobile == "") {
			alert('请输入手机号码！');
			document.all.phoneNum.focus();
			return;
		} else if (!/^\d{11}/.test(wapMobile)) {
			alert("输入的手机号中包含非法字符或者长度不为11位！");
			document.all.phoneNum.focus();
			return;
		}
		if (!document.all.KeyPart.isValid()) {
			alert("输入的验证码不合法，请重新输入！");
			document.all.KeyPart.focus();
			return;
		}
		if (submitflag) {
			alert("请勿重复提交！");
			return;
		} else {
			submitflag = true;
		}
		document.all.safeSubmit1.reset();
		document.all.KeyPart.commitKeyPart(document.all.KeyPart);
		document.all.KeyPart.commit(document.all.safeSubmit1);
		document.all.safeSubmit1.submit(form1);
	}
	function reset() {
		document.all.CNcustName.value = "";
		document.all.credNum.value = "";
		document.all.phoneNum.value = "";
		document.getElementById("KeyPart").clear();
		document.all.credType.value = "xx"
	}
</script>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0" onload="">
	<div id="tooltip2"
		style="position: absolute; visibility: hidden; clip: rect(0, 360, 360, 0); width: 360px; background-color: #FFFFFF; height: 15px">
		<layer name="nstip" width="1000px" bgColor="#FF0000"></layer>
	</div>
	<table width="778" border="0" cellspacing="0" cellpadding="0"
		align="center" height="100">
		<tr valign="middle">
			<td colspan=2 height="20"></td>
		</tr>
		<tr valign="middle">
			<td></td>
			<td align=right></td>
		</tr>
		<tr valign="middle">

			<td width="40%"><img src="/images/icbc.png" width="350"
				height="48" /></td>

			<td width="60%" align="left"><font style="font-size: 22px"
				color="#333">&nbsp;&nbsp;|&nbsp;&nbsp;<b>注册</b></font></td>
		</tr>
		<tr valign="middle">
			<td colspan=2><hr color="#c7000b"></td>
		</tr>
		<tr valign="middle">
			<td colspan=2 height="20"></td>
		</tr>
		<tr align="center">
			<td align="center" height="20" colspan=2></td>
		</tr>
	</table>
	<form name="mall" method="post" action="http://mall.icbc.com.cn/"
		onsubmit="javascript:return false"></form>
	<form name="form1" method="post"
		action="/servlet/ICBCINBSEstablishSessionServlet"
		onsubmit="javascript:return false">
		<input type="hidden" name="tranFlag" value="8"> <input
			type="hidden" name="netType" value="4"> <input type="hidden"
			name="Language" value="ZH_CN"> <input type="hidden"
			name="PlatFlag" value="0"> <input type="hidden"
			name="ComputID" value="10"> <input type="hidden"
			name="encryptedData" value=""> <input type="hidden"
			name="currentmac_input" value=""> <input type="hidden"
			name="StructCode" value="1"> <input type="hidden"
			name="customerGroup" value=""> <input type="hidden"
			name="channelCode" value="null"> <input type="hidden"
			name="encryptedDataApp" value="">
		<table width="740" border="0" cellspacing="0" cellpadding="0"
			align="center" id="logontb">
			<tr>
				<td width="25" height="24" valign="top"></td>
				<td width="706" rowspan="3">
					<table width="706" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td valign="bottom"></td>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0"
									align="center">
									<tr align="center">
										<td height="25" colspan="2">&nbsp;</td>
									</tr>
									<tr>
										<td height="45" width="40%" align="right">姓名：</td>
										<td width="50%"><input type="text" id="CNcustName"
											name="CNcustName" size="22" maxlength=15 value=""></td>
										<td height="45" width="10%">&nbsp;</td>
									</tr>
									<tr>
										<td height="45" align="right">证件类型：</td>
										<td><select name="credType">
												<option value="xx">请 选 择</option>
												<option selected="selected" value="0">身份证</option>
												<option value="1">护照</option>
												<option value="2">军官证</option>
												<option value="3">士兵证</option>
												<option value="4">港澳台往来通行证</option>
												<option value="5">临时身份证</option>
												<option value="6">户口簿</option>
												<option value="9">警官证</option>
												<option value="12">外国人永久居留证</option>
												<option value="21">边民出入境通行证</option>
												<option value="7">其他</option>

										</select></td>
										<td height="45" width="10%">&nbsp;</td>
									</tr>
									<tr>
										<td height="45" align="right">证件号码：</td>
										<td><input type="text" id="credNum" name="credNum"
											size="22" maxlength=18 value=""></td>
										<td height="45">&nbsp;</td>
									</tr>
									<tr>
										<td height="45" align="right">手机号码：</td>
										<td><input type="text" id="phoneNum" name="phoneNum"
											size="22" maxlength=11 value=""></td>
										<td height="45">&nbsp;</td>
									</tr>
									<tr>
										<td height="45" align="right"><nobr>
												<font color="#ff0000">*</font>请输入验证码：
											</nobr></td>
										<td nowrap height="20"><object id="KeyPart"
												codebase="/AxSafeControls.cab#version=1,0,0,24"
												classid="CLSID:73E4740C-08EB-4133-896B-8D0A7C9EE3CD"
												width=153 height=25 style="vertical-align: middle;">
												<param name="name" value="verifyCode">
												<param name="minLength" value="4">
												<param name="maxLength" value="4">
												<param name="rule" value="10111">
												<param name="UniqueID" value="1516092266477117050">
												<param name="IsPassword" value="false">
												<param name="prompttext" value=" ">
												<param name="prompttextcolor" value="0,0,0">
												<param name="backgroundcolor" value="255,255,255">
												<param name="isbordervisible" value="1">
											</object> <input type="hidden" name="randomId"
											value="1516092266477117050"> <nobr>




												<IFRAME frameBorder="0" name="VerifyimageFrame"
													id="VerifyimageFrame" scrolling="no"
													src="/servlet/com.icbc.inbs.person.servlet.Verifyimage2?randomKey=1516092266477117050&imageAlt=点击图片可刷新"
													marginHeight=0 style="vertical-align: top;" marginWidth=0
													height=28 width=80
													onload="this.contentWindow.document.oncontextmenu =  function(){return false;};">
												</IFRAME>
												&nbsp;<a id="link4Verifyimage2Name"
													href="JavaScript:refreshVerifyimage();"><nobr>
														<font color=#f4743f><u><nobr>
																	<font style='vertical-align: top;'>刷新验证码
																</nobr></u></font>
													</nobr></a>
												<script language="JavaScript">
													if (navigator.userAgent
															.toLowerCase()
															.indexOf("chrome/") != -1) {//这里注意chrome的useragent也包含safari
														VerifyimageFrame.location.href = "/servlet/com.icbc.inbs.person.servlet.Verifyimage2?randomKey=1516092266477117050&imageAlt=点击图片可刷新"
																+ "&appendRandom="
																+ (new Date())
																		.getTime();
													} else if (navigator.userAgent
															.toLowerCase()
															.indexOf("safari") != -1
															|| navigator.userAgent
																	.toLowerCase()
																	.indexOf(
																			"firefox") != -1) {
														VerifyimageFrame.location.href = "/servlet/com.icbc.inbs.person.servlet.Verifyimage2?randomKey=1516092266477117050&imageAlt=点击图片可刷新"
																+ "&appendRandom="
																+ (new Date())
																		.getTime();
													}
													function refreshVerifyimage() {
														if (navigator.userAgent
																.toLowerCase()
																.indexOf(
																		"chrome/") != -1) {//这里注意chrome的useragent也包含safari
															var url = "/servlet/com.icbc.inbs.person.servlet.Verifyimage2?randomKey=1516092266477117050&imageAlt=点击图片可刷新"
																	+ "&appendRandom="
																	+ (new Date())
																			.getTime();
															VerifyimageFrame.location
																	.replace(url);
														} else if (navigator.userAgent
																.toLowerCase()
																.indexOf(
																		"safari") != -1) {//safari回退时，验证码不刷新问题
															window.focus();//解决db103335688
															VerifyimageFrame.location.href = "/servlet/com.icbc.inbs.person.servlet.Verifyimage2?randomKey=1516092266477117050&imageAlt=点击图片可刷新"
																	+ "&appendRandom="
																	+ (new Date())
																			.getTime();
														} else {
															VerifyimageFrame.location
																	.reload();
														}

														try {
															//刷新验证码后重新进行倒计时，只对页面定义了vctimeout()的页面有效。
															clearTimeout(vctime);
															vctime = setTimeout(
																	"vctimeout()",
																	300000);
														} catch (exception) {
														}

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
											</nobr></TD>
										<object id="safeSubmit1"
											codebase="/AxSafeControls.cab#version=1,0,0,11"
											classid="CLSID:8D9E0B29-563C-4226-86C1-5FF2AE77E1D2" height=0
											width=0> </object>

										<td>&nbsp;</td>
									</tr>
									<table>
										<tr>
											<td><font>温馨提示：如果您还不是我行客户，请输入一张他行卡的柜面预留手机号作为您的注册手机号。</font></td>
										</tr>
									</table>
								</table>
								<table width="98%" border="0" cellspacing="10" cellpadding="1">
									<tr>
										<td height="40" align="right">
											<div class="n_btn" onclick="javascript:check();">
												<nobr>下一步</nobr>
											</div>
										</td>
										<td height="40" align="left">
											<div class="n1_btn" onclick="javascript:reset();">
												<nobr>重置</nobr>
											</div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>

				</td>
			</tr>
		</table>
	</form>
	<table width="700" border="0" cellspacing="0" cellpadding="0"
		align="center">
		<tr align="center">
			<td colspan=2 height="20"></td>
		</tr>
		<tr align="center">
			<td><font color="bc0021">请与我们联系 <a
					href="mailto:webmaster@icbc.com.cn">webmaster@icbc.com.cn</a>
					中国工商银行版权所有
			</font></td>
		</tr>
		<tr align="center">
			<td colspan=2 height="20"></td>
		</tr>
	</table>
</body>
</html>
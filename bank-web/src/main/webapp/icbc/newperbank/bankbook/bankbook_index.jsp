











 <script>
	try{
		if(isNaN('icbc.com.cn'.replace(/\./g,""))){
			document.domain='icbc.com.cn';}
	}catch(e){
		
	}
 </script>
<script src="/icbc/newperbank/js/perbank3/js0011.js?ver=2017122122"></script>

<script>
 CrossDomain.parentHost =  'https://mybank.icbc.com.cn';
 CrossDomain.perbankHost =  'https://mybank.icbc.com.cn';
 CrossDomain.crossHost = 'icbc.com.cn';
 CrossDomain.icbcDomain="*.icbc.com.cn";//添加父域名
 CrossDomain.clientIP = '47.94.130.112';
</script>


<HTML>
<HEAD>
<script language="VBScript">
sub InstallRootCert()
	if Navigator.appName<>"Microsoft Internet Explorer" then exit sub
'Get IE version
	nVersionBegin=InStr(Navigator.userAgent,"MSIE ")+5
	nVersionEnd=InStr(nVersionBegin,Navigator.userAgent,";")
	Version=mid(Navigator.userAgent,nVersionBegin,nVersionEnd-nVersionBegin)
	if Version>5.0 then
		document.body.addBehavior("#default#clientCaps")
		sVersion=document.body.getComponentVersion("{89820200-ECBD-11CF-8B85-00AA005B4383}","componentid")
		sVersion=Replace(sVersion,",",".")
		nBuildStart=InStr(3,sVersion,".")+1
		nBuildEnd=InStr(nBuildStart,sVersion,".")-1
		Build=mid(sVersion,nBuildStart,nBuildEnd-nBuildStart+1)
	end if
	if Version<6.0 or (Version=5.01 and Build<3315) then '***本行判断版本号，可以修改***
	
		document.all.RootCertFrame.src="/icbc/newperbank/InstallRootCert.htm"
	end if
end sub
</script>
</HEAD>
<BODY>
<iFrame id=RootCertFrame style="width:0;height:0;visibility:hidden" src="/indexicbc.htm"></iFrame>
<script language="vbscript">InstallRootCert</Script>
<form id="submitform" name="form1" action="/servlet/com.icbc.inbs.servlet.ICBCINBSEstablishSessionServlet" method="post">
<input type="hidden" name="netType" value="104">
<input type="hidden" name="Language" value="zh_CN">
<input type="hidden" name="PlatFlag" value="0">
<input type="hidden" name="ComputID" value="10">
<input type="hidden" name="firstPage" value=""/>
</form>

<script language="javascript">
 document.form1.submit();
</script>

</BODY>
</HTML>




















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
<script>
		function setP3Cookie(cookiename ,value){
				var urlcookie = window.location.href;
    			var domaincookie = urlcookie.replace(/.*:\/\/([^:|^\/]*).*/,"$1");
				var domain="";
				var now = new Date();
				var expire = new Date();
				expire.setTime(now.getTime() + 3600000 * 24 * 1);
				document.cookie = cookiename + '=' + encodeURI(value, "utf-8")
				+ ';expires=' + expire.toGMTString() + ';domain=' + domaincookie
				+ ';path=/';
				
					
		}
		
var _pv_arc_pub = [];
setP3Cookie("isP3bank","1");
</script>
<script language=javascript>window._perbank_version_utb=3;</script>
 

<!-- 2016年5月版修改 -->
<meta http-equiv="X-UA-Compatible" content="IE=10,requiresActiveX=true"/>

<script src="/icbc/newperbank/desktop/js/jquery-1.4.3.min.js?ver=2018011409"></script>
<script src="
/icbc/newperbank/desktop/js/jquery.ui.js?ver=2018011409"></script>
<script src="
/icbc/newperbank/js/flot0.6/jquery.flot.js?ver=2018011409"></script>
<script src="
/icbc/newperbank/js/ajax/jquery.bgiframe.js?ver=2018011409"></script>
<script src="
/icbc/newperbank/js/datatables/jquery.dataTables.js?ver=2018011409"></script>
<script src="
/icbc/newperbank/js/dist/jquery.jqplot.js?ver=2018011409"></script>
<script src="
/icbc/newperbank/js/includes/pebank_browsercompatible.js?ver=2018011409"></script>
<script src="
/icbc/newperbank/js/preventFresh.js?ver=2018011409"></script>
<script src="
/icbc/newperbank/js/perbank3/userBrowseSidStack.js?ver=2018011409"></script>
<script src="
/icbc/newperbank/js/perbank3/js0002.js?ver=2018011409"></script>
<script src="
/icbc/newperbank/js/includes/pebank_pagesubmit.js?ver=2018011409"></script>

 <link href="/icbc/newperbank/perbank3/style/style_default/css/base.css?ver=2018011409" rel="stylesheet" type="text/css"/>
<link href="
   /icbc/newperbank/perbank3/style/style_default/css/common.css?ver=2018011409" rel="stylesheet" type="text/css"/>

<input type="hidden" name="saveFiledValueFirefox"/>

<!-- 登录前使用 -->


   

 <script language="JavaScript">

 		var parentstr = "parent";
 		//开放式网银的跳转页面
    	//getTopWindow().location.href="/icbc/newperbank/perbank3/includes/icbcerrorp3.jsp?logoffstat=3";
    	window.location.href="/icbc/newperbank/perbank3/frame/frame_error.jsp?logoffstat=3";
 </script>



<%@page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>中国工商银行新一代网上银行</title>
<link ref="bookmark" type="image/x-icon" href="${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/favicon.ico" mce_href="${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/favicon.ico">
<link ref="icon" type="image/x-icon" href="${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/favicon.ico" mce_href="${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/favicon.ico">
<link ref="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/favicon.ico" mce_href="${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/favicon.ico">
<link href="${pageContext.request.contextPath}/icbc/newperbank/perbank3/style/style_default/css/base.css?ver=2017122122" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/css/style.css?ver=2017122122" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/new_headerFooter.css?ver=2017122122" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/css/index.css?ver=2017122122" rel="stylesheet" type="text/css"/>

<script language="JavaScript1.1" src="${pageContext.request.contextPath}/icbc/newperbank/js/includes/ControlsId.js"></script>
<script src="${pageContext.request.contextPath}/icbc/newperbank/js/perbank3/jquery-1.8.3.min.js?ver=2017122122"></script>
<script src="${pageContext.request.contextPath}/icbc/newperbank/js/perbank3/userBrowseSidStack.js?ver=2017122122"></script>
<script src="${pageContext.request.contextPath}/icbc/newperbank/js/perbank3/js0003.js?ver=2017122122"></script>
<script src="${pageContext.request.contextPath}/icbc/newperbank/js/perbank3/jquery.lazyload.js?ver=2017122122"></script>
<script src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/js/frame/js/style.js?ver=2017122122"></script>
<script src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/js/frame/js/index.js?ver=2017122122"></script>
<script src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/js/frame/js/banner.js?ver=2017122122"></script>
<script src="${pageContext.request.contextPath}/icbc/newperbank/js/ajax/datastruct-ajax-eb.js?ver=2017122122"></script>
<script src="${pageContext.request.contextPath}/icbc/newperbank/js/ajax/json2.js?ver=2017122122"></script>
<script src="${pageContext.request.contextPath}/icbc/newperbank/js/includes/pebank_browsercompatible.js?ver=2017122122"></script>

<script src="${pageContext.request.contextPath}/js/jquery.js?ver=1.0.17"></script>
<script src="${pageContext.request.contextPath}/ebdpui/pc4promote/ebdp-pc4promote-core.js?ver=1.0.17"></script>

<link href="${pageContext.request.contextPath}/ebdpui/pc4promote/style/default/shortcuttool/ebdp-pc4promote-shortcuttool.css?ver=1.0.17" rel="stylesheet" type="text/css"/>
<script src="${pageContext.request.contextPath}/ebdpui/pc4promote/ebdp-pc4promote-shortcuttool.js?ver=1.0.17"></script>
<link href="${pageContext.request.contextPath}/ebdpui/pc4promote/style/default/infoblock/ebdp-pc4promote-infoblock.css?ver=1.0.17" rel="stylesheet" type="text/css"/>
<script src="${pageContext.request.contextPath}/ebdpui/pc4promote/ebdp-pc4promote-infoblock.js?ver=1.0.17"></script>
<link href="${pageContext.request.contextPath}/ebdpui/pc4promote/style/default/infoarea/ebdp-pc4promote-infoarea.css?ver=1.0.17" rel="stylesheet" type="text/css"/>
<script src="${pageContext.request.contextPath}/ebdpui/pc4promote/ebdp-pc4promote-infoarea.js?ver=1.0.17"></script>
<script src="${pageContext.request.contextPath}/ebdpui/pc4promote/ebdp-pc4promote-infounit.js?ver=1.0.17"></script>
<link href="${pageContext.request.contextPath}/ebdpui/pc4promote/style/default/blocktwo/ebdp-pc4promote-blocktwo.css?ver=1.0.17" rel="stylesheet" type="text/css"/>
<script src="${pageContext.request.contextPath}/ebdpui/pc4promote/ebdp-pc4promote-blocktwo.js?ver=1.0.17"></script>
<link href="${pageContext.request.contextPath}/ebdpui/pc4promote/style/default/blockthree/ebdp-pc4promote-blockthree.css?ver=1.0.17" rel="stylesheet" type="text/css"/>
<script src="${pageContext.request.contextPath}/ebdpui/pc4promote/ebdp-pc4promote-blockthree.js?ver=1.0.17"></script>
<link href="${pageContext.request.contextPath}/ebdpui/pc4promote/style/default/blockfour/ebdp-pc4promote-blockfour.css?ver=1.0.17" rel="stylesheet" type="text/css"/>
<script src="${pageContext.request.contextPath}/ebdpui/pc4promote/ebdp-pc4promote-blockfour.js?ver=1.0.17"></script>
<link href="${pageContext.request.contextPath}/ebdpui/pc4promote/style/default/mouseovertip/ebdp-pc4promote-mouseovertip.css?ver=1.0.17" rel="stylesheet" type="text/css"/>
<script src="${pageContext.request.contextPath}/ebdpui/pc4promote/ebdp-pc4promote-mouseovertip.js?ver=1.0.17"></script>
<link href="${pageContext.request.contextPath}/ebdpui/pc4promote/style/default/floatdialog/ebdp-pc4promote-floatdialog.css?ver=1.0.17" rel="stylesheet" type="text/css"/>
<script src="${pageContext.request.contextPath}/ebdpui/pc4promote/ebdp-pc4promote-floatdialog.js?ver=1.0.17"></script>
<script type="text/javascript">
var _ebdp_language = "utf-8";
</script>


<jsp:include page="barlink.jsp"></jsp:include>




 <script>
	try{
		if(isNaN('icbc.com.cn'.replace(/\./g,""))){
			document.domain='icbc.com.cn';}
	}catch(e){

	}
 </script>
<script src="${pageContext.request.contextPath}/icbc/newperbank/js/perbank3/js0011.js?ver=2017122122"></script>

<script>
 CrossDomain.parentHost =  '';
 CrossDomain.perbankHost =  'https://mybank.icbc.com.cn';
 CrossDomain.crossHost = 'icbc.com.cn';
 CrossDomain.icbcDomain="*.icbc.com.cn";//添加父域名
 CrossDomain.clientIP = '47.94.130.112';
</script>




<html>
<head>
<script src="${pageContext.request.contextPath}/icbc/newperbank/js/blockui/JQuery.BlockUI.min.2.39.js"></script>

<script>
        	var date = new Date();
		 	date.setTime(date.getTime()+365*24*3600*1000);
	        var name="first_tip";
			var path = "/";
	        var cookieString2 =name+"=0;path="+path;
	        cookieString2 = cookieString2+";expires="+date.toGMTString();
	        document.cookie=cookieString2;
</script>
</head>


<body>
<script language="JavaScript">
$(document).ready(function(){


});

function hideBrowserDiv(){
    $.unblockUI();
}
</script>
<boby>
 <div id="ICBC_browser_float" style="display:none">
	<div style="width:461px; height:381px;">
	<img src="${pageContext.request.contextPath}/icbc/newperbank/images/floatTip/browserTip.png" width="461px" height="381px" border="0" usemap="#browsermap">
		<map name="browsermap" id="browsermap">
			<area  shape="rectangle" coords="178,328,282,358" onclick="hideBrowserDiv();" />
		</map>
	</div>
</div>
</body>


<script src="${pageContext.request.contextPath}/ebdpui/pc4promote/ebdp-pc4promote-core.js?ver=1.0.17"></script><!-- 智能导航栏  -->
<link href="${pageContext.request.contextPath}/ebdpui/pc4promote/style/default/navigationbar/ebdp-pc4promote2ebankc-navigationbar.css?ver=1.0.17" rel="stylesheet" type="text/css"/><!-- 智能导航栏  -->
<script src="${pageContext.request.contextPath}/ebdpui/pc4promote/ebdp-pc4promote-navigationbar.js?ver=1.0.17"></script><!-- 智能导航栏  -->
</head>





 <!-- 包含头部 -->
<script type="text/javascript">
if( self.location == top.location ) { document.documentElement.style.display = 'block' ; } else { top.location = self.location ; }

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


	  var a;
	  var mn='guide_nologon';
	  var co=document.cookie;//当前cookie
	  var b=co.indexOf(mn);//guide_nologon是否存在
		/*if (b < 0) {
			a= "";
		}
		     if(a==""){
					var	url="${pageContext.request.contextPath}/icbc/newperbank/perbank3/frame/frame_guide_nologon.jsp";
					try{
				 			sessionStorage.bbs_display="0";
				 	}catch(e){
				 	}
					window.location.href=url;
	           }*/

var jsBeta="false";
var jsLogon="false";
var _pv_arc_pub = [];
var zoneNo="0200"
var PVServerHost="https://pageviewp.icbc.com.cn";
var dse_sessionId="${dse_sessionId}";
var serviceId = "PBL200202";
var transData = "";
var clientIP = "47.94.130.112";
var mainCIS = "";
var isAutoLoad = false;
var oratype = "1";
var privateBankFlag = "";
$(function(){
	setP3Cookie("isP3bank","1");
	setP3Cookie("isEn_US","0");//是否是英文版,1:是、0：否
	setP3Cookie("isPri",privateBankFlag);//私人银行,1:是、0：否
	//搜索下拉
	$('.search-box').hover(function(){
		jQuery('.down-search').show();
	},function(){
		jQuery('.down-search').hide();
	});
	 $('.search-btn').click(function(){
	 	 searchGo();
	 });
	 $("#search-key").bind("click keydown",function(){
			$("#search-holder").hide();
		}).bind("blur",function(){
			if($("#search-key").val()==""){
				$("#search-holder").show();
			}
		});
	try{
	//获取默认的地区号,赋值
	var cookieName = "firstZoneNo";
	var firstZoneNo = Utils.getCookie(cookieName);
	if(firstZoneNo != null && firstZoneNo != "" && typeof(firstZoneNo) != "undefined"){
			var strArray = firstZoneNo.split("_")
			if(strArray.length == 2){
				zoneNo = strArray[1];
			}else{
				zoneNo = "0200";
			}
	}
	}catch(e){}

})

function searchGo(){
	var value=allTrim($("#search-key").val());
	if(value != null && value != ""){
		value = stripscripts(value);
		if(value==""){
			alert("请输入有效的检索关键字!");
			return;
		}
		perbankAtomLocationTW("PBL100101",value+"|1|7",dse_sessionId);
	}else{
		alert("请输入检索关键字!");
	}
}

function justShowSearch(){
	var value=$("#search-key").val();
	jQuery(".searchkey3").each(
			function (i){
				$this = jQuery(this);
				$this.text(value);
			}
	);
}
//过滤特殊字符，仅留中文英文和数字
function stripscripts(s){
	return s.replace(/[^\a-zA-Z0-9\u4E00-\u9FA5]/g,'');
}
//去字符串所有空格
function allTrim(str){
	//return str.replace(/(^\s*)|(\s*$)/g,'');//去两端空格
	return str.replace(/\s+/g,'');
}
function justShowSearchGo(searchWay){
	//隐藏显示搜索面板
	//jQuery('.ICBC_ac_results').hide();

	var value=allTrim($("#search-key").val());
	//searchkey|channaltype|searchWay|defaultType
	if(value != null && value != ""){
		//过滤特殊字符
		value = stripscripts(value);
		if(value==""){
			alert("请输入有效的检索关键字!");
			return;
		}
		if(searchWay=="10"){//搜e缴费
			perbankAtomLocationTW("PBL300103","10|"+value,dse_sessionId);
			return;
		}
		var defaultType="";
		if(searchWay=="0")defaultType="0";//融e购
		/**if(searchWay=="1")defaultType="3";//搜频道
		if(searchWay=="2")defaultType="7";//搜产品
		if(searchWay=="3")defaultType="3";//搜所有**/
		if(searchWay=="1")defaultType="7";//搜服务（菜单）
		if(searchWay=="2")defaultType="0";//搜产品（defaultType：0理财、1基金、2保险）
		var datav=value+"|"+searchWay+"|"+defaultType;
		perbankAtomLocationTW("PBL100101",datav,dse_sessionId);
	}else{
		if(searchWay=="10"){//搜e缴费
			perbankAtomLocationTW("PBL300103","1|",dse_sessionId);
			return;
		}else{
			alert("请输入检索关键字!");
		}
	}
}

var frame_index_scroll_flag = "1";//页面标志
	//应用iframe取页面的滚动距离
function topFrame_getScrollTop()
{
	return jQuery(window).scrollTop();
}
//三组用，取浏览器可见区域高度
function topFrame_getHeight()
{
	if(window.innerHeight)
	{
		//alert(window.innerHeight);
		return window.innerHeight;
	}
	else{
		//alert(document.body.clientHeight);
		return document.body.clientHeight;
	}
}

Array.prototype.contains = function(needle) {
	for(i in this){
		if(this[i] == needle) return true;
	}
	return false;
}


function getAtomService(){

}

</script>

<body style="background-color:#f2f2f2;">
<div id="fillHeaderDiv" style="display: none;height:230px;"></div><!-- 当滚动页面频道浮动时显示已站位，避免页面猛进 -->
<div class="header-box header-bg">
  <div class="header width">
    <div class="logo-box" onClick="javascript:logPV('PBL200202');perbankAtomLocationBW('PBL200202','',dse_sessionId);">

  		<img class="logo fl" src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/logo.png">

    </div>
    <div class="header-menu">
      <ul class="fl">



<link href="${pageContext.request.contextPath}/icbc/newperbank/css/includes/add_address.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/icbc/newperbank/js/includes/selectArea.js"></script>

<li class="t_add_address">
<a href="javascript:void(0);" id="defaultArea" class="icon-1"><i></i><b class="show-btn"></b></a>
<DIV style="Z-INDEX: 20; WIDTH: 298px; DISPLAY: none; LEFT: -125px;TOP:100%;" id=add_address class=address_main>
<div style="z-index:21;width:15px;height:19px;POSITION: absolute;top:-13px;left:154px;background:url(${pageContext.request.contextPath}/icbc/newperbank/perbank3/style/style_default/images/address-top-angles.png) 0 bottom repeat-x;"></div>
<DIV style="Z-INDEX: -1; POSITION: absolute; WIDTH: 330px; HEIGHT: 300px; TOP: 0px; LEFT: 0px" id=dizhiMark></DIV>
<UL style="WIDTH: 300px;" id=areaTab class="tabname cfx">
  <LI id=addressCity class=li_cur name="" style='FONT-SIZE: 14px;'><I></I></LI>
  <LI id=addressArea class=li_cur name="" style='FONT-SIZE: 14px;'><I></I></LI>
</UL>
<DIV style="DISPLAY: none" id=dizhi1 class=tabcon><!-- 如果地址超过6个字 加class "long_text" -->
<UL style="WIDTH: 304px" id=firstArea class="t_address_list cfx"></UL>
</DIV>
<DIV style="DISPLAY: none" class=tabcon>
<UL style="WIDTH: 304px" id=areaUl class="t_address_list cfx"></UL>
</DIV>
</DIV>
</li>



<SCRIPT type=text/javascript>
	var areaCodeJson = {"first":["北京","上海","天津","重庆","安徽","福建","甘肃","广东","广西","贵州","海南","河北","河南","黑龙江","湖北","湖南","吉林","江苏","江西","辽宁","内蒙","宁夏","青海","山东","山西","陕西","四川","西藏","新疆","云南","浙江"],"second":{"北京":[{"0200":"北京"}],"上海":[{"1001":"上海"}],"天津":[{"0302":"天津"}],"重庆":[{"3100":"重庆"}],"安徽":[{"1309":"安庆"},{"1303":"蚌埠"},{"1316":"池州"},{"1313":"滁州"},{"1311":"阜阳"},{"1302":"合肥"},{"1305":"淮北"},{"1304":"淮南"},{"1310":"黄山"},{"1314":"六安"},{"1306":"马鞍山"},{"1312":"宿州"},{"1308":"铜陵"},{"1307":"芜湖"},{"1317":"宣城"},{"1318":"亳州"}],"福建":[{"1402":"福州"},{"1410":"龙岩"},{"1406":"南平"},{"1407":"宁德"},{"1405":"莆田"},{"1408":"泉州"},{"1404":"三明"},{"4100":"厦门"},{"1409":"漳州"}],"甘肃":[{"2704":"白银"},{"2707":"定西"},{"2720":"东风"},{"2717":"甘南"},{"2715":"合作"},{"2702":"嘉峪关"},{"2705":"金昌"},{"2713":"酒泉"},{"2716":"矿区"},{"2703":"兰州"},{"2714":"临夏"},{"2711":"陇南"},{"2708":"平凉"},{"2709":"庆阳"},{"2706":"天水"},{"2710":"武威"},{"2712":"张掖"}],"广东":[{"2004":"潮州"},{"2010":"东莞"},{"2013":"佛山"},{"3602":"广州"},{"2006":"河源"},{"2008":"惠州"},{"2012":"江门"},{"2019":"揭阳"},{"2016":"茂名"},{"2007":"梅州"},{"2018":"清远"},{"2003":"汕头"},{"2009":"汕尾"},{"2005":"韶关"},{"4000":"深圳"},{"2014":"阳江"},{"2020":"云浮"},{"2015":"湛江"},{"2017":"肇庆"},{"2011":"中山"},{"2002":"珠海"}],"广西":[{"2110":"百色"},{"2107":"北海"},{"2112":"崇左"},{"2106":"防城港"},{"2103":"桂林"},{"2116":"贵港"},{"2114":"河池"},{"2109":"贺州"},{"2108":"来宾"},{"2105":"柳州"},{"2102":"南宁"},{"2115":"钦州"},{"2104":"梧州"},{"2111":"玉林"}],"贵州":[{"2404":"安顺"},{"2406":"毕节"},{"2405":"都匀"},{"2402":"贵阳"},{"2407":"凯里"},{"2410":"六盘水"},{"2408":"铜仁"},{"2409":"兴义"},{"2403":"遵义"}],"海南":[{"2201":"海南"}],"河北":[{"0409":"保定"},{"0408":"沧州"},{"0411":"承德"},{"0405":"邯郸"},{"0407":"衡水"},{"0410":"廊坊"},{"0404":"秦皇岛"},{"0402":"石家庄"},{"0403":"唐山"},{"0406":"邢台"},{"0413":"雄安"},{"0412":"张家口"}],"河南":[{"1706":"安阳"},{"1710":"鹤壁"},{"1709":"焦作"},{"1703":"开封"},{"1705":"洛阳"},{"1714":"南阳"},{"1707":"平顶山"},{"1713":"三门峡"},{"1716":"商丘"},{"1704":"新乡"},{"1718":"信阳"},{"1708":"许昌"},{"1702":"郑州"},{"1717":"周口"},{"1715":"驻马店"},{"1711":"漯河"},{"1712":"濮阳"}],"黑龙江":[{"0905":"大庆"},{"0914":"大兴安岭"},{"3500":"哈尔滨"},{"0906":"鹤岗"},{"0913":"黑河"},{"0907":"鸡西"},{"0904":"佳木斯"},{"0903":"牡丹江"},{"0910":"七台河"},{"0902":"齐齐哈尔"},{"0908":"双鸭山"},{"0912":"绥化"},{"0909":"伊春"}],"湖北":[{"1811":"鄂州"},{"1817":"恩施"},{"1814":"黄冈"},{"1803":"黄石"},{"1809":"荆门"},{"1813":"荆州"},{"1807":"三峡"},{"1810":"十堰"},{"1805":"随州"},{"3202":"武汉"},{"1818":"咸宁"},{"1804":"襄樊"},{"1812":"孝感"}],"湖南":[{"1908":"常德"},{"1901":"长沙"},{"1911":"郴州"},{"1905":"衡阳"},{"1914":"怀化"},{"1913":"娄底"},{"1906":"邵阳"},{"1904":"湘潭"},{"1915":"湘西"},{"1912":"益阳"},{"1910":"永州"},{"1907":"岳阳"},{"1909":"张家界"},{"1903":"株洲"}],"吉林":[{"0805":"白城"},{"0807":"白山"},{"4200":"长春"},{"0802":"吉林"},{"0803":"辽源"},{"0804":"四平"},{"0809":"松原"},{"0806":"通化"},{"0808":"延边"}],"江苏":[{"1105":"常州"},{"1110":"淮安"},{"1107":"连云港"},{"4301":"南京"},{"1111":"南通"},{"1102":"苏州"},{"1116":"宿迁"},{"1115":"泰州"},{"1103":"无锡"},{"1106":"徐州"},{"1109":"盐城"},{"1108":"扬州"},{"1104":"镇江"},{"1117":"胥浦"}],"江西":[{"1511":"抚州"},{"1510":"赣州"},{"1509":"吉安"},{"1503":"景德镇"},{"1507":"九江"},{"1502":"南昌"},{"1504":"萍乡"},{"1512":"上饶"},{"1505":"新余"},{"1508":"宜春"},{"1506":"鹰潭"}],"辽宁":[{"0704":"鞍山"},{"0706":"本溪"},{"0713":"朝阳"},{"3400":"大连"},{"0707":"丹东"},{"0705":"抚顺"},{"0710":"阜新"},{"0715":"葫芦岛"},{"0708":"锦州"},{"0711":"辽阳"},{"0714":"盘锦"},{"3301":"沈阳"},{"0712":"铁岭"},{"0709":"营口"}],"内蒙":[{"0614":"阿盟"},{"0613":"巴彦淖尔"},{"0603":"包头"},{"0605":"赤峰"},{"0612":"鄂尔多斯"},{"0602":"呼和浩特"},{"0607":"呼伦贝尔"},{"0606":"满洲里"},{"0609":"通辽"},{"0604":"乌海"},{"0611":"乌兰察布"},{"0608":"乌兰浩特"},{"0610":"锡盟"}],"宁夏":[{"2905":"固原"},{"2904":"石嘴山"},{"2903":"吴忠"},{"2902":"银川"}],"青海":[{"2807":"海北"},{"2809":"海西"},{"2810":"黄南"},{"2806":"西宁"},{"2811":"玉树"}],"山东":[{"1613":"滨州"},{"1612":"德州"},{"1615":"东营"},{"1609":"菏泽"},{"1602":"济南"},{"1608":"济宁"},{"1617":"莱芜"},{"1611":"聊城"},{"1610":"临沂"},{"3803":"青岛"},{"1616":"日照"},{"1604":"泰安"},{"1614":"威海"},{"1607":"潍坊"},{"1606":"烟台"},{"1605":"枣庄"},{"1603":"淄博"}],"山西":[{"0505":"长治"},{"0504":"大同"},{"0506":"晋城"},{"0509":"离石"},{"0510":"临汾"},{"0507":"朔州"},{"0502":"太原"},{"0512":"忻州"},{"0503":"阳泉"},{"0508":"榆次"},{"0511":"运城"}],"陕西":[{"2607":"安康"},{"2603":"宝鸡"},{"2606":"汉中"},{"2608":"商洛"},{"2602":"铜川"},{"2605":"渭南"},{"3700":"西安"},{"2604":"咸阳"},{"2609":"延安"},{"2610":"榆林"}],"四川":[{"2322":"阿坝"},{"2318":"巴中"},{"4402":"成都"},{"2317":"达州"},{"2305":"德阳"},{"2321":"甘孜"},{"2316":"广安"},{"2309":"广元"},{"2306":"乐山"},{"2320":"凉山"},{"2313":"眉山"},{"2308":"绵阳"},{"2315":"南充"},{"2307":"内江"},{"2302":"攀枝花"},{"2310":"遂宁"},{"2319":"雅安"},{"2314":"宜宾"},{"2312":"资阳"},{"2303":"自贡"},{"2304":"泸州"}],"西藏":[{"0159":"阿里"},{"0010":"昌都"},{"0011":"林芝"},{"0012":"那曲"},{"0013":"日喀则"},{"0014":"山南"}],"新疆":[{"3014":"阿克苏"},{"3008":"阿勒泰"},{"3010":"巴州"},{"3009":"博州"},{"3004":"昌吉"},{"3011":"哈密"},{"3015":"和田"},{"3012":"喀什"},{"3003":"克拉玛依"},{"3018":"克州"},{"3017":"马兰"},{"3016":"石河子"},{"3007":"塔城"},{"3005":"吐鲁番"},{"3002":"乌鲁木齐"},{"3006":"伊犁"}],"云南":[{"2509":"版纳"},{"2510":"保山"},{"2516":"楚雄"},{"2515":"大理"},{"2511":"德宏"},{"2514":"迪庆"},{"2507":"红河"},{"2502":"昆明"},{"2512":"丽江"},{"2518":"临沧"},{"2513":"怒江"},{"2508":"普洱"},{"2505":"曲靖"},{"2506":"文山"},{"2517":"玉溪"},{"2504":"昭通"}],"浙江":[{"1202":"杭州"},{"1205":"湖州"},{"1204":"嘉兴"},{"1208":"金华"},{"1210":"丽水"},{"3901":"宁波"},{"1211":"绍兴"},{"1207":"台州"},{"1203":"温州"},{"1206":"舟山"},{"1209":"衢州"}]}};
	if((!areaCodeJson) || ($.isEmptyObject(areaCodeJson.first)) || ($.isEmptyObject(areaCodeJson.second))){
	    areaCodeJson = {"first":["北京","上海","天津","重庆","云南","内蒙古","吉林","四川","宁夏","安徽","山东","山西","广东","广西","新疆","江苏","江西","河北","河南","浙江","海南","湖北","湖南","甘肃","福建","西藏","贵州","辽宁","陕西","青海","黑龙江"],"second":{"江西":[{"1502":"南昌"},{"1503":"景德镇"},{"1504":"萍乡"},{"1505":"新余"},{"1506":"鹰潭"},{"1507":"九江"},{"1508":"宜春"},{"1509":"吉安"},{"1510":"赣州"},{"1511":"抚州"},{"1512":"上饶"}],"海南":[{"2201":"海口"}],"湖北":[{"3202":"武汉"},{"1803":"黄石"},{"1804":"襄樊"},{"1805":"随州"},{"1807":"三峡"},{"1809":"荆门"},{"1810":"十堰"},{"1811":"鄂州"},{"1812":"孝感"},{"1813":"荆州"},{"1814":"黄冈"},{"1817":"恩施"},{"1818":"咸宁"}],"湖南":[{"1901":"长沙"},{"1903":"株洲"},{"1904":"湘潭"},{"1905":"衡阳"},{"1906":"邵阳"},{"1907":"岳阳"},{"1908":"常德"},{"1909":"张家界"},{"1910":"永州"},{"1911":"郴州"},{"1912":"益阳"},{"1913":"娄底"},{"1915":"湘西"}],"河北":[{"0402":"石家庄"},{"0403":"唐山"},{"0404":"秦皇岛"},{"0405":"邯郸"},{"0406":"邢台"},{"0407":"衡水"},{"0408":"沧州"},{"0409":"保定"},{"0410":"廊坊"},{"0411":"承德"},{"0412":"张家口"},{"0413":"省南"},{"0414":"省沙"}],"河南":[{"1702":"郑州"},{"1703":"开封"},{"1704":"新乡"},{"1705":"洛阳"},{"1706":"安阳"},{"1707":"平顶山"},{"1708":"许昌"},{"1709":"焦作"},{"1710":"鹤壁"},{"1711":"漯河"},{"1712":"濮阳"},{"1713":"三门峡"},{"1714":"南阳"},{"1715":"驻马店"},{"1716":"商丘"},{"1717":"周口"},{"1718":"信阳"}],"贵州":[{"2402":"贵阳"},{"2403":"遵义"},{"2404":"安顺"},{"2405":"都匀"},{"2406":"毕节"},{"2407":"凯里"},{"2408":"铜仁"},{"2409":"兴义"},{"2410":"六盘水"}],"陕西":[{"2602":"铜川"},{"2603":"宝鸡"},{"2604":"咸阳"},{"2605":"渭南"},{"2606":"汉中"},{"2607":"安康"},{"2608":"商洛"},{"2609":"延安"},{"2610":"榆林"},{"3700":"西安"}],"山东":[{"1602":"济南"},{"3803":"青岛"},{"1603":"淄博"},{"1604":"泰安"},{"1605":"枣庄"},{"1606":"烟台"},{"1607":"潍坊"},{"1608":"济宁"},{"1609":"菏泽"},{"1610":"临沂"},{"1611":"聊城"},{"1612":"德州"},{"1613":"滨州"},{"1614":"威海"},{"1615":"东营"},{"1616":"日照"},{"1617":"莱芜"}],"福建":[{"1410":"龙岩"},{"4100":"厦门"},{"1402":"福州"},{"1404":"三明"},{"1405":"莆田"},{"1406":"南平"},{"1407":"宁德"},{"1408":"泉州"},{"1409":"漳州"}],"江苏":[{"1108":"扬州"},{"1109":"盐城"},{"1110":"淮安"},{"1111":"南通"},{"1115":"泰州"},{"1116":"宿迁"},{"1117":"胥浦"},{"4301":"南京"},{"1102":"苏州"},{"1103":"无锡"},{"1104":"镇江"},{"1105":"常州"},{"1106":"徐州"},{"1107":"连云港"}],"安徽":[{"1302":"合肥"},{"1303":"蚌埠"},{"1304":"淮南"},{"1305":"淮北"},{"1306":"马鞍山"},{"1307":"芜湖"},{"1308":"铜陵"},{"1309":"安庆"},{"1310":"黄山"},{"1311":"阜阳"},{"1312":"宿州"},{"1313":"滁州"},{"1314":"六安"},{"1315":"巢湖"},{"1316":"池州"},{"1317":"宣城"},{"1318":"亳州"}],"新疆":[{"3002":"乌鲁木齐"},{"3003":"克拉玛依"},{"3010":"巴州"},{"3011":"哈密"},{"3012":"喀什"},{"3014":"阿克苏"},{"3015":"和田"},{"3016":"石河子"},{"3004":"昌吉"},{"3005":"吐鲁番"},{"3006":"伊犁"},{"3007":"塔城"},{"3008":"阿勒泰"},{"3009":"博州"},{"3017":"马兰"}],"重庆":[{"3100":"重庆"}],"天津":[{"0302":"天津"}],"广西":[{"2102":"南宁"},{"2103":"桂林"},{"2104":"梧州"},{"2105":"柳州"},{"2106":"防城港"},{"2107":"北海"},{"2108":"来宾"},{"2109":"贺州"},{"2110":"百色"},{"2111":"玉林"},{"2112":"崇左"},{"2114":"河池"},{"2115":"钦州"},{"2116":"贵港"}],"四川":[{"2302":"攀枝花"},{"2303":"自贡"},{"2304":"泸州"},{"2305":"德阳"},{"2306":"乐山"},{"2307":"内江"},{"2308":"绵阳"},{"2309":"广元"},{"2310":"遂宁"},{"2312":"资阳"},{"2313":"眉山"},{"2314":"宜宾"},{"2315":"南充"},{"2316":"广安"},{"2317":"达州"},{"2318":"巴中"},{"2319":"雅安"},{"2320":"凉山"},{"2321":"甘孜"},{"2322":"阿坝州"},{"4402":"成都"}],"辽宁":[{"0707":"丹东"},{"0708":"锦州"},{"0709":"营口"},{"0710":"阜新"},{"0711":"辽阳"},{"0712":"铁岭"},{"0713":"朝阳"},{"0714":"盘锦"},{"0715":"葫芦岛"},{"3400":"大连"},{"3301":"沈阳"},{"0704":"鞍山"},{"0705":"抚顺"},{"0706":"本溪"}],"青海":[{"2806":"西宁"},{"2807":"海北"},{"2809":"海西"},{"2810":"黄南"},{"2811":"玉树"}],"云南":[{"2518":"临沧"},{"2502":"昆明"},{"2504":"昭通"},{"2505":"曲靖"},{"2506":"文山"},{"2507":"红河"},{"2508":"普洱"},{"2509":"版纳"},{"2510":"保山"},{"2511":"德宏"},{"2512":"丽江"},{"2513":"怒江"},{"2514":"迪庆"},{"2515":"大理"},{"2516":"楚雄"},{"1914":"怀化"},{"2517":"玉溪"}],"浙江":[{"1202":"杭州"},{"1203":"温州"},{"1204":"嘉兴"},{"1205":"湖州"},{"1206":"舟山"},{"1207":"台州"},{"1208":"金华"},{"1209":"衢州"},{"1210":"丽水"},{"1211":"绍兴"},{"3901":"宁波"}],"甘肃":[{"2703":"兰州"},{"2702":"嘉峪关"},{"2704":"白银"},{"2705":"金昌"},{"2706":"天水"},{"2707":"定西"},{"2708":"平凉"},{"2709":"庆阳"},{"2710":"武威"},{"2711":"陇南"},{"2712":"张掖"},{"2713":"酒泉"},{"2714":"临夏"},{"2715":"合作"},{"2717":"甘南"},{"2720":"东风"},{"2716":"矿区"}],"上海":[{"1001":"上海"},{"4510":"自贸区"}],"山西":[{"0502":"太原"},{"0503":"阳泉"},{"0504":"大同"},{"0505":"长治"},{"0506":"晋城"},{"0507":"朔州"},{"0508":"榆次"},{"0509":"离石"},{"0510":"临汾"},{"0511":"运城"},{"0512":"忻州"}],"宁夏":[{"2903":"吴忠"},{"2904":"石嘴山"},{"2905":"固原"},{"2902":"银川"}],"吉林":[{"4200":"长春"},{"0802":"吉林"},{"0803":"辽源"},{"0804":"四平"},{"0805":"白城"},{"0806":"通化"},{"0807":"白山"},{"0808":"延边"},{"0809":"松原"}],"西藏":[{"0010":"昌都"},{"0011":"林芝"},{"0012":"那曲"},{"0013":"日喀则"},{"0014":"山南"},{"0158":"拉萨"},{"0159":"阿里"}],"内蒙古":[{"0602":"呼和浩特"},{"0603":"包头"},{"0604":"乌海"},{"0605":"赤峰"},{"0606":"满洲里"},{"0607":"呼伦贝尔"},{"0608":"乌兰浩特"},{"0609":"通辽"},{"0610":"锡林郭勒"},{"0611":"乌兰察布"},{"0612":"鄂尔多斯"},{"0613":"巴彦淖尔"},{"0614":"阿拉善"}],"北京":[{"0200":"北京"}],"黑龙江":[{"0913":"黑河"},{"0914":"大兴安岭"},{"3500":"哈尔滨"},{"0902":"齐齐哈尔"},{"0903":"牡丹江"},{"0904":"佳木斯"},{"0905":"大庆"},{"0906":"鹤岗"},{"0907":"鸡西"},{"0908":"双鸭山"},{"0909":"伊春"},{"0910":"七台河"},{"0912":"绥化"}],"广东":[{"2003":"汕头"},{"2004":"潮州"},{"2005":"韶关"},{"2006":"河源"},{"2007":"梅州"},{"2008":"惠州"},{"2009":"汕尾"},{"2010":"东莞"},{"2011":"中山"},{"2012":"江门"},{"2013":"佛山"},{"2014":"阳江"},{"2015":"湛江"},{"2016":"茂名"},{"2017":"肇庆"},{"2018":"清远"},{"2019":"揭阳"},{"2020":"云浮"},{"3602":"广州"},{"4000":"深圳"},{"2002":"珠海"}]}};
	}
	var firstCodeJson = areaCodeJson.first;
	var secondCodeJson = areaCodeJson.second;
	var isFirst = true;
	var proName;
	var areacode;
	var address_timers = null;
	$(function(){
       $('#comment').MTab({tabNameCur:'cur'});
       $('#add_address').MTab({tabNameCur:'cur'});

		//选择地址
		$('.t_add_address').on({
			mouseenter :function(){
				var _this = $(this);
				clearTimeout( address_timers );
    			_this.find('#defaultArea').addClass('cur').next().show();

		},
		mouseleave :function(){
			clearTimeout( address_timers );
			var _this = $(this);
			address_timers = setTimeout(function(){
				_this.find('#defaultArea').removeClass('cur').next().hide();
			},200);
		}
	});
		var cookieName = "firstZoneNo";
		var firstZoneNo = Utils.getCookie(cookieName);
		if(firstZoneNo != null && firstZoneNo != "" && typeof(firstZoneNo) != "undefined"){
			var strArray = firstZoneNo.split("_")
			if(strArray.length == 2){
				proName = strArray[0];
				proName = decodeURIComponent(proName)
				areacode = strArray[1];
				zoneNo = areacode;//为frame_index.jsp页面上的zoneNo赋值
			}else{
				proName = "北京";
				areacode = "0200";
				setAreaCodeCookie();
			}
		}else{
			//从IP获取areaCode和proName
			proName = '北京';
			areacode = '0200';
			if((!proName)||(!areacode)){
			    proName = "北京";
			    areacode = "0200";
			}
			setAreaCodeCookie();
		}
		$("a[name='cityData']").live("click",clickProvinceAreaFun);
		$("#areaUl li a").live("click",clickCityAreaFun);
		//初始化省信息
    	if(typeof(firstCodeJson) != "undefined" && firstCodeJson != null){
    		$("#firstArea").empty();
    		for(var i=0;i<firstCodeJson.length;i++){
    			var provinceName = firstCodeJson[i];
				$("#firstArea").append("<li><a id='"+provinceName+"' name='cityData' herf='javascript:;' class='' style='FONT-SIZE: 14px;'>"+provinceName+"</a></li>");
				if(isCookieContainCodeFun(provinceName)){
					jQuery("#"+provinceName).click();
				}
    		}
    		$("#addressCity").trigger('click');
    	}
	});
    //点击省操作
    function clickProvinceAreaFun(){
    	var provinceName = $(this).text();
		$("#addressArea").html("请选择"+"<i></i>");
		proName = provinceName;
    	$("#addressCity").text(provinceName);
    	$("#addressArea").attr("name","");
    	for(var pName in secondCodeJson){
    		if(pName == provinceName){
    			$("#areaUl").empty();
    			var secondList = secondCodeJson[provinceName];
    			if(secondList){
    				for(var i=0;i<secondList.length;i++){
    					var secondObj = secondList[i];
    					for(var second in secondObj){
    						var areaName = secondObj[second];
							if(areaName != null && typeof(areaName) != "undefined" && areaName.length > 6){
								$("#areaUl").append("<li class='long_text'><a id='"+second+"' class='' herf='javascript:;'>"+areaName+"</a></li>");
    						}else{
								$("#areaUl").append("<li><a id='"+second+"' class='' herf='javascript:;' style='FONT-SIZE: 14px;'>"+areaName+"</a></li>");
    						}
    						if(isCookieContainCodeFun(second)){
								jQuery("#"+second).trigger('click');
								$("#"+second).css({color : "white", background : "#F4734A"});
    						}
    					}
    				}
    			}
    		}
    	}
    	$("#firstArea li a[class='']").css({color : "#5B5B5B", background : "white"});
    	$("#"+provinceName).css({color : "white", background : "#F4734A"});
    	$("#addressArea").trigger('click');
    }

	function clickCityAreaFun(){
	    var areaName = $(this).text();
		$("#addressArea").html(areaName+"<i></i>");

		$("#defaultArea i").html(areaName);
		var areaId = $(this).attr("id");
		areacode = areaId;
		if(isFirst){
			isFirst = false;
		}else{
			setAreaCodeCookie();
			//location.reload();

			//刷新主页面
			firstZoneNo = areacode;
			reSetIndex(firstZoneNo);
		}
		$("#areaUl li a[class='']").css({color : "#5B5B5B", background : "white"});
		$("#"+areaId).css({color : "white", background : "#F4734A"});
	}

	function isCookieContainCodeFun(areaId){
    	if(isFirst){
    		if(areaId == proName){
				return true;
			}else if(areaId == areacode){
				return true;
			}
    	}
    	return false;
	}

	function getCurrentDomain(){
    	var url = window.location.href;
    	var domain = url.replace(/.*:\/\/([^:|^\/]*).*/,"$1");
    	return domain;
	}

	function setAreaCodeCookie(){
		zoneNo = areacode;//为frame_index.jsp页面上的zoneNo赋值
		var areaCodeParam = proName + "_" + areacode
		Utils.clearCookie("firstZoneNo", getCurrentDomain());
		Utils.setCookie("firstZoneNo", areaCodeParam, 7, getCurrentDomain());
	}
</SCRIPT>

			<li><a href="${pageContext.request.contextPath}/icbc/Emall/main/forward.jsp?dse_sessionId="${dse_sessionId}""${dse_sessionId}"" class="icon-2" target="_blank">融e购</a></li>

	<c:if test="${empty dse_sessionId}">
		 <li class="user-unLogin-li">
			<a href="javascript:perbankAtomLocationTW(serviceId,transData,'',true);" class="icon-4">登录</a>
		 </li>
	</c:if>
		<c:if test="${!empty dse_sessionId}">
			<li class="user-Login-li">
			<a  class="icon-4">欢迎您${user.userName}</a>
			</li>
		</c:if>
	<c:if test="${empty dse_sessionId}">
		 <li class="cut-li">
		 <a class="cut-a"><span class="bor-r">&nbsp;</span></a>
		 </li>

		<li >
		 <a href="/regist/regist_index.jsp" target="_blank" class="register-a">注册</a>
		 </li>
	</c:if>


      </ul>

     	<div class="search-box fl">
     	<label class="search-holder" id="search-holder" for="search-key" style="">找功能，找产品，点我！</label>
        <input id="search-key" type="text" value="" onkeydown="javascript:if(event.keyCode==13){searchGo();}else{justShowSearch();};" onkeyup="javascript:justShowSearch();" maxlength="16"/>
        <b class="search-btn"></b>
        <div class="down-search">
        	<div class="search-left"></div>
       		<div class="search-center">
	            <p><a href="javascript:justShowSearchGo('2')" >在产品中搜索"<span class="searchkey3"></span>"</a></p>
	            <p style="margin-top:-8px;"><a href="javascript:justShowSearchGo('10')" >在缴费中搜索"<span class="searchkey3"></span>"</a></p>
	        </div>
            <div class="search-right"></div>
        </div>
      </div>

    </div>
  </div>
  <!--header end-->
  <div class="menu-box width">
    <div class="choose-box" id="choose-box">
     	<!-- <a href="javascript:showMyQuickFucDiv();" class="zuiai " id="zuiai" name="zuiai">最爱<span></span></a>  -->
     	<a href="javascript:perbankAtomLocationTW('PBL200204','',dse_sessionId);" class="quanbu" id="quanbu" onmouseover="javascript:getAtomService();">全部</a>
    	<div class="choose-pop">
        	<div class="choose-1" id="choose-1">
        	<div class="choose-zuiai" id="choose-zuiai">
            </div>
            </div>
            <div class="choose-2" id="choose-2">
            <div class="choose-quanbu" id="choose-quanbu">
                <ol>
                <li><h5><a href="javascript:perbankAtomLocationTW('PBL200204','false|PBL200700',dse_sessionId);">银行卡.账户<span>></span></a></h5><div class="down-right-nemu"><div id='div_PBL200700' class="down-right-nemu-list"  style="width:756px;height:35px;background-color:#F7F7F7;display: none;font-size: 14px;"><div id='div_PBL200700_left'><ul style="color: #888889; margin-right: 20px;width: auto;margin-left: 20px; float: left;"><img src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/style/style_default/images/zjsy.png" style="margin-right: 5px;vertical-align: text-bottom;" />最近使用</ul></div></div><div class="down-right-nemu-box"><div class="down-right-nemu-list"><h6>账户服务</h6><ul><li><a href=javascript:logPV('PBL100410');perbankAtomLocationTW('PBL100410','',dse_sessionId);>账户申请</a></li><li><a href=javascript:logPV('PBL200711');perbankAtomLocationTW('PBL200711','',dse_sessionId);>明细查询</a></li><li><a href=javascript:logPV('PBL200712');perbankAtomLocationTW('PBL200712','',dse_sessionId);>余额查询</a></li><li><a href=javascript:logPV('PBL200713');perbankAtomLocationTW('PBL200713','',dse_sessionId);>电子对账单</a></li><li><a href=javascript:logPV('PBL200714');perbankAtomLocationTW('PBL200714','',dse_sessionId);>电子回单</a></li><li><a href=javascript:logPV('PBL200715');perbankAtomLocationTW('PBL200715','',dse_sessionId);>电子工资单</a></li></ul><ul><li><a href=javascript:logPV('PBL200716');perbankAtomLocationTW('PBL200716','',dse_sessionId);>支付明细查询</a></li><li><a href=javascript:logPV('PBL200743');perbankAtomLocationTW('PBL200743','',dse_sessionId);>网银互联</a></li><li><a href=javascript:logPV('PBL200742');perbankAtomLocationTW('PBL200742','',dse_sessionId);>联名账户</a></li><li><a href=javascript:logPV('PBL200744');perbankAtomLocationTW('PBL200744','',dse_sessionId);>工行全球账户</a></li><li><a href=javascript:logPV('PBL200771');perbankAtomLocationTW('PBL200771','',dse_sessionId);>开户网点查询</a></li><li><a href=javascript:logPV('PBL200772');perbankAtomLocationTW('PBL200772','',dse_sessionId);>小额账户销户</a></li></ul><ul class='last'><li><a href=javascript:logPV('PBL200773');perbankAtomLocationTW('PBL200773','',dse_sessionId);>挂失</a></li><li><a href=javascript:logPV('PBL200778');perbankAtomLocationTW('PBL200778','',dse_sessionId);>个人账户销户预处理</a></li><li><a href=javascript:logPV('PBL201728');perbankAtomLocationTW('PBL201728','',dse_sessionId);>下挂卡转注册卡</a></li><li><a href=javascript:logPV('PBL201627');perbankAtomLocationTW('PBL201627','',dse_sessionId);>资金托管</a></li><li><a href=javascript:logPV('PBL200733');perbankAtomLocationTW('PBL200733','',dse_sessionId);>工资明细</a></li></ul></div><div class="down-right-nemu-list"><h6>借记卡服务</h6><ul class='last'><li><a href=javascript:logPV('PBL200721');perbankAtomLocationTW('PBL200721','',dse_sessionId);>借记卡申请</a></li><li><a href=javascript:logPV('PBL200751');perbankAtomLocationTW('PBL200751','',dse_sessionId);>卡片限额设置</a></li><li><a href=javascript:logPV('PBL200752');perbankAtomLocationTW('PBL200752','',dse_sessionId);>银行卡换卡不换号</a></li></ul></div></div></div></li><li><h5><a href="javascript:perbankAtomLocationTW('PBL200204','false|PBL200800',dse_sessionId);">汇款<span>></span></a></h5><div class="down-right-nemu"><div id='div_PBL200800' class="down-right-nemu-list"  style="width:756px;height:35px;background-color:#F7F7F7;display: none;font-size: 14px;"><div id='div_PBL200800_left'><ul style="color: #888889; margin-right: 20px;width: auto;margin-left: 20px; float: left;"><img src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/style/style_default/images/zjsy.png" style="margin-right: 5px;vertical-align: text-bottom;" />最近使用</ul></div></div><div class="down-right-nemu-box"><div class="down-right-nemu-list"><h6>转账汇款</h6><ul><li><a href=javascript:logPV('PBL200811');perbankAtomLocationTW('PBL200811','',dse_sessionId);>境内汇款</a></li><li><a href=javascript:logPV('PBL200862');perbankAtomLocationTW('PBL200862','',dse_sessionId);>批量汇款</a></li><li><a href=javascript:logPV('PBL200821');perbankAtomLocationTW('PBL200821','',dse_sessionId);>向境外银行汇款</a></li><li><a href=javascript:logPV('PBL200822');perbankAtomLocationTW('PBL200822','',dse_sessionId);>向Visa/MasterCard汇款</a></li><li><a href=javascript:logPV('PBL200824');perbankAtomLocationTW('PBL200824','',dse_sessionId);>西联汇款（解付）</a></li></ul><ul class='last'><li><a href=javascript:logPV('PBL200812');perbankAtomLocationTW('PBL200812','',dse_sessionId);>注册账户转账</a></li><li><a href=javascript:logPV('PBL200881');perbankAtomLocationTW('PBL200881','',dse_sessionId);>预约汇款</a></li><li><a href=javascript:logPV('PBL200882');perbankAtomLocationTW('PBL200882','',dse_sessionId);>资金自动归集</a></li><li><a href=javascript:logPV('PBL200912');perbankAtomLocationTW('PBL200912','',dse_sessionId);>AA收款</a></li><li><a href=javascript:logPV('PBL200911');perbankAtomLocationTW('PBL200911','',dse_sessionId);>电子收付款账单</a></li></ul></div><div class="down-right-nemu-list"><h6>收款绑定</h6><ul class='last'><li><a href=javascript:logPV('PBL200831');perbankAtomLocationTW('PBL200831','',dse_sessionId);>手机号收款绑定</a></li><li><a href=javascript:logPV('PBL200832');perbankAtomLocationTW('PBL200832','',dse_sessionId);>E-mail收款绑定</a></li></ul></div><div class="down-right-nemu-list"><h6>投标保证金</h6><ul class='last'><li><a href=javascript:logPV('PBL200921');perbankAtomLocationTW('PBL200921','',dse_sessionId);>投标保证金</a></li></ul></div><div class="down-right-nemu-list"><h6>结算套餐</h6><ul class='last'><li><a href=javascript:logPV('PBL200901');perbankAtomLocationTW('PBL200901','',dse_sessionId);>商友会员专属结算套餐</a></li><li><a href=javascript:logPV('PBL200902');perbankAtomLocationTW('PBL200902','',dse_sessionId);>普通结算套餐</a></li></ul></div><div class="down-right-nemu-list"><h6>工银e支付</h6><ul class='last'><li><a href=javascript:logPV('PBL200745');perbankAtomLocationTW('PBL200745','',dse_sessionId);>工银e支付</a></li></ul></div></div></div></li><li><h5><a href="javascript:perbankAtomLocationTW('PBL200204','false|PBL200760',dse_sessionId);">信用卡<span>></span></a></h5><div class="down-right-nemu"><div id='div_PBL200760' class="down-right-nemu-list"  style="width:756px;height:35px;background-color:#F7F7F7;display: none;font-size: 14px;"><div id='div_PBL200760_left'><ul style="color: #888889; margin-right: 20px;width: auto;margin-left: 20px; float: left;"><img src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/style/style_default/images/zjsy.png" style="margin-right: 5px;vertical-align: text-bottom;" />最近使用</ul></div></div><div class="down-right-nemu-box"><div class="down-right-nemu-list"><h6>信用卡账户</h6><ul class='last'><li><a href=javascript:logPV('PBL200779');perbankAtomLocationTW('PBL200779','',dse_sessionId);>我的信用卡</a></li><li><a href=javascript:logPV('PBL200761');perbankAtomLocationTW('PBL200761','',dse_sessionId);>还款</a></li><li><a href=javascript:logPV('PBL200762');perbankAtomLocationTW('PBL200762','',dse_sessionId);>分期付款</a></li><li><a href=javascript:logPV('PBL200763');perbankAtomLocationTW('PBL200763','',dse_sessionId);>定制分期</a></li><li><a href=javascript:logPV('PBL200764');perbankAtomLocationTW('PBL200764','',dse_sessionId);>现金分期</a></li></ul></div><div class="down-right-nemu-list"><h6>卡片管理</h6><ul class='last'><li><a href=javascript:logPV('PBL200722');perbankAtomLocationTW('PBL200722','',dse_sessionId);>申请及进度</a></li><li><a href=javascript:logPV('PBL200725');perbankAtomLocationTW('PBL200725','',dse_sessionId);>申请副卡</a></li><li><a href=javascript:logPV('PBL200769');perbankAtomLocationTW('PBL200769','',dse_sessionId);>启用</a></li><li><a href=javascript:logPV('PBL200724');perbankAtomLocationTW('PBL200724','',dse_sessionId);>数字信用卡申请</a></li></ul></div><div class="down-right-nemu-list"><h6>卡片操作</h6><ul class='last'><li><a href=javascript:logPV('PBL200775');perbankAtomLocationTW('PBL200775','',dse_sessionId);>额度调整</a></li><li><a href=javascript:logPV('PBL20076002');perbankAtomLocationTW('PBL20076002','',dse_sessionId);>融e借</a></li></ul></div><div class="down-right-nemu-list"><h6>服务</h6><ul class='last'><li><a href=javascript:logPV('PBL200765');perbankAtomLocationTW('PBL200765','',dse_sessionId);>贵宾厅服务 </a></li><li><a href=javascript:logPV('PBL200767');perbankAtomLocationTW('PBL200767','',dse_sessionId);>芯片卡服务</a></li><li><a href=javascript:logPV('PBL200768');perbankAtomLocationTW('PBL200768','',dse_sessionId);>牡丹基金卡服务</a></li><li><a href=javascript:logPV('PBL200766');perbankAtomLocationTW('PBL200766','',dse_sessionId);>信用报告</a></li></ul></div></div></div></li><li><h5><a href="javascript:perbankAtomLocationTW('PBL200204','false|PBL201000',dse_sessionId);">存款.贷款<span>></span></a></h5><div class="down-right-nemu"><div id='div_PBL201000' class="down-right-nemu-list"  style="width:756px;height:35px;background-color:#F7F7F7;display: none;font-size: 14px;"><div id='div_PBL201000_left'><ul style="color: #888889; margin-right: 20px;width: auto;margin-left: 20px; float: left;"><img src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/style/style_default/images/zjsy.png" style="margin-right: 5px;vertical-align: text-bottom;" />最近使用</ul></div></div><div class="down-right-nemu-box"><div class="down-right-nemu-list"><h6>存款</h6><ul class='last'><li><a href=javascript:logPV('PBL201011');perbankAtomLocationTW('PBL201011','',dse_sessionId);>通知存款</a></li><li><a href=javascript:logPV('PBL201021');perbankAtomLocationTW('PBL201021','',dse_sessionId);>定期存款</a></li><li><a href=javascript:logPV('PBL201025');perbankAtomLocationTW('PBL201025','',dse_sessionId);>大额存单</a></li><li><a href=javascript:logPV('PBL201031');perbankAtomLocationTW('PBL201031','',dse_sessionId);>节节高</a></li><li><a href=javascript:logPV('PBL201032');perbankAtomLocationTW('PBL201032','',dse_sessionId);>定活通</a></li><li><a href=javascript:logPV('PBL201033');perbankAtomLocationTW('PBL201033','',dse_sessionId);>薪金溢</a></li><li><a href=javascript:logPV('PBL201034');perbankAtomLocationTW('PBL201034','',dse_sessionId);>天天惠</a></li></ul></div><div class="down-right-nemu-list"><h6>贷款</h6><ul><li><a href=javascript:logPV('PBL201099');perbankAtomLocationTW('PBL201099','',dse_sessionId);>我的贷款</a></li><li><a href=javascript:logPV('PBL201041');perbankAtomLocationTW('PBL201041','',dse_sessionId);>融e借</a></li><li><a href=javascript:logPV('PBL201051');perbankAtomLocationTW('PBL201051','',dse_sessionId);>质押贷款</a></li><li><a href=javascript:logPV('PBL20109001');perbankAtomLocationTW('PBL20109001','',dse_sessionId);>个人住房贷款</a></li><li><a href=javascript:logPV('PBL201061');perbankAtomLocationTW('PBL201061','',dse_sessionId);>网络抵押贷款</a></li></ul><ul class='last'><li><a href=javascript:logPV('PBL201071');perbankAtomLocationTW('PBL201071','',dse_sessionId);>存贷通</a></li><li><a href=javascript:logPV('PBL201092');perbankAtomLocationTW('PBL201092','',dse_sessionId);>查询</a></li><li><a href=javascript:logPV('PBL201096');perbankAtomLocationTW('PBL201096','',dse_sessionId);>还款测算</a></li><li><a href=javascript:logPV('PBL201043');perbankAtomLocationTW('PBL201043','',dse_sessionId);>信用报告</a></li></ul></div></div></div></li><li><h5><a href="javascript:perbankAtomLocationTW('PBL200204','false|PBL201100',dse_sessionId);">理财.债券<span>></span></a></h5><div class="down-right-nemu"><div id='div_PBL201100' class="down-right-nemu-list"  style="width:756px;height:35px;background-color:#F7F7F7;display: none;font-size: 14px;"><div id='div_PBL201100_left'><ul style="color: #888889; margin-right: 20px;width: auto;margin-left: 20px; float: left;"><img src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/style/style_default/images/zjsy.png" style="margin-right: 5px;vertical-align: text-bottom;" />最近使用</ul></div></div><div class="down-right-nemu-box"><div class="down-right-nemu-list"><h6>理财</h6><ul><li><a href=javascript:logPV('PBL20111002');perbankAtomLocationTW('PBL20111002','',dse_sessionId);>理财产品</a></li><li><a href=javascript:logPV('PBL20111003');perbankAtomLocationTW('PBL20111003','',dse_sessionId);>我的理财</a></li><li><a href=javascript:logPV('PBL201111');perbankAtomLocationTW('PBL201111','',dse_sessionId);>推荐产品</a></li><li><a href=javascript:logPV('PBL201113');perbankAtomLocationTW('PBL201113','',dse_sessionId);>精品主题</a></li><li><a href=javascript:logPV('PBL201112');perbankAtomLocationTW('PBL201112','',dse_sessionId);>现金管理</a></li></ul><ul class='last'><li><a href=javascript:logPV('PBL201117');perbankAtomLocationTW('PBL201117','',dse_sessionId);>优选净值</a></li><li><a href=javascript:logPV('PBL201114');perbankAtomLocationTW('PBL201114','',dse_sessionId);>外币类</a></li><li><a href=javascript:logPV('PBL20111004');perbankAtomLocationTW('PBL20111004','',dse_sessionId);>私人银行</a></li><li><a href=javascript:logPV('PBL201115');perbankAtomLocationTW('PBL201115','',dse_sessionId);>新型理财</a></li></ul></div><div class="down-right-nemu-list"><h6>债券</h6><ul class='last'><li><a href=javascript:logPV('PBL201121');perbankAtomLocationTW('PBL201121','',dse_sessionId);>柜台记账式债券</a></li><li><a href=javascript:logPV('PBL201123');perbankAtomLocationTW('PBL201123','',dse_sessionId);>储蓄国债</a></li></ul></div><div class="down-right-nemu-list"><h6>理财服务</h6><ul class='last'><li><a href=javascript:logPV('PBL201142');perbankAtomLocationTW('PBL201142','',dse_sessionId);>我的理财服务</a></li><li><a href=javascript:logPV('PBL201143');perbankAtomLocationTW('PBL201143','',dse_sessionId);>查询执行明细</a></li></ul></div></div></div></li><li><h5><a href="javascript:perbankAtomLocationTW('PBL200204','false|PBL201200',dse_sessionId);">基金.证券.期货<span>></span></a></h5><div class="down-right-nemu"><div id='div_PBL201200' class="down-right-nemu-list"  style="width:756px;height:35px;background-color:#F7F7F7;display: none;font-size: 14px;"><div id='div_PBL201200_left'><ul style="color: #888889; margin-right: 20px;width: auto;margin-left: 20px; float: left;"><img src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/style/style_default/images/zjsy.png" style="margin-right: 5px;vertical-align: text-bottom;" />最近使用</ul></div></div><div class="down-right-nemu-box"><div class="down-right-nemu-list"><h6>基金</h6><ul class='last'><li><a href=javascript:logPV('PBL201210');perbankAtomLocationTW('PBL201210','',dse_sessionId);>基金产品</a></li><li><a href=javascript:logPV('PBL20031201');perbankAtomLocationTW('PBL20031201','',dse_sessionId);>我的基金</a></li><li><a href=javascript:logPV('PBL201212');perbankAtomLocationTW('PBL201212','',dse_sessionId);>货币基金</a></li><li><a href=javascript:logPV('PBL201213');perbankAtomLocationTW('PBL201213','',dse_sessionId);>股票基金</a></li><li><a href=javascript:logPV('PBL201214');perbankAtomLocationTW('PBL201214','',dse_sessionId);>债券基金</a></li><li><a href=javascript:logPV('PBL201215');perbankAtomLocationTW('PBL201215','',dse_sessionId);>混合基金</a></li><li><a href=javascript:logPV('PBL201216');perbankAtomLocationTW('PBL201216','',dse_sessionId);>基金定投  </a></li></ul></div><div class="down-right-nemu-list"><h6>银证</h6><ul><li><a href=javascript:logPV('PBL202011');perbankAtomLocationTW('PBL202011','',dse_sessionId);>开户预约</a></li><li><a href=javascript:logPV('PBL202012');perbankAtomLocationTW('PBL202012','',dse_sessionId);>快捷开户</a></li><li><a href=javascript:logPV('PBL202013');perbankAtomLocationTW('PBL202013','',dse_sessionId);>自助注册</a></li><li><a href=javascript:logPV('PBL202014');perbankAtomLocationTW('PBL202014','',dse_sessionId);>我的第三方存管</a></li><li><a href=javascript:logPV('PBL202015');perbankAtomLocationTW('PBL202015','',dse_sessionId);>银证转账</a></li><li><a href=javascript:logPV('PBL202016');perbankAtomLocationTW('PBL202016','',dse_sessionId);>融资融券</a></li><li><a href=javascript:logPV('PBL202017');perbankAtomLocationTW('PBL202017','',dse_sessionId);>B股银证转账</a></li></ul><ul class='last'><li><a href=javascript:logPV('PBL202018');perbankAtomLocationTW('PBL202018','',dse_sessionId);>B股证券业务</a></li><li><a href=javascript:logPV('PBL202019');perbankAtomLocationTW('PBL202019','',dse_sessionId);>B股证券转账（深圳、上海）</a></li><li><a href=javascript:logPV('PBL202001');perbankAtomLocationTW('PBL202001','',dse_sessionId);>银衍转账</a></li><li><a href=javascript:logPV('PBL202002');perbankAtomLocationTW('PBL202002','',dse_sessionId);>银证期三通</a></li><li><a href=javascript:logPV('PBL202003');perbankAtomLocationTW('PBL202003','',dse_sessionId);>网下新股申购转账</a></li><li><a href=javascript:logPV('PBL202004');perbankAtomLocationTW('PBL202004','',dse_sessionId);>存管通</a></li><li><a href=javascript:logPV('PBL202005');perbankAtomLocationTW('PBL202005','',dse_sessionId);>银证转账预约设置</a></li></ul></div><div class="down-right-nemu-list"><h6>期货</h6><ul class='last'><li><a href=javascript:logPV('PBL202021');perbankAtomLocationTW('PBL202021','',dse_sessionId);>集中式银期注册</a></li><li><a href=javascript:logPV('PBL202022');perbankAtomLocationTW('PBL202022','',dse_sessionId);>集中式银期转账</a></li><li><a href=javascript:logPV('PBL202023');perbankAtomLocationTW('PBL202023','',dse_sessionId);>期货开户预约</a></li></ul></div><div class="down-right-nemu-list"><h6>银商银权</h6><ul class='last'><li><a href=javascript:logPV('PBL202031');perbankAtomLocationTW('PBL202031','',dse_sessionId);>交易市场注册</a></li><li><a href=javascript:logPV('PBL202032');perbankAtomLocationTW('PBL202032','',dse_sessionId);>我的交易市场</a></li><li><a href=javascript:logPV('PBL202033');perbankAtomLocationTW('PBL202033','',dse_sessionId);>查询出入金状态</a></li></ul></div></div></div></li><li><h5><a href="javascript:perbankAtomLocationTW('PBL200204','false|PBL201300',dse_sessionId);">贵金属.外汇.账户商品<span>></span></a></h5><div class="down-right-nemu"><div id='div_PBL201300' class="down-right-nemu-list"  style="width:756px;height:35px;background-color:#F7F7F7;display: none;font-size: 14px;"><div id='div_PBL201300_left'><ul style="color: #888889; margin-right: 20px;width: auto;margin-left: 20px; float: left;"><img src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/style/style_default/images/zjsy.png" style="margin-right: 5px;vertical-align: text-bottom;" />最近使用</ul></div></div><div class="down-right-nemu-box"><div class="down-right-nemu-list"><h6>账户贵金属</h6><ul class='last'><li><a href=javascript:logPV('PBL201311');perbankAtomLocationTW('PBL201311','',dse_sessionId);>账户贵金属</a></li><li><a href=javascript:logPV('PBL201312');perbankAtomLocationTW('PBL201312','',dse_sessionId);>账户贵金属指数</a></li><li><a href=javascript:logPV('PBL201351');perbankAtomLocationTW('PBL201351','',dse_sessionId);>账户贵金属转换</a></li></ul></div><div class="down-right-nemu-list"><h6>实物贵金属</h6><ul class='last'><li><a href=javascript:logPV('PBL201333');perbankAtomLocationTW('PBL201333','',dse_sessionId);>代理贵金属递延</a></li><li><a href=javascript:logPV('PBL201332');perbankAtomLocationTW('PBL201332','',dse_sessionId);>代理贵金属现货</a></li><li><a href=javascript:logPV('PBL201337');perbankAtomLocationTW('PBL201337','',dse_sessionId);>品牌贵金属购买</a></li><li><a href=javascript:logPV('PBL201331');perbankAtomLocationTW('PBL201331','',dse_sessionId);>积存金</a></li></ul></div><div class="down-right-nemu-list"><h6>外汇</h6><ul class='last'><li><a href=javascript:logPV('PBL201342');perbankAtomLocationTW('PBL201342','',dse_sessionId);>结售汇</a></li><li><a href=javascript:logPV('PBL201341');perbankAtomLocationTW('PBL201341','',dse_sessionId);>外汇买卖</a></li><li><a href=javascript:logPV('PBL201343');perbankAtomLocationTW('PBL201343','',dse_sessionId);>账户外汇</a></li><li><a href=javascript:logPV('PBL201345');perbankAtomLocationTW('PBL201345','',dse_sessionId);>账户外汇指数</a></li></ul></div><div class="down-right-nemu-list"><h6>账户商品</h6><ul class='last'><li><a href=javascript:logPV('PBL201321');perbankAtomLocationTW('PBL201321','',dse_sessionId);>账户能源</a></li><li><a href=javascript:logPV('PBL201322');perbankAtomLocationTW('PBL201322','',dse_sessionId);>账户农产品 </a></li><li><a href=javascript:logPV('PBL201323');perbankAtomLocationTW('PBL201323','',dse_sessionId);>账户基本金属</a></li></ul></div></div></div></li><li><h5><a href="javascript:perbankAtomLocationTW('PBL200204','false|PBL202000',dse_sessionId);">保险.养老金.社保.公积金<span>></span></a></h5><div class="down-right-nemu"><div id='div_PBL202000' class="down-right-nemu-list"  style="width:756px;height:35px;background-color:#F7F7F7;display: none;font-size: 14px;"><div id='div_PBL202000_left'><ul style="color: #888889; margin-right: 20px;width: auto;margin-left: 20px; float: left;"><img src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/style/style_default/images/zjsy.png" style="margin-right: 5px;vertical-align: text-bottom;" />最近使用</ul></div></div><div class="down-right-nemu-box"><div class="down-right-nemu-list"><h6>保险</h6><ul class='last'><li><a href=javascript:logPV('PBL201230');perbankAtomLocationTW('PBL201230','',dse_sessionId);>保险产品</a></li><li><a href=javascript:logPV('PBL201231');perbankAtomLocationTW('PBL201231','',dse_sessionId);>我的保险</a></li><li><a href=javascript:logPV('PBL201226');perbankAtomLocationTW('PBL201226','',dse_sessionId);>稳健投资</a></li><li><a href=javascript:logPV('PBL201227');perbankAtomLocationTW('PBL201227','',dse_sessionId);>健康人生</a></li><li><a href=javascript:logPV('PBL201228');perbankAtomLocationTW('PBL201228','',dse_sessionId);>安全出行</a></li><li><a href=javascript:logPV('PBL201229');perbankAtomLocationTW('PBL201229','',dse_sessionId);>养老无忧</a></li></ul></div><div class="down-right-nemu-list"><h6>养老金·社保·公积金</h6><ul class='last'><li><a href=javascript:logPV('PBL201626');perbankAtomLocationTW('PBL201626','',dse_sessionId);>养老金</a></li><li><a href=javascript:logPV('PBL201625');perbankAtomLocationTW('PBL201625','',dse_sessionId);>社保</a></li><li><a href=javascript:logPV('PBL201624');perbankAtomLocationTW('PBL201624','',dse_sessionId);>住房公积金</a></li></ul></div></div></div></li><li><h5><a href="javascript:perbankAtomLocationTW('PBL200204','false|PBL201400',dse_sessionId);">信使.预约<span>></span></a></h5><div class="down-right-nemu"><div id='div_PBL201400' class="down-right-nemu-list"  style="width:756px;height:35px;background-color:#F7F7F7;display: none;font-size: 14px;"><div id='div_PBL201400_left'><ul style="color: #888889; margin-right: 20px;width: auto;margin-left: 20px; float: left;"><img src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/style/style_default/images/zjsy.png" style="margin-right: 5px;vertical-align: text-bottom;" />最近使用</ul></div></div><div class="down-right-nemu-box"><div class="down-right-nemu-list"><h6>工银信使</h6><ul class='last'><li><a href=javascript:logPV('PBL2007461');perbankAtomLocationTW('PBL2007461','',dse_sessionId);>我的工银信使</a></li><li><a href=javascript:logPV('PBL201411');perbankAtomLocationTW('PBL201411','',dse_sessionId);>余额变动提醒</a></li><li><a href=javascript:logPV('PBL201412');perbankAtomLocationTW('PBL201412','',dse_sessionId);>贵金属到价提醒</a></li><li><a href=javascript:logPV('PBL201413');perbankAtomLocationTW('PBL201413','',dse_sessionId);>重要事项提醒</a></li><li><a href=javascript:logPV('PBL201415');perbankAtomLocationTW('PBL201415','',dse_sessionId);>其他信使</a></li></ul></div><div class="down-right-nemu-list"><h6>网点预约</h6><ul class='last'><li><a href=javascript:logPV('PBL201601');perbankAtomLocationTW('PBL201601','',dse_sessionId);>预约取号</a></li><li><a href=javascript:logPV('PBL201422');perbankAtomLocationTW('PBL201422','',dse_sessionId);>人民币大额现金取款</a></li><li><a href=javascript:logPV('PBL201423');perbankAtomLocationTW('PBL201423','',dse_sessionId);>外币现金取款</a></li><li><a href=javascript:logPV('PBL201433');perbankAtomLocationTW('PBL201433','',dse_sessionId);>申请借记卡</a></li><li><a href=javascript:logPV('PBL201602');perbankAtomLocationTW('PBL201602','',dse_sessionId);>开立资信证明</a></li><li><a href=javascript:logPV('PBL201603');perbankAtomLocationTW('PBL201603','',dse_sessionId);>换卡不换号申请</a></li><li><a href=javascript:logPV('PBL201430');perbankAtomLocationTW('PBL201430','',dse_sessionId);>我的网点预约</a></li></ul></div></div></div></li><li><h5><a href="javascript:perbankAtomLocationTW('PBL200204','false|PBL201500',dse_sessionId);">私人银行<span>></span></a></h5><div class="down-right-nemu"><div id='div_PBL201500' class="down-right-nemu-list"  style="width:756px;height:35px;background-color:#F7F7F7;display: none;font-size: 14px;"><div id='div_PBL201500_left'><ul style="color: #888889; margin-right: 20px;width: auto;margin-left: 20px; float: left;"><img src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/style/style_default/images/zjsy.png" style="margin-right: 5px;vertical-align: text-bottom;" />最近使用</ul></div></div><div class="down-right-nemu-box"><div class="down-right-nemu-list"><h6>金融服务</h6><ul><li><a href=javascript:logPV('PBL201545');perbankAtomLocationTW('PBL201545','',dse_sessionId);>我的财富</a></li><li><a href=javascript:logPV('PBL201503');perbankAtomLocationTW('PBL201503','',dse_sessionId);>专属理财服务</a></li><li><a href=javascript:logPV('PBL201578');perbankAtomLocationTW('PBL201578','',dse_sessionId);>专属基金</a></li><li><a href=javascript:logPV('PBL201508');perbankAtomLocationTW('PBL201508','',dse_sessionId);>专属代理产品</a></li><li><a href=javascript:logPV('PBL201579');perbankAtomLocationTW('PBL201579','',dse_sessionId);>我的预留产品</a></li><li><a href=javascript:logPV('PBL201547');perbankAtomLocationTW('PBL201547','',dse_sessionId);>资产管理</a></li></ul><ul class='last'><li><a href=javascript:logPV('PBL201548');perbankAtomLocationTW('PBL201548','',dse_sessionId);>增值服务</a></li><li><a href=javascript:logPV('PBL201550');perbankAtomLocationTW('PBL201550','',dse_sessionId);>委托确认</a></li><li><a href=javascript:logPV('PBL201577');perbankAtomLocationTW('PBL201577','',dse_sessionId);>投资账户</a></li><li><a href=javascript:logPV('PBL201119');perbankAtomLocationTW('PBL201119','',dse_sessionId);>配置组合</a></li><li><a href=javascript:logPV('PBL201571');perbankAtomLocationTW('PBL201571','',dse_sessionId);>新产品意向征集</a></li></ul></div><div class="down-right-nemu-list"><h6>非金融服务</h6><ul class='last'><li><a href=javascript:logPV('PBL201504');perbankAtomLocationTW('PBL201504','',dse_sessionId);>撮合平台</a></li><li><a href=javascript:logPV('PBL201551');perbankAtomLocationTW('PBL201551','',dse_sessionId);>活动邀请</a></li><li><a href=javascript:logPV('PBL201552');perbankAtomLocationTW('PBL201552','',dse_sessionId);>资讯平台</a></li><li><a href=javascript:logPV('PBL201553');perbankAtomLocationTW('PBL201553','',dse_sessionId);>财富顾问</a></li></ul></div><div class="down-right-nemu-list"><h6>全球财富</h6><ul class='last'><li><a href=javascript:logPV('PBL201581');perbankAtomLocationTW('PBL201581','',dse_sessionId);>境外账户</a></li><li><a href=javascript:logPV('PBL201582');perbankAtomLocationTW('PBL201582','',dse_sessionId);>投资资讯</a></li></ul></div></div></div></li><li><h5><a href="javascript:perbankAtomLocationTW('PBL200204','false|PBL201600',dse_sessionId);">生活缴费.本地特色<span>></span></a></h5><div class="down-right-nemu"><div id='div_PBL201600' class="down-right-nemu-list"  style="width:756px;height:35px;background-color:#F7F7F7;display: none;font-size: 14px;"><div id='div_PBL201600_left'><ul style="color: #888889; margin-right: 20px;width: auto;margin-left: 20px; float: left;"><img src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/style/style_default/images/zjsy.png" style="margin-right: 5px;vertical-align: text-bottom;" />最近使用</ul></div></div><div class="down-right-nemu-box"><div class="down-right-nemu-list"><h6>生活服务</h6><ul class='last'><li><a href=javascript:logPV('PBL300101');perbankAtomLocationTW('PBL300101','',dse_sessionId);>e缴费</a></li><li><a href=javascript:logPV('PBL201611');perbankAtomLocationTW('PBL201611','',dse_sessionId);>委托代扣</a></li><li><a href=javascript:logPV('PBL201612');perbankAtomLocationTW('PBL201612','',dse_sessionId);>代缴学费</a></li><li><a href=javascript:logPV('PBL201621');perbankAtomLocationTW('PBL201621','',dse_sessionId);>银医服务</a></li><li><a href=javascript:logPV('PBL201622');perbankAtomLocationTW('PBL201622','',dse_sessionId);>公益捐款</a></li><li><a href=javascript:logPV('PBL201623');perbankAtomLocationTW('PBL201623','',dse_sessionId);>纳税 </a></li></ul></div><div class="down-right-nemu-list"><h6>活动大厅</h6><ul class='last'><li><a href=javascript:logPV('PBL20167001');perbankAtomLocationTW('PBL20167001','5',dse_sessionId);>热门活动</a></li><li><a href=javascript:logPV('PBL20167002');perbankAtomLocationTW('PBL20167002','6',dse_sessionId);>我的奖品</a></li></ul></div><div class="down-right-nemu-list"><h6>专属权益</h6><ul class='last'><li><a href=javascript:logPV('PBL201631');perbankAtomLocationTW('PBL201631','',dse_sessionId);>积分</a></li><li><a href=javascript:logPV('PBL201632');perbankAtomLocationTW('PBL201632','',dse_sessionId);>交易抽奖</a></li><li><a href=javascript:logPV('PBL201661');perbankAtomLocationTW('PBL201661','',dse_sessionId);>增值服务</a></li><li><a href=javascript:logPV('PBL201635');perbankAtomLocationTW('PBL201635','7',dse_sessionId);>优惠券</a></li></ul></div><div class="down-right-nemu-list"><h6>本地特色</h6><ul class='last'><li><a href=javascript:logPV('PBL20164001');perbankAtomLocationTW('PBL20164001','',dse_sessionId);>本地特色</a></li></ul></div></div></div></li>
                </ol>
            </div>
            </div>
        </div>
    </div>
    <ul class="menu-ul">
      <li><a href="javascript:logPV('PBL200202');perbankAtomLocationTW('PBL200202','',dse_sessionId);">首页</a></li>


      <li id="financial">
      	<a href="javascript:void(0);">&nbsp;财富广场</a>
      	<div class="down-menu">
        	<ol>
                <li  class=''><a href=javascript:logPV('PBL201097');perbankAtomLocationTW('PBL201097','',dse_sessionId);>贷款&nbsp;&nbsp;</a></li><li  class=''><a href=javascript:logPV('PBL201139');perbankAtomLocationTW('PBL201139','',dse_sessionId);>理财&nbsp;&nbsp;</a></li><li  class=''><a href=javascript:logPV('PBL200317');perbankAtomLocationTW('PBL200317','',dse_sessionId);>基金&nbsp;&nbsp;</a></li><li  class=''><a href=javascript:logPV('PBL200603');perbankAtomLocationTW('PBL200603','',dse_sessionId);>贵金属&nbsp;&nbsp;</a></li><li  class=''><a href=javascript:logPV('PBL201344');perbankAtomLocationTW('PBL201344','',dse_sessionId);>外汇&nbsp;&nbsp;</a></li><li  class=''><a href=javascript:logPV('PBL201370');perbankAtomLocationTW('PBL201370','',dse_sessionId);>账户商品&nbsp;&nbsp;</a></li>
            </ol>
        </div>
      </li>



      	<li><a href="javascript:logPV('PBL200203');perbankAtomLocationTW('PBL200203','',dse_sessionId);">惠生活</a></li>

      <li><a href="javascript:logPV('PBL201804');perbankAtomLocationTW('PBL201804','',dse_sessionId);">账户列表</a></li>
      <li><a href="javascript:logPV('PBL201802');perbankAtomLocationTW('PBL201802','',dse_sessionId);">安全</a></li>
      <li><a href="javascript:logPV('PBL201803');perbankAtomLocationTW('PBL201803','',dse_sessionId);">设置</a></li>
    </ul>
    <div class="E-bank ">
    <div class="E-bank-myBank" onclick="logPV('PBL201805');perbankAtomLocationTW('PBL201805','',dse_sessionId);" title="点击查看我的网银！">
    	<b class="user-img"></b><span>我的网银</span>
    </div>
    <div class="E-banl-down-nemu">
    	<ul>
    		<li onclick="logPV('PBL201700');perbankAtomLocationTW('PBL201804','',dse_sessionId);"><a href="javascript:void(0);"><span class="jrrl-bg"></span>金融日历</a></li>
        	<li onclick="logPV('PBL201804');perbankAtomLocationTW('PBL201804','',dse_sessionId);"><a href="javascript:void(0);"><span class="kabao-bg"></span>账户列表</a></li>
        	<li onclick="logPV('PBL201670');perbankAtomLocationTW('PBL201670','5',dse_sessionId);"><a href="javascript:void(0);"><span class="hall-bg"></span>活动大厅</a></li>
            <li onclick="logPV('PBL201720');perbankAtomLocationTW('PBL201802','',dse_sessionId);"><a href="javascript:void(0);"><span class="anquan-bg"></span>安全</a></li>
            <li onclick="logPV('PBL201724');perbankAtomLocationTW('PBL201803','',dse_sessionId);"><a href="javascript:void(0);"><span class="shezhi-bg"></span>设置</a></li>
        </ul>
    </div>
    </div>
  </div>
</div>

<div class="zuiai-block"  style="background-color:#F7F7F7">
  	<div class="zuiai-div">
				<div class="zuiai-icon" style="cursor:pointer;" onclick="showMyQuickFucDiv();">
					   <div class="zuiai-icon-bg" ></div>
					        <p>最爱</p>
					        <span>
					        </span>
			   </div>
			   <div class="zuiai-centent" >
					<ul class="zuiai-ul">
                        





<style>
/* .choose-zuiai-box{ height:370px;}
.choose-zuiai-box ul{ height:370px;}
.choose-zuiai-box ul li a{ display:block; height:64px; padding:0; margin:0;}
.choose-zuiai-box ul li a .pic-box{ height:40px;} */
.zuiai-ul li{ float:left; width:62px; height:40px; text-align:center; margin:0 4px;}
.zuiai-ul li a p{ padding-top:4px; font-size:12px; color:#888889;}
.pic-box {height:40px;background:url(${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/zuiai_add_v.png) center bottom no-repeat;}
.pic-box1 {height:40px;background:url(${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/zuiai_add_r.png) center bottom no-repeat;}
</style>

  <div id="commonUseTbl" class="zuiai-centent">
	<ul class="zuiai-ul">
        <li>ninnnini</li>
	</ul>
  </div>
<script src="${pageContext.request.contextPath}/icbc/newperbank/js/ajax/json2.js"></script>
<script src="${pageContext.request.contextPath}/icbc/newperbank/js/ajax/datastruct-ajax-eb.js"></script>
<script src="${pageContext.request.contextPath}/icbc/newperbank/js/perbank3/ie8indexOf.js;"></script>
<script type="text/javascript">
var commandname= new Array();
commandname[0]={'isfavourit':'1','locationno':'PBL201428','chname':'网点预约'};
commandname[1]={'isfavourit':'1','locationno':'PBL201433','chname':'申请借记卡'};
commandname[2]={'isfavourit':'1','locationno':'PBL201216','chname':'基金定投  '};
commandname[3]={'isfavourit':'1','locationno':'PBL300101','chname':'e缴费'};
commandname[4]={'isfavourit':'1','locationno':'PBL201021','chname':'定期存款'};
commandname[5]={'isfavourit':'1','locationno':'PBL201031','chname':'节节高'};
commandname[6]={'isfavourit':'1','locationno':'PBL201032','chname':'定活通'};
commandname[7]={'isfavourit':'1','locationno':'PBL201041','chname':'融e借'};
commandname[8]={'isfavourit':'1','locationno':'PBL201051','chname':'质押贷款'};
commandname[9]={'isfavourit':'1','locationno':'PBL201061','chname':'抵押贷款'};
commandname[10]={'isfavourit':'1','locationno':'PBL201071','chname':'存贷通'};
commandname[11]={'isfavourit':'1','locationno':'PBL201097','chname':'贷款'};
commandname[12]={'isfavourit':'1','locationno':'PBL201099','chname':'我的贷款'};
commandname[13]={'isfavourit':'1','locationno':'PBL200811','chname':'转账汇款'};
commandname[14]={'isfavourit':'1','locationno':'PBL200812','chname':'注册账户转账'};
commandname[15]={'isfavourit':'1','locationno':'PBL200821','chname':'跨境汇款'};
commandname[16]={'isfavourit':'1','locationno':'PBL200824','chname':'西联汇款解付'};
commandname[17]={'isfavourit':'1','locationno':'PBL100410','chname':'账户申请'};
commandname[18]={'isfavourit':'1','locationno':'PBL200603','chname':'贵金属'};
commandname[19]={'isfavourit':'1','locationno':'PBL200862','chname':'批量汇款'};
commandname[20]={'isfavourit':'1','locationno':'PBL200882','chname':'资金归集'};
commandname[21]={'isfavourit':'1','locationno':'PBL20164001','chname':'本地特色'};
commandname[22]={'isfavourit':'1','locationno':'PBL201503','chname':'私行专属理财'};
commandname[23]={'isfavourit':'1','locationno':'PBL201508','chname':'私行专属遴选'};
commandname[24]={'isfavourit':'1','locationno':'PBL201804','chname':'我的账户'};
commandname[25]={'isfavourit':'1','locationno':'PBL201311','chname':'账户贵金属'};
commandname[26]={'isfavourit':'1','locationno':'PBL201312','chname':'账户贵金属指数'};
commandname[27]={'isfavourit':'1','locationno':'PBL201321','chname':'账户能源'};
commandname[28]={'isfavourit':'1','locationno':'PBL201322','chname':'账户农产品 '};
commandname[29]={'isfavourit':'1','locationno':'PBL201323','chname':'账户基本金属'};
commandname[30]={'isfavourit':'1','locationno':'PBL20109001','chname':'个人住房贷款'};
commandname[31]={'isfavourit':'1','locationno':'PBL201331','chname':'积存金'};
commandname[32]={'isfavourit':'1','locationno':'PBL201332','chname':'实物贵金属'};
commandname[33]={'isfavourit':'1','locationno':'PBL201333','chname':'贵金属递延'};
commandname[34]={'isfavourit':'1','locationno':'PBL201337','chname':'品牌贵金属'};
commandname[35]={'isfavourit':'1','locationno':'PBL201341','chname':'外汇买卖'};
commandname[36]={'isfavourit':'1','locationno':'PBL201583','chname':'私行境外资讯'};
commandname[37]={'isfavourit':'1','locationno':'PBL201342','chname':'结售汇'};
commandname[38]={'isfavourit':'1','locationno':'PBL201343','chname':'账户外汇'};
commandname[39]={'isfavourit':'1','locationno':'PBL201344','chname':'外汇'};
commandname[40]={'isfavourit':'1','locationno':'PBL201345','chname':'账户外汇指数'};
commandname[41]={'isfavourit':'1','locationno':'PBL201121','chname':'记账式债券'};
commandname[42]={'isfavourit':'1','locationno':'PBL201123','chname':'储蓄国债'};
commandname[43]={'isfavourit':'1','locationno':'PBL201370','chname':'账户商品'};
commandname[44]={'isfavourit':'1','locationno':'PBL201139','chname':'理财'};
commandname[45]={'isfavourit':'1','locationno':'PBL750007','chname':'融e购'};
commandname[46]={'isfavourit':'1','locationno':'PBL202004','chname':'存管通'};
commandname[47]={'isfavourit':'1','locationno':'PBL202014','chname':'三方存管'};
commandname[48]={'isfavourit':'1','locationno':'PBL202015','chname':'银证转账'};
commandname[49]={'isfavourit':'1','locationno':'PBL202022','chname':'银期转账'};
commandname[50]={'isfavourit':'1','locationno':'PBL200901','chname':'商友结算套餐'};
commandname[51]={'isfavourit':'1','locationno':'PBL200902','chname':'普通结算套餐'};
commandname[52]={'isfavourit':'1','locationno':'PBL200911','chname':'收付款账单'};
commandname[53]={'isfavourit':'1','locationno':'PBL200912','chname':'AA收款'};
commandname[54]={'isfavourit':'1','locationno':'PBL200711','chname':'明细查询'};
commandname[55]={'isfavourit':'1','locationno':'PBL200714','chname':'电子回单'};
commandname[56]={'isfavourit':'1','locationno':'PBL200715','chname':'工资单'};
commandname[57]={'isfavourit':'1','locationno':'PBL200721','chname':'借记卡申请'};
commandname[58]={'isfavourit':'1','locationno':'PBL200722','chname':'信用卡申请'};
commandname[59]={'isfavourit':'1','locationno':'PBL200743','chname':'网银互联'};
commandname[60]={'isfavourit':'1','locationno':'PBL200745','chname':'工银e支付'};
commandname[61]={'isfavourit':'1','locationno':'PBL200511','chname':'保险'};
commandname[62]={'isfavourit':'1','locationno':'PBL200762','chname':'分期付款'};
commandname[63]={'isfavourit':'1','locationno':'PBL200763','chname':'定制分期'};
commandname[64]={'isfavourit':'1','locationno':'PBL200766','chname':'信用报告'};
commandname[65]={'isfavourit':'1','locationno':'PBL200769','chname':'信用卡启用'};
commandname[66]={'isfavourit':'1','locationno':'PBL200771','chname':'开户网点'};
commandname[67]={'isfavourit':'1','locationno':'PBL200773','chname':'挂失'};
commandname[68]={'isfavourit':'1','locationno':'PBL201621','chname':'银医服务'};
commandname[69]={'isfavourit':'1','locationno':'PBL201626','chname':'养老金'};
commandname[70]={'isfavourit':'1','locationno':'PBL200779','chname':'信用卡'};
commandname[71]={'isfavourit':'1','locationno':'PBL201631','chname':'积分'};
commandname[72]={'isfavourit':'1','locationno':'PBL200317','chname':'基金'};
commandname[73]={'isfavourit':'1','locationno':'PBL201411','chname':'余额变动提醒'};

try{
	var myfavServices='PBL201804|PBL200812|PBL200811|PBL200779|PBL201097|PBL300101|PBL201139|PBL200317|PBL200603|PBL200745|PBL20164001|PBL100410';
/*     var myfavSs = myfavServices.split('|');//顺序数组
    var serviceIds="";
    var serviceIdLs="";//临时数组
    var serviceIdStr=localMapList_CommandStr;
    if(serviceIdStr!=''){
		for(i=0;i<myfavSs.length;i++){
			if(serviceIdStr.indexOf(myfavSs[i])>-1){
				serviceIdLs=serviceIdLs+myfavSs[i]+"|";
			}
		}
		serviceIds= serviceIdStr.split('|');
		for(i=0;i<serviceIds.length;i++){
			if(serviceIdLs.indexOf(serviceIds[i])<0){
				serviceIdLs=serviceIdLs+serviceIds[i]+"|";
			}
		}
	var zhyw=serviceIdLs.substr(serviceIdLs.length-1,serviceIdLs.length);
	if(zhyw=="|"){
			serviceIdLs=serviceIdLs.substr(0,serviceIdLs.length-1);
	}
	} */

}catch(e){}



var CookieZ;
var fStr;
var mCommonFucStr;
var structCode ="";
	function commonFucStrVal(){
	     return mCommonFucStr;
	}
	function locationmapListVal(){
	     return loctionmapList;
	}

	function getLocationMap(locationno){
		for(var i=0;i<commandname.length;i++){
			var locationnotemp=commandname[i].locationno;
			if(locationnotemp==locationno){
				return commandname[i];
			}
		}
		return "";
	}

	function getCommand (){
		var data1=new Array();
		var index=0;
		for(var i=0;i<commandname.length;i++){
		if(commandname[i].isfavourit=='1'){
				data1[index]={'isfavourit':commandname[i].isfavourit,'locationno':commandname[i].locationno,'chname':commandname[i].chname};
				index = index + 1;
			}
		}
		return data1;
	}

	function showMyQuickFucDiv(){
		if(dse_sessionId==""||dse_sessionId==null){
			//alert("未登录"+dse_sessionId);
			perbankAtomLocationTW(serviceId,'','',true);
		}else{
          showDiv();
	 	// var sendParam = {};
		// sendParam["doFlag"]="0";
		// sendParam["SessionId"]=dse_sessionId;
        // sendParam["tranCode"]="A00491";
		// EBDataStruct.sendAjax({
	    	// 					data: sendParam,
	    	// 					dataType: "json",
	    	// 					url: "${pageContext.request.contextPath}/AsynGetDataServlet",
	    	// 					failCallBack: function(result){perbankAtomLocationTW('PBL201700','','',true); },
	    	// 					successCallBack: function(kc){showDiv();},
	    	// 					isDisplay: false,
	    	// 					displayArea: "pselected"
	    	// 				});
		}




	}
	function showDiv(){
			// add by lexy
			queryCommFuc(dse_sessionId,'0','');
			var commList = getCommand();
			//alert("loctionmapList====" + commList);
			//定义弹出的信息为页面的某一个元素
			//注入数据
			setTimeout("darwLi()",1500);
			setTimeout("showPicture()",1000);
	}
	function showPicture(){
		 /* parent.jQuery.blockUI({message: jQuery('#myQuickFucDiv'),
				css: {
					top:'10%',
					left:'30%',
	             width:'55%',
	             height:'75%'
	     	}
	});
	if(/MSIE 9/i.test(navigator.appVersion)||/MSIE 8/i.test(navigator.appVersion)){
		var winHeight = $(window).height();
		var h = winHeight * 0.72;
		h = Math.round(h) - 4;
		jQuery("#quickfuc_float_jsp").height(h);
	}
	if((/Trident\/7\./).test(navigator.appVersion)){
		var winHeight = $(window).height();
		var h = winHeight * 0.72;
		h = Math.round(h) - 4;
		jQuery("#quickfuc_float_jsp").height(h);
	} */
	//mac 电脑显示太大！不能显示全！

	$(".zuiai-fix-bg1").show();


	}
	/**
	关闭登录
	**/
	/* function hideMyQuickFucDiv(){
		//关闭弹出层
	     parent.jQuery.unblockUI();
	} */
</script>

<!-- <div id="myQuickFucDiv" style="display: none;">
    <div id="quickfuc_float_x_id" class="icbc_more" style="width:98%;height:25px;cursor: auto;" align="right">
        <a href="javascript:WanCheng();" style="background-color:#CC0033;"><span id="" style="font-size:15px;color: white;">完成</span></a>
        <a href="javascript:hideMyQuickFucDiv();" style="background-color:gray;"><span id=""  style="font-size:15px;color: white;">关闭</span></a>
    </div>
	<div id="quickfuc_float_jsp_id">   -->
			<!-- 	<iframe marginWidth="0" id="myQuickFucDiv"
					src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/quickFuc/myQuickFuc.jsp"
					style="width: 100%;height: 100%;border:0; display: none;">
				</iframe>  -->
<!-- 	</div>

</div> -->

<script>
/* function WanCheng(){
	quickfuc_float_jsp.WanCheng();
} */
 function showLogonDiv2(locationId){
	perbankAtomLocationTW(locationId,'',dse_sessionId);
	//埋点
	addPvValue(['pvModelElementId','favouriteLink']);//
	addPvValue(['serviceid',locationId]);//记录原子服务id
	try{ar_main();}catch(e){}
	addPvValue(['pvModelElementId','']);//清空
	addPvValue(['serviceid','']);//清空

}
/*
actionType 0查询 1保存
*/
function queryCommFuc(sessionId,actionType,commfucInput){
	var sendParam1 = {};
	sendParam1["SessionId"]=sessionId;
	sendParam1["actionType"]=actionType;
	if(actionType=='1'){
		sendParam1["commfucInput"]=commfucInput;
		setCookie("cookieCy","",-1);
		setCookie("cookieCy",commfucInput,7);
	}
	sendParam1["tranCode"]="A00491";
	EBDataStruct.sendAjax({
    						data: sendParam1,
    						dataType: "json",
    						url: "${pageContext.request.contextPath}/AsynGetDataServlet",
    						failCallBack: function(result){commFucError(result);},
    						successCallBack: function(kc){commFucSuccsed(kc);},
    						isDisplay: false,
    						displayArea: "pselected"
    					});
}
function setCookie(name,value,seconds){
	/* if(value==""){
		parent.xsqb1();
	}else{
		parent.xsqb2();
	} */
	var value1=value.replace(/\|/g,'lis');
	seconds=seconds||0;
	var expires="";
	if(seconds!=0){
	var date =new Date();
	date.setTime(date.getTime()+(seconds*24*60*60*1000));
	}
	document.cookie=name+"="+escape(value1)+";expires="+date.toGMTString();
	//path=/";
}

function commFucError(result){
	//alert('error');
	drawTable('');
}

function commFucSuccsed(KColl){
	//alert('success');

	var returnCode=KColl.getValueAt("returnCode");
	var commonFucStr=KColl.getValueAt("commonFucStr");
//	alert("commonFucStr===" + commonFucStr);
	mCommonFucStr = commonFucStr;

	if(returnCode=="0"){
		if(commonFucStr=='0'){
			//alert('未查询，不显示常用功能');
			drawTable(commonFucStr);
			setCookie("cookieCy","",-1);
		} else if(commonFucStr=='1'){
			/* parent.xsqb(); */
			//alert('已经查询，用户将常用功能清空，只显示加号按钮');
			drawTable('');
			setCookie("cookieCy","",-1);
		} else if(commonFucStr=='2'){
			//alert('已经查询，用户未设置常用功能，显示内管维护的功能');、
			drawTable(myfavServices);
			setCookie("cookieCy","",-1);
			//drawTable(localMapList_CommandStr);
			//drawTable(fStr);
			//alert(fStr);
		}else{
			//alert('已经查询，用户设置了常用功能，显示用户设置的功能='+commonFucStr);
			//alert(commonFucStr);
			drawTable(commonFucStr);
			setCookie("cookieCy","",-1);
			setCookie("cookieCy",commonFucStr,7);
		}

	}else{
		drawTable('');
	}
}

function drawTable(serviceIdStr){
    serviceIdStr='20170108|20130033';
	$('#commonUseTbl').find('ul').html('');
	var html_head = '';
	var html_foot = '';
	var html_content = '';
	var curMap;
	var tjortz="添加";//添加或调整
	try{
	serviceIds=serviceIdStr.split('|');
	}catch(e){}
    serviceIds=['PBL201804','PBL200812','PBL200811','PBL200779','PBL201097','PBL300101','PBL201139','PBL200317','PBL200603','PBL200745','PBL20164001','PBL100401','PBL200603'];
	if(CookieZ!=null&&CookieZ!=""){
	//alert("有CookieZ===="+CookieZ);
		if(serviceIdStr!=''){
			 //serviceIds = serviceIdStr.split('|');
			 var cokz;
			 if("lis".indexOf(CookieZ)){
		 	  cokz=CookieZ.split("lis");
			 }else{
			 cokz=serviceIds;
			 }
			  for(i=0;i<cokz.length;i++){
			  	if(cokz.length>=12){
			  		tjortz="调整";
			  	}else{
			  		tjortz="添加";
			  	}
			  		//if(CookieZ.indexOf(serviceIds[i])>-1){
			  			try{
						curMap = getLocationMap(cokz[i]);
						var chname=$.trim(curMap.chname);
						if(chname!=null&&chname!=""&&typeof chname!= "undefined"){
						html_content = html_content + '<li onclick="showLogonDiv2(\''+cokz[i]+'\');"  onmouseenter="tj(\''+cokz[i]+'\')" onmouseleave="th(\''+cokz[i]+'\')" >';
						html_content = html_content + '<a class="active" style="cursor:pointer;" href="#"><img id="'+cokz[i]+'"  src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/'+cokz[i]+'_r.png" />';
						if(chname.length<=5){
							chname="<p  id='"+cokz[i]+"r' >"+chname+"</p>";
						}else{
							var nameq="";
							var nameh="";
							if(chname.length==7||chname.length==8||chname.length==6){
							 	nameq=chname.substring(0,4);
							 	nameh=chname.substring(4);
								chname="<p  id='"+cokz[i]+"r'>"+nameq+"</p>"+"<p style='padding-top:0px;' id='"+cokz[i]+"n'>"+nameh+"</p>";
							}else{
								chname="<p  id='"+cokz[i]+"r'>"+chname+"</p>";
							}
						}
						html_content = html_content +chname+ '</a></li>';
						}
			  			}
			  			catch(e){}
					//}
				}
				html_content = html_content + '<li onclick="showMyQuickFucDiv(); ">';
				html_content = html_content + '<a class="active"  style="cursor:pointer;" href="#"><img id="tj1" style="margin-top:7px;margin-bottom:7px;" onmouseenter="tj1(this.id)" onmouseleave="th1(this.id)" src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/zuiai_add_r.png" />';
				html_content = html_content + '<p>'+tjortz+'</p></a>';
				html_content = html_content + '</li>';
		}
	}else{
	//alert("m有cookie");
		//alert("serviceIdStr===" + serviceIdStr);
		if(serviceIdStr!=''){
			// serviceIds = serviceIdStr.split('|');
			/*  alert(serviceIds);
			 alert("serviceIds.length===" + serviceIds.length); */
			 if(serviceIds.length>=12){
			  		tjortz="调整";
			  	}else{
			  		tjortz="添加";
			  	}
			 if(serviceIds.length>11){
				for(i=0;i<12;i++){
					try{
					curMap = getLocationMap(serviceIds[i]);
					var chname=$.trim(curMap.chname);
					if(chname!=null&&chname!=""&&typeof chname!= "undefined"){
					html_content = html_content + '<li onclick="showLogonDiv2(\''+serviceIds[i]+'\');"  onmouseenter="tj(\''+serviceIds[i]+'\')" onmouseleave="th(\''+serviceIds[i]+'\')" >';
					html_content = html_content + '<a class="active"  style="cursor:pointer;" href="#"><img id="'+serviceIds[i]+'"   src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/'+serviceIds[i]+'_r.png" />';
					if(chname.length<=5){
						chname="<p  id='"+serviceIds[i]+"r'>"+chname+"</p>";
					}else{
						var nameq="";
						var nameh="";
						if(chname.length==7||chname.length==8||chname.length==6){
						 	nameq=chname.substring(0,4);
						 	nameh=chname.substring(4);
							chname="<p  id='"+serviceIds[i]+"r'>"+nameq+"</p>"+"<p style='padding-top:0px;' id='"+serviceIds[i]+"n'>"+nameh+"</p>";
						}else{
							chname="<p  id='"+serviceIds[i]+"r'>"+chname+"</p>";
						}
					}
					html_content = html_content +chname+ '</a></li>';
					}

					}catch(e){
					}
				}
			 }else{
			 for(i=0;i<serviceIds.length;i++){
			 		try{
					curMap = getLocationMap(serviceIds[i]);
					var chname=$.trim(curMap.chname);
					if(chname!=null&&chname!=""&&typeof chname!= "undefined"){
					html_content = html_content + '<li onclick="showLogonDiv2(\''+serviceIds[i]+'\');"  onmouseenter="tj(\''+serviceIds[i]+'\')" onmouseleave="th(\''+serviceIds[i]+'\')" >';
					html_content = html_content + '<a class="active"   style="cursor:pointer;" href="#"><img id="'+serviceIds[i]+'"   src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/'+serviceIds[i]+'_r.png" />';
					if(chname.length<=5){
						chname="<p  id='"+serviceIds[i]+"r'>"+chname+"</p>";
					}else{
						var nameq="";
						var nameh="";
						if(chname.length==7||chname.length==8||chname.length==6){
						 	nameq=chname.substring(0,4);
						 	nameh=chname.substring(4);
							chname="<p  id='"+serviceIds[i]+"r'>"+nameq+"</p>"+"<p style='padding-top:0px;' id='"+serviceIds[i]+"n'>"+nameh+"</p>";
						}else{
							chname="<p  id='"+serviceIds[i]+"r'>"+chname+"</p>";
						}
					}
					html_content = html_content +chname+ '</div></a></li>';
					}
			 		}catch(e){}
				}
			 }
		 			html_content = html_content + '<li onclick="showMyQuickFucDiv(); ">';
				html_content = html_content + '<a class="active"  style="cursor:pointer;" href="#"><img id="tj1" style="margin-top:7px;margin-bottom:7px;" onmouseenter="tj1(this.id)" onmouseleave="th1(this.id)" src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/zuiai_add_r.png" />';
				html_content = html_content + '<p>'+tjortz+'</p></a>';
				html_content = html_content + '</li>';


		}else{
	 			html_content = html_content + '<li onclick="showMyQuickFucDiv(); ">';
				html_content = html_content + '<a class="active"  style="cursor:pointer;" href="#"><img id="tj1" style="margin-top:7px;margin-bottom:7px;" onmouseenter="tj1(this.id)" onmouseleave="th1(this.id)" src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/zuiai_add_r.png" />';
				html_content = html_content + '<p>'+tjortz+'</p></a>';
				html_content = html_content + '</li>';
		}
	html_content = html_head + html_content + html_foot;
}
	jQuery("#commonUseTbl").find('ul').html(html_content);
}
try{
	//alert("try");
	if(dse_sessionId!=''){
				//alert("走这里");
				queryCommFuc(dse_sessionId,'0','');
	}else{
		var haveCookie=false;
		var arrStr =document.cookie;
		if(arrStr.indexOf("cookieCy")>-1){
				haveCookie=true;
		}
		if(haveCookie){
			var arrStr1 =document.cookie.split(";");
			for(var i=0;i<arrStr1.length;i++ ){
				var temp = arrStr1[i].split("=");
				if($.trim(temp[0])=="cookieCy"){
					CookieZ=temp[1];
			}
		}
			drawTable(myfavServices);
		}else{
			drawTable(myfavServices);
		}
	}

}catch(e){}
 function tj(id){
document.getElementById(id).src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/"+id+"_v.png"
}
function th(id){
document.getElementById(id).src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/"+id+"_r.png";

}
function tj1(id){
document.getElementById(id).src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/zuiai_add_v.png";
}
function th1(id){
document.getElementById(id).src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/zuiai_add_r.png";
//document.getElementById(id).addClass("pic-box1");
}
</script>

					</ul>
    			</div>
	  </div>
</div>


<script src="${pageContext.request.contextPath}/icbc/newperbank/js/perbank3/common.js?ver=2017122122"></script>
<script src="
${pageContext.request.contextPath}/icbc/newperbank/js/perbank3/jquery.menu-aim.mini.js?ver=2017122122"></script>
<script src="
${pageContext.request.contextPath}/icbc/newperbank/js/perbank3/ie8indexOf.js?ver=2017122122"></script>

<style>
/*<最爱加号弹窗*/
.zuiai-fix-bg1{ width:100%; height:100%; background:url(${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/bg-hui.png) repeat; position:fixed; top:0; left:0; z-index:1000; display:none;}
.zuiai-fix-bg1 .zuiai-fix-box1{ width:920px;  background-color:#f2f2f2; height:540px; position:absolute; left:50%; top:51%; margin-left:-460px; margin-top:-280px;}
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-top1{ background-color:#f7f7f7; height:42px; line-height:42px; position:relative;}
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-top1 .complete-btn1{ position:absolute; top:10px; right:24px; width:60px; height:24px; line-height:24px; text-align:center; font-size:14px; color:#ffffff; background-color:#FF7878; border-radius:3px; cursor:pointer;}
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-top1 h6>i{ position:absolute; left:26px; top:0; line-height:42px; height:42px; font-size:16px; color:#3e3a39;}
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-top1>h6{  line-height:42px; font-size:16px; color:#fff;}
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-body1 .zuiai-fix-item2{ padding-top:24px;}
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-body1 .zuiai-fix-item1{ padding-top:30px;}
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-body1 .zuiai-fix-item1.bg-f{ height:136px;}
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-body1 .zuiai-fix-item1 .uiai-fix-item-other-height{ height:312px; }
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-body1 .zuiai-fix-item1 .uiai-fix-item-other-height1{ height:312px; overflow:auto;}
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-body1 .zuiai-fix-item1>h6{ font-size:14px; color:#3e3a39; padding-left:26px;}
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-body1 .zuiai-fix-item1 .uiai-fix-item-ul{margin-top:18px;}
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-body1 .zuiai-fix-item1 .uiai-fix-item-ul li{ float:left; width:60px; height:75px; margin-left:14px; cursor:pointer; text-align:center;}
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-body1 .zuiai-fix-item1 .uiai-fix-item-ul li>a{ display:block; width:100%; height:100%; position:relative;}
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-body1 .zuiai-fix-item1 .uiai-fix-item-ul li>a .pic-box1>span{ display:block; width:100%; height:100%;}
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-body1 .zuiai-fix-item1 .uiai-fix-item-ul.uiai-fix-item-other-ul li{ margin-bottom:18px;}
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-body1 .zuiai-fix-item1 .uiai-fix-item-ul li>a .fix-b{ width:20px; height:20px; position:absolute; top:-10px; right:-10px; }
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-body1 .zuiai-fix-item1 .uiai-fix-item-ul li>a .fix-b.on{ background:url(${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/zuiai-fix-on.png) center center no-repeat;}
.zuiai-fix-bg1 .zuiai-fix-box1 .zuiai-fix-body1 .zuiai-fix-item1 .uiai-fix-item-ul li>a .fix-b{ background:url(${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/zuiai-fix-nor.png) center center no-repeat;}
.both{ clear:both;}
.closeLayer{
   cursor: hand;
   z-index:99;
   position:absolute;
   margin-left:-10px;
   height:23px;
   width: 23px;
   /* display:none; */
}
.img_square{
    height:40px;
    width: 40px;
}
.img_square1{
    height:55px;
    width: 55px;
    line-height:55px;
    vertical-align:middle;
}

.haveimg{
    height:55px;
    width: 55px;
	background-image:url(${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/landi.png)
}
.search-box1 {
    border-radius: 8px;
    margin-top: 6px;
    background: url(${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/search-bg.png) 0 0 no-repeat;
    background-position: center center;
}
.search-box1 > b {
    position: absolute;
    top: 10px;
    width: 20px;
    height: 21px;
    background: url(${pageContext.request.contextPath}/ebdpui/pc4promote/style/default/conditionchoose/manage-icon.png) center center no-repeat;
    cursor: pointer;
}
.place-holder{
		position: absolute;
		/* top: 50%; */
		top: 0px;
		/* margin: -10px 0 0 4px; */
		color:#666;
		cursor: text;
		font-size:13px;
		z-index:2;
		margin-left:400px;

	}
.a1{ text-align:left;  line-height:42px; font-size:14px; color:#3e3a39;}
.a2{  padding-left:19px; width:30px; float:left;line-height:42px; font-size:40px; color:#FF7878;}
.a3{ font-size:14px;width:570px;float:left;}
.a8{ font-size:14px;}
.a4{  left:19px;  line-height:42px; font-size:40px; color:#FF7878; vertical-align: middle;}
.a5{  left:35px;line-height:42px; font-size:14px; color:#3e3a39; vertical-align: middle;}
.a6{ position:static;  font-size:14px; color:#3e3a39; vertical-align: middle;}
.a7{ float:left; width:300px;line-height:42px; font-size:14px; color:#3e3a39;}
.a9{ font-size:14px;}
.a10{ font-size:14px;text-align:center;}
.complete-btn2{ position:absolute;  right:24px; width:60px; height:24px; line-height:24px; text-align:center; font-size:14px; color:#ffffff; background-color:#FF7878; border-radius:3px; cursor:pointer;}

</style>
<!--fix-box end-->

<!--最爱加号弹窗-->
<div class="zuiai-fix-bg1">
	<div class="zuiai-fix-box1">
        <div class="zuiai-fix-top1">
        <h6>
        <i>管理我的最爱</i>
        <span style="width: 100%;">
        <div class="search-box1">
        <span class="place-holder" onclick="sousuob3()" id="cpgjz" >产品关键字</span>
        <input id="sousuo" type="text"  onblur="sousuob1()" style="margin-left:380px;" onfocus="sousuob2()"/><b onclick="sousuob()"></b>
        </div>
        </span>
        <a class="complete-btn1" href="javascript:yc();">完 成</a>
        </h6>
        </div>
        <div class="zuiai-fix-body1  bg-f">
        	<div class="zuiai-fix-item1 zuiai-fix-item2" id="ower" style="padding-top: 0px; height:130px;">
	        	<div class="a1">
	            		<div class="a2">·</div><div class="a7">已选功能</div>
	            	 	<div class="a3">您已选择<span id="yxcy" class="a8">0</span>/<span id="qbcy" class="a8">12</span>个功能</div>
	        	</div>
	                <ul class="uiai-fix-item-ul" style="height:130px;">
	                </ul>
           		 <div class="a1" >
            		<div class="a2" style="display:none;" id="qtgn1" >·</div><div id="qtgn" class="a7"></div>
            		<div class="a9"><a id="fanhui" style="display: none;  " class="complete-btn2" href="javascript:sousuof();">取消</a></div>
	        	</div>
            </div>

            <div class="zuiai-fix-item1 " id="libiao">
	            <div class=""  style="width: 100%;height: 1px ;background-color: #bbbcbc;" >
	            </div>
                <div class="uiai-fix-item-other-height1" id="all">
                <!-- <div class="a6" ><span class="a2" >·</span>  <span class="a5">大家都再用 </span>
	                <ul class="uiai-fix-item-ul uiai-fix-item-other-ul" id="zuiaiUL6">
	                </ul>
               </div> -->
                <div class="a6" ><span class="a2" >·</span>  <span class="a5">银行卡·账户 </span>
	                <ul class="uiai-fix-item-ul uiai-fix-item-other-ul" id="zuiaiUL0">
	                </ul>
               </div>
                <div class="a6" ><span class="a2" >·</span>  <span class="a5">信用卡 </span>
	                <ul class="uiai-fix-item-ul uiai-fix-item-other-ul" id="zuiaiUL1">
	                </ul>
                </div>
                <div class="a6" ><span class="a2" >·</span>  <span class="a5">投资理财 </span>
	                <ul class="uiai-fix-item-ul uiai-fix-item-other-ul" id="zuiaiUL2">
	                </ul>
                </div>
                <div class="a6" ><span class="a2" >·</span>  <span class="a5">存款·贷款</span>
	                <ul class="uiai-fix-item-ul uiai-fix-item-other-ul" id="zuiaiUL3">
	                </ul>
                </div>
                <div class="a6" ><span class="a2" >·</span>  <span class="a5">汇款 </span>
	                <ul class="uiai-fix-item-ul uiai-fix-item-other-ul" id="zuiaiUL4">
	                </ul>
               </div>
                <div class="a6" ><span class="a2" >·</span>  <span class="a5">其他 </span>
	                <ul class="uiai-fix-item-ul uiai-fix-item-other-ul" id="zuiaiUL5">
	                </ul>
                 </div>

                </div>
                <div class="uiai-fix-item-other-height" id="oldall">
                <ul class="uiai-fix-item-ul uiai-fix-item-other-ul" >
                </ul>
                </div>
            </div>

        </div>
    </div>
</div>

<script type="text/javascript">
var myquickAll7="";
function darwLi(){
	$("#oldall").hide();
	$("#all").show();
var myquickAll1="PBL201804|PBL200711|PBL200715|PBL200773|PBL200771|PBL200714|PBL200721|PBL200743|PBL100410";
var myquickAll2="PBL200779|PBL200762|PBL200722|PBL200763|PBL200769|PBL200766";
var myquickAll3="PBL201139|PBL200317|PBL201216|PBL200511|PBL201121|PBL201123|PBL200603|PBL201311|PBL201312|PBL201333|PBL201331|PBL201332|PBL201337|PBL201370|PBL201321|PBL201322|PBL201323|PBL201344|PBL201341|PBL201342|PBL201343|PBL201345|PBL202004|PBL202014|PBL202015|PBL202022|PBL201503|PBL201508|PBL201583";
var myquickAll4="PBL201021|PBL201031|PBL201032|PBL201099|PBL201097|PBL20109001|PBL201041|PBL201051|PBL201061|PBL201071";
var myquickAll5="PBL200812|PBL200811|PBL200862|PBL200821|PBL200824|PBL200882|PBL200911|PBL200912|PBL200901|PBL200902|PBL200745";
var myquickAll6="PBL201621|PBL201626|PBL201631|PBL201411|PBL201428|PBL20164001|PBL300101|PBL750007";
//大家都在用

 var commonFucStr = parent.commonFucStrVal(); // 常用功能
 var favStr = parent.loctionmapList.getFavouriteStr(); // 取“其他应用”图标
	if(commonFucStr=='0'||commonFucStr==null||commonFucStr==''){
		//alert('未查询，不显示常用功能。');
		arr0 = new Array();
		arr =  new Array();
		return false;
	} else if(commonFucStr=='1'){
		yxcy=0;
		arr0 = new Array();
		arr = favStr.split("|");
	} else if(commonFucStr=='2'){
		//alert('已经查询，用户未设置常用功能，显示内管维护的功能');
		arr0 = myfavServices.split("|");
		arr = getUnFavourite(arr0, favStr.split("|"));
	} else{
		//alert('已经查询，用户设置了常用功能，显示用户设置的功能');
		arr0 = commonFucStr.split("|");
		arr = getUnFavourite(arr0, favStr.split("|"));
	}
	yxcy=arr0.length;
	qbcy=arr.length;
	var newarr0="";

	$('#yxcy').html(yxcy);
	$('#ower').find('ul').html('');
	$('#all').find('ul').html('');
	//加载“其他应用”图标
	var arr1 =getUnFavourite(arr0, myquickAll1.split("|"));
	var arr2 =getUnFavourite(arr0, myquickAll2.split("|"));
	var arr3 =getUnFavourite(arr0, myquickAll3.split("|"));
	var arr4 =getUnFavourite(arr0, myquickAll4.split("|"));
	var arr5 =getUnFavourite(arr0, myquickAll5.split("|"));
	var arr6 =getUnFavourite(arr0, myquickAll6.split("|"));
	var arr7 =myquickAll7.split("|");
	var arr8="";
	var pblid="";
	var pblN=0;
	$.each(arr7, function (i, data) {
	  if(favStr.indexOf(data)>-1&&!arr8.indexOf(data)>-1){
	  	 pblN=pblN+1;
	  	 if(pblN>24){
	  	 	return;
	  	 }
	  	 if(arr8==""){
	  	 arr8=data;
	  	 }else{
	 	 arr8=arr8+"|"+data;
	  	 }
	  }
	});
	myquickAll7=arr8;
	arr7=getUnFavourite(arr0, myquickAll7.split("|"));
		if (arr1!=undefined && arr1!= null && arr1!=''){
			xh(arr1,'0');
			$('#zuiaiUL0').append('<div id="both" class="both"></div>');
		}
		if (arr2!=undefined && arr2!= null && arr2!=''){
			xh(arr2,'1');
			$('#zuiaiUL1').append('<div id="both1" class="both"></div>');
		}
		if (arr3!=undefined && arr3!= null && arr3!=''){
			xh(arr3,'2');
			$('#zuiaiUL2').append('<div id="both2" class="both"></div>');
		}
		if (arr4!=undefined && arr4!= null && arr4!=''){
			xh(arr4,'3');
			$('#zuiaiUL3').append('<div id="both3" class="both"></div>');
		}
		if (arr5!=undefined && arr5!= null && arr5!=''){
			xh(arr5,'4');
			$('#zuiaiUL4').append('<div id="both4" class="both"></div>');
		}
		if (arr6!=undefined && arr6!= null && arr6!=''){
			xh(arr6,'5');
			$('#zuiaiUL5').append('<div id="both5" class="both"></div>');
		}
		/* if (arr7!=undefined && arr7!= null && arr7!=''){
			xh1(arr7,'6');
			$('#zuiaiUL6').append('<div id="both6" class="both"></div>');
		} */
		//加载“已选应用”图标
		if (arr0!=undefined && arr0!= null && arr0!=''){
			$.each(arr0, function (i, data) {
			   // curMap = parent.loctionmapList.getLocationMap(data);
			   curMap = parent.getLocationMap(data);
			    var dataName = curMap.chname;
			    if(dataName!=""&&dataName!=null){
				var img_data = '<a onmouseenter="tjyx(\''+data+'\')" onmouseleave="scyx(\''+data+'\')"><b onclick="del(\''+data+'o\');" id="'+data+'a"  ></b><div id="'+data+'div" class="img_square1"><span><img _t="img" name="'+data+'" id="'+data+'img"  class="img_square"  alt="'+dataName+'" src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/'+data+'_r.png"/></span></div></a>';
				var newdataname=$.trim(dataName);
				var IdName=$.trim(dataName);
						if(newdataname.length<=4){
							newdataname="<p style='font-size:12px; color:#888889; margin-top:-20px;'>"+newdataname+"</p>";
						}else{
							var nameq="";
							var nameh="";
							if(newdataname.length==7||newdataname.length==8){
							 	nameq=newdataname.substring(0,4);
							 	nameh=newdataname.substring(4);
								newdataname="<p style='font-size:12px; color:#888889; margin-top:-20px;'>"+nameq+"</p>"+"<p style='font-size:12px; color:#888889; margin-top:2px;'>"+nameh+"</p>";
							}else{
							 	nameq=newdataname.substring(0,3);
								nameh=newdataname.substring(3);
								newdataname="<p style='font-size:12px; color:#888889; margin-top:-20px;'>"+nameq+"</p>"+"<p style='font-size:12px; color:#888889; margin-top:2px;'>"+nameh+"</p>";
							}
						}
				var pHtml = '<li id="'+data+'o" name='+IdName+'>'+img_data+ '<span id="img_name" class="imgnameCss">'+newdataname+'</span></li>';

				$('#ower').find('ul').append(pHtml);
			    }
			});
			$('#ower').find('ul').append('<div  id="both9" class="both"></div>');
		} else{
		        var pHtml = '<div><font style="font-size: 14px"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;您尚未设置功能，可以点击具体功能的加号进行添加。</font></div>';
				$('#ower').find('ul').append(pHtml+'<div id="both9" class="both"></div>');
		}
}


var yxcy=0;
var qbcy=0;
function yc(){
   $("#sousuo").val("");
	WanCheng();
   $(".zuiai-fix-bg1").hide();
}
// 删除
function del(data) {
		var myquickAll1="PBL201804|PBL200711|PBL200715|PBL200773|PBL200771|PBL200714|PBL200721|PBL200743|PBL100410";
		var myquickAll2="PBL200779|PBL200762|PBL200722|PBL200763|PBL200769|PBL200766";
		var myquickAll3="PBL201139|PBL200317|PBL201216|PBL200511|PBL201121|PBL201123|PBL200603|PBL201311|PBL201312|PBL201333|PBL201331|PBL201332|PBL201337|PBL201370|PBL201321|PBL201322|PBL201323|PBL201344|PBL201341|PBL201342|PBL201343|PBL201345|PBL202004|PBL202014|PBL202015|PBL202022|PBL201503|PBL201508|PBL201583";
		var myquickAll4="PBL201021|PBL201031|PBL201032|PBL201099|PBL201097|PBL20109001|PBL201041|PBL201051|PBL201061|PBL201071";
		var myquickAll5="PBL200812|PBL200811|PBL200862|PBL200821|PBL200824|PBL200882|PBL200911|PBL200912|PBL200901|PBL200902|PBL200745";
		var myquickAll6="PBL201621|PBL201626|PBL201631|PBL201411|PBL201428|PBL20164001|PBL300101|PBL750007";
		var newdata=data.replace('o','');
		if(newdata.indexOf("qi")>-1){
		newdata=newdata.replace('qi','');
		document.getElementById(newdata+"imgqi").className="img_square";
		document.getElementById(newdata+"divqi").className="img_square1";
		document.getElementById(newdata+"aqi").className="";
		}else{
        document.getElementById(newdata+"img").className="img_square";
        document.getElementById(newdata+"div").className="img_square1";
		document.getElementById(newdata+"a").className="";
		}
		var jDom = $("#"+data); // 当前元素
		var owerHtml = ($("#"+data).html());
		owerHtml = owerHtml.replace('tjyx','tjqt').replace('scyx','scqt').replace('del','add');
		jDom.remove(); //删除

		if(document.getElementById("all").style.display!="none"){
		/* 	if(myquickAll7.indexOf(newdata)>-1){
				if(owerHtml.indexOf("qi")<=0){
					owerHtml=owerHtml.replace('tjqt(\''+newdata+'\')','tjqt(\''+newdata+'qi\')').replace('scqt(\''+newdata+'\')','scqt(\''+newdata+'qi\')').replace(''+newdata+'img',''+newdata+'imgqi').replace(''+newdata+'div',''+newdata+'divqi').replace(''+newdata+'a',''+newdata+'aqi').replace(''+newdata+'o',''+newdata+'oqi');
					$('#zuiaiUL6').append('<li id="'+data+'qi">'+owerHtml+'</li>');
				}else{
				$('#zuiaiUL6').append('<li id="'+data+'">'+owerHtml+'</li>');
				}
			$('#both6').remove();
			$('#zuiaiUL6').append('<div id="both6" class="both"></div>');
				owerHtml=owerHtml.replace('qi','').replace('qi','').replace('qi','').replace('qi','').replace('qi','').replace('qi','');
			} */
			if(myquickAll1.indexOf(newdata)>-1){
			$('#zuiaiUL0').append('<li id="'+data.replace('qi','')+'" >'+owerHtml+'</li>');
			$('#both').remove();
			$('#zuiaiUL0').append('<div id="both" class="both"></div>');
			}
			else if(myquickAll2.indexOf(newdata)>-1){
			$('#zuiaiUL1').append('<li id="'+data.replace('qi','')+'" >'+owerHtml+'</li>');
			$('#both1').remove();
			$('#zuiaiUL1').append('<div id="both1" class="both"></div>');
			}
			else if(myquickAll3.indexOf(newdata)>-1){
			$('#zuiaiUL2').append('<li id="'+data.replace('qi','')+'" >'+owerHtml+'</li>');
			$('#both2').remove();
			$('#zuiaiUL2').append('<div id="both2" class="both"></div>');
			}
			else if(myquickAll4.indexOf(newdata)>-1){
			$('#zuiaiUL3').append('<li id="'+data.replace('qi','')+'" >'+owerHtml+'</li>');
			$('#both3').remove();
			$('#zuiaiUL3').append('<div id="both3" class="both"></div>');
			}
			else if(myquickAll5.indexOf(newdata)>-1){
			$('#zuiaiUL4').append('<li id="'+data.replace('qi','')+'" >'+owerHtml+'</li>');
			$('#both4').remove();
			$('#zuiaiUL4').append('<div id="both4" class="both"></div>');
			}
			else if(myquickAll6.indexOf(newdata)>-1){
			$('#zuiaiUL5').append('<li id="'+data.replace('qi','')+'" >'+owerHtml+'</li>');
			$('#both5').remove();
			$('#zuiaiUL5').append('<div id="both5" class="both"></div>');
			}
		}if(document.getElementById("oldall").style.display!="none"){
			var idName=$("#sousuo").val();
			idName=$.trim(idName);
			var curMap1 = parent.getLocationMap(newdata);
			var dataName = curMap1.chname;
			if(dataName.indexOf(idName)>-1){
				$('#both8').remove();
				$('#oldall').find('ul').append('<li id="'+data+'" >'+owerHtml+'</li><div id="both8" class="both"></div>');

			}
		}

		var owerSpanNum =  $('#ower').find('li').length;
        if(owerSpanNum == 0){
           //alert("您尚未设置常用功能，可以点击具体功能的加号进行添加。");
            var pHtml = '<div><font style="font-size: 14px"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;您尚未设置功能，可以点击具体功能的加号进行添加。</font></div>';
		    $('#ower').find('ul').append(pHtml);
        }
        	yxcy--;
        	$('#yxcy').html(yxcy);
}
// 添加
function add(data){
		var newdata=data.replace('o','');	    //删除传来ID中的O
	 	if(myquickAll7.indexOf(newdata)>-1 && newdata.indexOf("qi")<=0){	//判断传进来的id是否在大家都在用里同事还不是在大家都在用分组添加的
			newdata=newdata+"qi";				//在大家都在用里
			data=data+"qi";
		}
		if(newdata.indexOf("qi")>-1){			//判断传进来的id是否在大家都在用里
			try{
				 newdata=newdata.replace('qi','');
				 document.getElementById(newdata+"imgqi").className="img_square";
				 document.getElementById(newdata+"divqi").className="img_square1";
			 	 document.getElementById(newdata+"aqi").className="";
				 var jDom1 = $("#"+data.replace('qi','')); // 当前元素
				 jDom1.remove(); //删除
			}catch(e){
				newdata=newdata.replace('qi','');
				data=data.replace('qi','');
			}
		 }else{
	 	 document.getElementById(newdata+"img").className="img_square";
	 	 document.getElementById(newdata+"div").className="img_square1";
	 	 document.getElementById(newdata+"a").className="";
		 }
        if( $('#ower').find('font').length != 0){
           $('#ower').find('ul').html('');
        }
		 var owerSpanNum =  $('#ower').find('li').length;
	     if(owerSpanNum == 12){
	        alert("最多支持添加12个功能！");
	        return false;
	     }
	     //alert("data=="+data);
		var jDom = $("#"+data); // 当前元素
		var owerHtml = ($("#"+data).html());
		owerHtml = owerHtml.replace('tjqt','tjyx').replace('scqt','scyx').replace('add','del');
		jDom.remove(); //删除
		$('#both9').remove();
	    $('#ower').find('ul').append('<li id="'+data+'">'+owerHtml+'</li><div id="both9" class="both"></div>');
	    yxcy++;
        $('#yxcy').html(yxcy);
	 //   refreshAll();
}
// 刷新
function refreshAll() {
	var spans = $('#all').find('li');
	//$('#all').find('div').html('');
	spans.each(function (i ,data) {
		var jDom = $(this);
		var proHtml = $("<p>").append( jDom).html();
		$('#all').find('ul').append(proHtml);
	});
}
// 更多
function moreBtnClick(){
	$('#moreBtn').remove();
	$('#all').find('li').show();
}

var arr0; // “已选应用”图标数组
var arr; //“其他应用”图标数组
var dtq="0";//动态区
var commonFucStrDTQ="";//动态区
var curMap;
var commonDTQ=getCommand();
 $("#sousuo").keyup(function(){
 	var idName=$("#sousuo").val();
	idName=$.trim(idName);
	if(idName==""){
	}else{
		  sousuob();
	}
});
function sousuob(){
	var idName=$("#sousuo").val();
	idName=$.trim(idName);
	if(idName==""){
		alert("请输入产品关键字");
		$("#cpgjz").show();
		return;
	}else{
		$('#qtgn').html("搜索结果");
		document.getElementById("qtgn1").style.display="";
		document.getElementById("fanhui").style.display="";

	}
	commonFucStrDTQ="";
	for(i=0; i<commonDTQ.length; i++){
		if(commonDTQ[i].chname.indexOf(idName)>-1){
		commonFucStrDTQ=commonFucStrDTQ+commonDTQ[i].locationno+"|";
		dtqbackvalue="";
		}
	}
	if(commonFucStrDTQ!=""){
	commonFucStrDTQ=commonFucStrDTQ.substring(0,commonFucStrDTQ.length-1);
	$('#oldall').find('ul').html('');
	}else{
	$('#oldall').find('ul').html("<div class='a10'><span>无搜索结果</span></span>");
	}
	dtq="1";
	drawDiv();
}
function sousuof(){
	$("#sousuo").val("");
	$("#cpgjz").show();
	$('#qtgn').html("");
	document.getElementById("qtgn1").style.display="none";
	document.getElementById("fanhui").style.display="none";
   var owerArr = new Array();
   var spans = $('#ower').find('span>img');
   if(spans.length != 0){
	   spans.each(function (i ,data) {
			var jDom = $(this);
			if(jDom.attr('class')=='img_square'||jDom.attr('class')=='img_square haveimg'){
			     var imgID = jDom.attr('name');
				 owerArr = owerArr+imgID+'|';
			}
		});
	    owerArr = owerArr.substring(0, owerArr.length -1);
    }else{
        owerArr = "";
    }
	queryCommFuc(parent.dse_sessionId,'1',owerArr);
	$('#oldall').find('ul').html("<div class='a10'><span >请稍候...</span></span>");
	queryCommFuc(dse_sessionId,'0','');
	setTimeout("darwLi()",1500);
}
function sousuob1(){
	var idName=$("#sousuo").val();
	idName=$.trim(idName);
	if(idName==""){
		   $("#cpgjz").show();
	}else{
		   $("#cpgjz").hide();
	}
}
function sousuob2(){
		   $("#cpgjz").hide();
}
function sousuob3(){
    $("#cpgjz").hide();
	document.getElementById("sousuo").focus();
}




function drawDiv(){
	$("#all").hide();
	$("#oldall").show();

    var commonFucStr = parent.commonFucStrVal(); // 常用功能
    var favStr = parent.loctionmapList.getFavouriteStr(); // 取“其他应用”图标
    if(dtq!="0"){
    	favStr=commonFucStrDTQ;
    	dtq="0";
    	   var owerArr = new Array();
		   var spans = $('#ower').find('span>img');
		   if(spans.length != 0){
			   spans.each(function (i ,data) {
					var jDom = $(this);
					if(jDom.attr('class')=='img_square'||jDom.attr('class')=='img_square haveimg'){
					     var imgID = jDom.attr('name');
						 owerArr = owerArr+imgID+'|';
					}
				});
			    owerArr = owerArr.substring(0, owerArr.length -1);
		    }else{
		        owerArr = "1";
		    }
		 commonFucStr=owerArr;
    }
	if(commonFucStr=='0'||commonFucStr==null||commonFucStr==''){
		//alert('未查询，不显示常用功能。');
		arr0 = new Array();
		arr =  new Array();
		return false;
	} else if(commonFucStr=='1'){
		yxcy=0;
		arr0 = new Array();
		arr = favStr.split("|");
	} else if(commonFucStr=='2'){
		//alert('已经查询，用户未设置常用功能，显示内管维护的功能');
		arr0 = myfavServices.split("|");
		arr = getUnFavourite(arr0, favStr.split("|"));
	} else{
		//alert('已经查询，用户设置了常用功能，显示用户设置的功能');
		arr0 = commonFucStr.split("|");
		arr = getUnFavourite(arr0, favStr.split("|"));
	}
	yxcy=arr0.length;
	qbcy=arr.length;
	var newarr0="";
	$('#yxcy').html(yxcy);
	//$('#qbcy').html(qbcy+yxcy);
	$('#ower').find('ul').html('');
	$('#all').find('ul').html('');
		//加载“已选应用”图标
		if (arr0!=undefined && arr0!= null && arr0!=''){
			$.each(arr0, function (i, data) {
			   // curMap = parent.loctionmapList.getLocationMap(data);
			   curMap = parent.getLocationMap(data);
			    var dataName = curMap.chname;
			    if(dataName!=""&&dataName!=null){
				var img_data = '<a onmouseenter="tjyx(\''+data+'\')" onmouseleave="scyx(\''+data+'\')"><b onclick="del(\''+data+'o\');" id="'+data+'a"  ></b><div id="'+data+'div" class="img_square1"><span><img _t="img" name="'+data+'" id="'+data+'img"  class="img_square"  alt="'+dataName+'" src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/'+data+'_r.png"/></span></div></a>';
				var newdataname=$.trim(dataName);
				var IdName=$.trim(dataName);
						if(newdataname.length<=4){
							newdataname="<p style='font-size:12px; color:#888889; margin-top:-20px;'>"+newdataname+"</p>";
						}else{
							var nameq="";
							var nameh="";
							if(newdataname.length==7||newdataname.length==8){
							 	nameq=newdataname.substring(0,4);
							 	nameh=newdataname.substring(4);
								newdataname="<p style='font-size:12px; color:#888889; margin-top:-20px;'>"+nameq+"</p>"+"<p style='font-size:12px; color:#888889; margin-top:2px;'>"+nameh+"</p>";
							}else{
							 	nameq=newdataname.substring(0,3);
								nameh=newdataname.substring(3);
								newdataname="<p style='font-size:12px; color:#888889; margin-top:-20px;'>"+nameq+"</p>"+"<p style='font-size:12px; color:#888889; margin-top:2px;'>"+nameh+"</p>";
							}
						}
				var pHtml = '<li id="'+data+'o" name='+IdName+'>'+img_data+ '<span id="img_name" class="imgnameCss">'+newdataname+'</span></li>';

				$('#ower').find('ul').append(pHtml);
			    }
			});
			$('#ower').find('ul').append('<div  id="both9" class="both"></div>');
		} else{
		        var pHtml = '<div><font style="font-size: 14px"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;您尚未设置功能，可以点击具体功能的加号进行添加。</font></div>';
				$('#ower').find('ul').append(pHtml+'<div id="both9" class="both"></div>');
		}
		//加载“其他应用”图标
		if (arr!=undefined && arr!= null && arr!=''){
			$.each(arr, function (i, data) {
			    //curMap = parent.loctionmapList.getLocationMap(data);
			     curMap = parent.getLocationMap(data);
			    var dataName = curMap.chname;

			    var totalsize = arr.length;
				var n = i + 1;

				var newdataname=$.trim(dataName);


				 if(newdataname!=""&&newdataname!=null){
				var IdName=$.trim(dataName);
				var img_data = '<a onmouseenter="tjqt(\''+data+'\')" onmouseleave="scqt(\''+data+'\')"><b onclick="add(\''+data+'o\');" id="'+data+'a"   ></b><div id="'+data+'div" class="img_square1"><span ><img _t="img" name="'+data+'" id="'+data+'img"   class="img_square" alt="'+dataName+'" src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/'+data+'_r.png"/></span></div></a>';
						if(newdataname.length<=4){
							newdataname="<p style='font-size:12px; color:#888889; margin-top:-20px;'>"+newdataname+"</p>";
						}else{
							var nameq="";
							var nameh="";
							if(newdataname.length==7||newdataname.length==8){
							 	nameq=newdataname.substring(0,4);
							 	nameh=newdataname.substring(4);
								newdataname="<p style='font-size:12px; color:#888889; margin-top:-20px;'>"+nameq+"</p>"+"<p style='font-size:12px; color:#888889; margin-top:2px;'>"+nameh+"</p>";
							}else{
							 	nameq=newdataname.substring(0,3);
								nameh=newdataname.substring(3);
								newdataname="<p style='font-size:12px; color:#888889; margin-top:-20px;'>"+nameq+"</p>"+"<p style='font-size:12px; color:#888889; margin-top:2px;'>"+nameh+"</p>";
							}
						}
				var pHtml = '<li id="'+data+'o" name='+IdName+'>'+img_data+ '<span id="img_name" class="imgnameCss">'+newdataname+'</span></li>';
				$('#oldall').find('ul').append(pHtml);
				}
			});
			$('#oldall').find('ul').append('<div id="both8" class="both"></div>');
		}

}

function getUnFavourite(favStr,allStr){
	var index = 0;
	var tempArr = new Array();
	var favString = ',';
	for (j = 0; j<favStr.length; j++) {
		var t2 = favStr[j];
		favString = favString+t2 +',';
	}
	for (i=0; i<allStr.length; i++) {
		var t1 = allStr[i];
 		if(favString.indexOf(t1)=='-1'){
	 		tempArr[index]=t1;
			index++;
 		}
	}
	return tempArr;
}
function WanCheng(){
   var owerArr = new Array();
   var spans = $('#ower').find('span>img');
   if(spans.length != 0){
	   spans.each(function (i ,data) {
			var jDom = $(this);
			if(jDom.attr('class')=='img_square'||jDom.attr('class')=='img_square haveimg'){
			     var imgID = jDom.attr('name');
				 owerArr = owerArr+imgID+'|';
			}
		});
	    owerArr = owerArr.substring(0, owerArr.length -1);
    }else{
        owerArr = "";
    }
	queryCommFuc(parent.dse_sessionId,'1',owerArr);
	sousuof();
	//parent.hideMyQuickFucDiv();
}

 function tjyx(id){//已选应该事件
 if(id.indexOf("qi")>-1){
 	id=id.replace('qi','');
	document.getElementById(id+"imgqi").className="img_square ";
	document.getElementById(id+"divqi").className="img_square1 haveimg";
	document.getElementById(id+"aqi").className="fix-b j";
  }else{
	document.getElementById(id+"img").className="img_square ";
	document.getElementById(id+"div").className="img_square1 haveimg";
	document.getElementById(id+"a").className="fix-b j";
	 }
}
function scyx(id){
if(id.indexOf("qi")>-1){
 	id=id.replace('qi','');
	document.getElementById(id+"imgqi").className="img_square";
	document.getElementById(id+"divqi").className="img_square1";
	document.getElementById(id+"aqi").className="";
 }else{
	document.getElementById(id+"img").className="img_square";
	document.getElementById(id+"div").className="img_square1";
	document.getElementById(id+"a").className="";
  }
}
 function tjqt(id){//未选应用事件
 if(id.indexOf("qi")>-1){
 	id=id.replace('qi','');
	document.getElementById(id+"imgqi").className="img_square ";
	document.getElementById(id+"divqi").className="img_square1 haveimg";
	document.getElementById(id+"aqi").className="fix-b on j";
 }else{
	document.getElementById(id+"img").className="img_square ";
	document.getElementById(id+"div").className="img_square1 haveimg";
	document.getElementById(id+"a").className="fix-b on j";
 }
}
function scqt(id){
if(id.indexOf("qi")>-1){
	id=id.replace('qi','');
	document.getElementById(id+"imgqi").className="img_square";
	document.getElementById(id+"divqi").className="img_square1";
	document.getElementById(id+"aqi").className="";
}else{
	document.getElementById(id+"img").className="img_square";
	document.getElementById(id+"div").className="img_square1";
	document.getElementById(id+"a").className="";
}
}

function xh(arr,a){
	$.each(arr, function (i, data) {
			    //curMap = parent.loctionmapList.getLocationMap(data);
			     curMap = parent.getLocationMap(data);
			    var dataName = curMap.chname;
			    var totalsize = arr.length;
				var n = i + 1;
				var newdataname=$.trim(dataName);

	        if(newdataname!=""&&newdataname!=null){
				var IdName=$.trim(dataName);
				var img_data = '<a onmouseenter="tjqt(\''+data+'\')" onmouseleave="scqt(\''+data+'\')"><b onclick="add(\''+data+'o\');" id="'+data+'a"   ></b><div id="'+data+'div" class="img_square1"><span ><img _t="img" name="'+data+'" id="'+data+'img"   class="img_square" alt="'+dataName+'" src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/'+data+'_r.png"/></span></div></a>';
						if(newdataname.length<=4){
							newdataname="<p style='font-size:12px; color:#888889; margin-top:-20px;'>"+newdataname+"</p>";
						}else{
							var nameq="";
							var nameh="";
							if(newdataname.length==7||newdataname.length==8){
							 	nameq=newdataname.substring(0,4);
							 	nameh=newdataname.substring(4);
								newdataname="<p style='font-size:12px; color:#888889; margin-top:-20px;'>"+nameq+"</p>"+"<p style='font-size:12px; color:#888889; margin-top:2px;'>"+nameh+"</p>";
							}else{
							 	nameq=newdataname.substring(0,3);
								nameh=newdataname.substring(3);
								newdataname="<p style='font-size:12px; color:#888889; margin-top:-20px;'>"+nameq+"</p>"+"<p style='font-size:12px; color:#888889; margin-top:2px;'>"+nameh+"</p>";
							}
						}
				var pHtml = '<li id="'+data+'o" name='+IdName+'>'+img_data+ '<span id="img_name" class="imgnameCss">'+newdataname+'</span></li>';
				$('#zuiaiUL'+a+'').append(pHtml);
				}
			});
}
function xh1(arr,a){
			var xunhuannum=0;
	$.each(arr, function (i, data) {
			    //curMap = parent.loctionmapList.getLocationMap(data);
			     curMap = parent.getLocationMap(data);
			    var dataName = curMap.chname;
			    var totalsize = arr.length;
				var n = i + 1;
				var newdataname=$.trim(dataName);

	        if(newdataname!=""&&newdataname!=null){
	        	xunhuannum=xunhuannum+1;
	        	if(xunhuannum>24){
	        		return;
	        	}
				var IdName=$.trim(dataName);
				var img_data = '<a onmouseenter="tjqt(\''+data+'qi\')" onmouseleave="scqt(\''+data+'qi\')"><b onclick="add(\''+data+'oqi\');" id="'+data+'aqi"   ></b><div id="'+data+'divqi" class="img_square1"><span ><img _t="img" name="'+data+'" id="'+data+'imgqi"   class="img_square" alt="'+dataName+'" src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/images/quickFunc/'+data+'_r.png"/></span></div></a>';
						if(newdataname.length<=4){
							newdataname="<p style='font-size:12px; color:#888889; margin-top:-20px;'>"+newdataname+"</p>";
						}else{
							var nameq="";
							var nameh="";
							if(newdataname.length==7||newdataname.length==8){
							 	nameq=newdataname.substring(0,4);
							 	nameh=newdataname.substring(4);
								newdataname="<p style='font-size:12px; color:#888889; margin-top:-20px;'>"+nameq+"</p>"+"<p style='font-size:12px; color:#888889; margin-top:2px;'>"+nameh+"</p>";
							}else{
							 	nameq=newdataname.substring(0,3);
								nameh=newdataname.substring(3);
								newdataname="<p style='font-size:12px; color:#888889; margin-top:-20px;'>"+nameq+"</p>"+"<p style='font-size:12px; color:#888889; margin-top:2px;'>"+nameh+"</p>";
							}
						}
				var pHtml = '<li id="'+data+'oqi" name='+IdName+'>'+img_data+ '<span id="img_name" class="imgnameCss">'+newdataname+'</span></li>';
				$('#zuiaiUL'+a+'').append(pHtml);
				}
			});
}
</script>


<!--header-box end-->
<div id="index_dd" style="">
	<!-- <div class="banner-img"></div> -->

 	<div class="banner-bolck">
		<div class="banner-box">
			<!-- type参数的数据字典：0金融频道首页  1理财 2基金 3保险 4账户贵金属  14新网银首页 -->
	   	   <iframe id="perbank-content-frame-adv"  name="perbank-content-frame-adv" frameborder="no"  scrolling="no" VSPACE="0" style="top:0;height:100%;width:100%;border:0 none;overflow:hidden;"  class="content-frame" src="${pageContext.request.contextPath}/icbc/newperbank/perbank3/frame/frame_index_ads.jsp" ></iframe>
	    </div>
		<c:if test="${empty dse_sessionId}">
			<div>
				<jsp:include page="forlogin.jsp"></jsp:include>
			</div>
		</c:if>


	 </div>
	<div id="includeDiv">
		<!-- 本处分别include投资理财、购物、惠生活和安全专区的jsp -->






<script type="text/javascript">
	//如果登录成功后显示个人主页
    window.onload=function(){
        if(dse_sessionId){
            logPV('PBL201804');
            perbankAtomLocationTW('PBL201804','',dse_sessionId);
		}

	}

$(document).ready(function(){

	var clsName1 = "active";
	var clsName2 = "licaitouzi-centent-item-box active";

	if(true){
	 	document.getElementById("finance").className = clsName1;
	 	document.getElementById("licai").className = clsName2;
		return;
	}else if(true){
	 	document.getElementById("fund").className = clsName1;
	 	document.getElementById("jijin").className = clsName2;
		return;
	}else if(true){
 	 	document.getElementById("insur").className = clsName1;
	 	document.getElementById("baoxian").className = clsName2;
		return;
	}else if(true){
	 	document.getElementById("gold").className = clsName1;
	 	document.getElementById("guijinshu").className = clsName2;
		return;
	}else if(true){
	 	document.getElementById("foreign").className = clsName1;
	 	document.getElementById("waihui").className = clsName2;
		return;
	}else {
	 	document.getElementById("goods").className = clsName1;
	 	document.getElementById("zhanghushangpin").className = clsName2;
		return;
	}

});




function setMoreProducts(layer){
    var strhref = "";
	if("finance" == layer){
		strhref = "javascript:perbankAtomLocationTW('PBL201131','','');";
	}else if("fund" == layer){
		strhref = "javascript:perbankAtomLocationTW('PBL200301','','');";
	}else if("insur" == layer){
		strhref = "javascript:perbankAtomLocationTW('PBL200501','','');";
	}else if("gold" == layer){
		strhref = "javascript:perbankAtomLocationTW('PBL200603','','');";
		try{setGoldProducts();}catch(e){}
	}else if("foreign" == layer){
		strhref = "javascript:perbankAtomLocationTW('PBL201344','','');";
		try{freshForeignInfo();}catch(e){}
	}else if("goods" == layer){
		strhref = "javascript:perbankAtomLocationTW('PBL201370','','');";
	}

    document.getElementById("moreproducts").href = strhref;
}

function onClickMoreProducts(){
	if(true){
		perbankAtomLocationTW('PBL201131','','');
	}else if(true){
		perbankAtomLocationTW('PBL200301','','');
	}else if(true){
		perbankAtomLocationTW('PBL200501','','');
	}else if(true){
		perbankAtomLocationTW('PBL200603','','');
	}else if(true){
		perbankAtomLocationTW('PBL201344','','');
	}else {
		perbankAtomLocationTW('PBL201370','','');
	}

}
</script>



<div class="licaitouzi-block">
	<div class="licaitouzi-top">
        	<div class="licaitouzi-top-l">
            	<div class="licaitouzi-top-l-box">
	                <div class="licaitouzi-top-tit">
	                       <h4>投资理财</h4><a href="javascript:onClickMoreProducts();" id="moreproducts">&nbsp;更多产品>&nbsp;</a>
	                </div>
	                <ul class="licaitouzi-list-ul">

	                    <li  onclick="setMoreProducts('finance')" id="finance">理财</li>


	                    <li  onclick="setMoreProducts('fund')" id="fund">基金</li>


	                    <li  onclick="setMoreProducts('insur')" id="insur">保险</li>


	                    <li  onclick="setMoreProducts('gold')" id="gold">贵金属</li>


	                    <li  onclick="setMoreProducts('foreign')" id="foreign">外汇</li>


	                    <li onclick="setMoreProducts('goods')" id="goods">账户商品</li>

	                </ul>
                </div>
            </div>
			<div class="licaitouzi-ad">
             	<!DOCTYPE HTML>

<meta http-equiv="Content-Type" content="text/html; charset=GB18030">











		 	<a href="javascript:goToAd();")><img src="https://image.mybank.icbc.com.cn//picture/EBankpAdvPic/4807876729.png"/></a>


<script type="text/javascript">
	 function goToAd(){
		var adsrc = "2";
		var big_adjsurl = "https://image.mybank.icbc.com.cn//picture/EBankpAdvPic/4807876729.png";
		var actiontype = "1";
 		var action = "/regist/regist_index.jsp";


		//广告由门户维护，BIG_ADJSURL中为门户提供的js相对路径。
		if(adsrc=="1"){
			/* window.open(big_adjsurl); */
		}

		//广告信息由内管提供，BIG_ADJSURL为内管上传的图片路径
		if(adsrc=="2"){
			//超链接时，ACTION为完整URL。
			if("1" == actiontype){
		 		window.open(action);
			}
			//js动作，ACTION为触发的js方法如AtomSerivceSubmit('PBL200306')
			if ("2" == actiontype){
				eval(action);
			}
		}
	}
</script>

        	</div>

    </div>
    <div class="licaitouzi-body">
    	<div class="licaitouzi-centent width">
        	<a class="top-bg"></a>

        			<!DOCTYPE HTML>



<script type="text/javascript">
function form_submit(){
	addPvValue(['pvModelElementId','menuTap']);//
	addPvValue(['serviceid','PBL201131']);//记录原子服务id
	try{ar_main();}catch(e){}
	addPvValue(['pvModelElementId','']);//清空
	addPvValue(['serviceid','']);//清空
	AtomSerivceSubmit('PBL201131','',false);
}
/**
 * 原子服务提交方法
 * @param serviceId 原子服务id
 * @param transData 交易参数
 * serviceId,transData
 */
function eventClick(data){

	//attachData = "{'eventClick':{'serviceId':'PBL200403','transData':'123|34534'}}"
	addPvValue(['prodcode',data.prodid]);//产品代码
	addPvValue(['prodname',data.prodname]);//产品名称
	try{ar_main();}catch(e){}
	addPvValue(['prodcode','']);//清空
	addPvValue(['prodname','']);//清空
// 	AtomSerivceSubmit('PBL200402',data.prodid,false); // 2016-5-18 修改提交方法，理财楼层购买不进入详情页面
	var isLogon = false
	var isPerbankPro = data.isPerbankPro; // isPerbankPro 私人银行理财产品
	var isPerbankUser = data.isPerbankUser;	// isPerbankUser 是否是私人银行用户
	var pribankcustFlag = data.pribankcustFlag;	// pribankcustFlag 是否私人银行潜在客户
	if(isLogon){ // 登陆内
		if(isPerbankPro == "1" && isPerbankUser == "0" && pribankcustFlag == "0"){
			alert("您不是我行私人银行客户，不能购买私人银行专属产品。");
		} else {
			//点击记录PV
			logPV("PBL200403",data.prodid,data.prodname,1);
			// 是私人银行 客户 (原子服务购买) PBL200404  进理财产品列表页    PBL200403  进购买页面   PBL200402  PBL200401
			AtomSerivceSubmit('PBL200403', data.prodid+"|1", true);
		}
	} else { // 登陆外
		//点击记录PV
		logPV("PBL200403",data.prodid,data.prodname,1);
		AtomSerivceSubmit('PBL200403', data.prodid+"|1", true);
	}
	//var productid = ',PBL200402:' + data.prodid;
	//AtomSerivceSubmit('PBL201131>PBL200401^PBL200402',productid);
}
</script>
<div class="licaitouzi-centent-item-box" id="licai">

		<div style="height:127px;">
			<ul>


				<li id="firstLeftLiCFYX1805_0" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-firstLeftLiCFYX1805_0" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle">2018第3期工银理财368天（工迎新春财富客户专属）CFYX1805</div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"><span>新品</span></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub">预期年化收益</span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle">5.10%</span></p>
					<div id="com_icbc_ebdp_wap_ui_component_1" class="ebdp-pc4promote-infoarea-infounit-middle ">
						起购金额 &nbsp;&nbsp; <span style="color:#C60001;">10万</span>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_1 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_1 = new InfoUnit("com_icbc_ebdp_wap_ui_component_1");
com_icbc_ebdp_wap_ui_component_1.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_1;}catch(e){}
var com_icbc_ebdp_wap_ui_component_1 = new InfoUnit("com_icbc_ebdp_wap_ui_component_1");
com_icbc_ebdp_wap_ui_component_1.show();
}
</script>

					<div id="com_icbc_ebdp_wap_ui_component_2" class="ebdp-pc4promote-infoarea-infounit-middle ">
						理财期限 &nbsp;&nbsp; <span style="color:#C60001;">368天</span>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_2 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_2 = new InfoUnit("com_icbc_ebdp_wap_ui_component_2");
com_icbc_ebdp_wap_ui_component_2.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_2;}catch(e){}
var com_icbc_ebdp_wap_ui_component_2 = new InfoUnit("com_icbc_ebdp_wap_ui_component_2");
com_icbc_ebdp_wap_ui_component_2.show();
}
</script>

					<div id="com_icbc_ebdp_wap_ui_component_3" class="ebdp-pc4promote-infoarea-infounit-middle secondStyleM">
						<p class="thirdStyleM">&nbsp;&nbsp;2018.01.13-2018.01.17</p>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_3 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_3 = new InfoUnit("com_icbc_ebdp_wap_ui_component_3");
com_icbc_ebdp_wap_ui_component_3.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_3;}catch(e){}
var com_icbc_ebdp_wap_ui_component_3 = new InfoUnit("com_icbc_ebdp_wap_ui_component_3");
com_icbc_ebdp_wap_ui_component_3.show();
}
</script>

				<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(firstLeftLiCFYX1805_0 instanceof InfoArea)){
var firstLeftLiCFYX1805_0 = new InfoArea("firstLeftLiCFYX1805_0");
firstLeftLiCFYX1805_0.setEventClickHandler(eventClick);
firstLeftLiCFYX1805_0.setType("middle");
firstLeftLiCFYX1805_0.setFlag("0");
firstLeftLiCFYX1805_0.setTitleText("2018第3期工银理财368天（工迎新春财富客户专属）CFYX1805");
firstLeftLiCFYX1805_0.setTitleIntro("");
firstLeftLiCFYX1805_0.setTitleOffset("");
firstLeftLiCFYX1805_0.setKind("新品");
firstLeftLiCFYX1805_0.setProfitText("预期年化收益");
firstLeftLiCFYX1805_0.setProfitTextColor("");
firstLeftLiCFYX1805_0.setProfitValue("5.10%");
firstLeftLiCFYX1805_0.setProfitValueSize("20");
firstLeftLiCFYX1805_0.setPaddingTop("24");
firstLeftLiCFYX1805_0.setButtonText("交易");
firstLeftLiCFYX1805_0.setLeftOffset("28px");
firstLeftLiCFYX1805_0.setAttachData({'prodid':'CFYX1805','prodname':'2018第3期工银理财368天（工迎新春财富客户专属）','isPerbankPro':'0','isPerbankUser':'','pribankcustFlag':''});
firstLeftLiCFYX1805_0.show();
}else{
try{delete window.firstLeftLiCFYX1805_0;}catch(e){}
var firstLeftLiCFYX1805_0 = new InfoArea("firstLeftLiCFYX1805_0");
firstLeftLiCFYX1805_0.setEventClickHandler(eventClick);
firstLeftLiCFYX1805_0.setType("middle");
firstLeftLiCFYX1805_0.setFlag("0");
firstLeftLiCFYX1805_0.setTitleText("2018第3期工银理财368天（工迎新春财富客户专属）CFYX1805");
firstLeftLiCFYX1805_0.setTitleIntro("");
firstLeftLiCFYX1805_0.setTitleOffset("");
firstLeftLiCFYX1805_0.setKind("新品");
firstLeftLiCFYX1805_0.setProfitText("预期年化收益");
firstLeftLiCFYX1805_0.setProfitTextColor("");
firstLeftLiCFYX1805_0.setProfitValue("5.10%");
firstLeftLiCFYX1805_0.setProfitValueSize("20");
firstLeftLiCFYX1805_0.setPaddingTop("24");
firstLeftLiCFYX1805_0.setButtonText("交易");
firstLeftLiCFYX1805_0.setLeftOffset("28px");
firstLeftLiCFYX1805_0.setAttachData({'prodid':'CFYX1805','prodname':'2018第3期工银理财368天（工迎新春财富客户专属）','isPerbankPro':'0','isPerbankUser':'','pribankcustFlag':''});
firstLeftLiCFYX1805_0.show();
}
</script>





				<li id="firstLeftLiCFWL63_1" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-firstLeftLiCFWL63_1" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle">财富稳利63天CFWL63</div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub">预期年化收益</span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle">4.60%-4.70%</span></p>
					<div id="com_icbc_ebdp_wap_ui_component_4" class="ebdp-pc4promote-infoarea-infounit-middle ">
						起购金额 &nbsp;&nbsp; <span style="color:#C60001;">5万</span>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_4 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_4 = new InfoUnit("com_icbc_ebdp_wap_ui_component_4");
com_icbc_ebdp_wap_ui_component_4.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_4;}catch(e){}
var com_icbc_ebdp_wap_ui_component_4 = new InfoUnit("com_icbc_ebdp_wap_ui_component_4");
com_icbc_ebdp_wap_ui_component_4.show();
}
</script>

					<div id="com_icbc_ebdp_wap_ui_component_5" class="ebdp-pc4promote-infoarea-infounit-middle ">
						理财期限 &nbsp;&nbsp; <span style="color:#C60001;">最短投资63天</span>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_5 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_5 = new InfoUnit("com_icbc_ebdp_wap_ui_component_5");
com_icbc_ebdp_wap_ui_component_5.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_5;}catch(e){}
var com_icbc_ebdp_wap_ui_component_5 = new InfoUnit("com_icbc_ebdp_wap_ui_component_5");
com_icbc_ebdp_wap_ui_component_5.show();
}
</script>

					<div id="com_icbc_ebdp_wap_ui_component_6" class="ebdp-pc4promote-infoarea-infounit-middle secondStyleM">
						<p class="thirdStyleM"></p>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_6 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_6 = new InfoUnit("com_icbc_ebdp_wap_ui_component_6");
com_icbc_ebdp_wap_ui_component_6.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_6;}catch(e){}
var com_icbc_ebdp_wap_ui_component_6 = new InfoUnit("com_icbc_ebdp_wap_ui_component_6");
com_icbc_ebdp_wap_ui_component_6.show();
}
</script>

				<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(firstLeftLiCFWL63_1 instanceof InfoArea)){
var firstLeftLiCFWL63_1 = new InfoArea("firstLeftLiCFWL63_1");
firstLeftLiCFWL63_1.setEventClickHandler(eventClick);
firstLeftLiCFWL63_1.setType("middle");
firstLeftLiCFWL63_1.setFlag("0");
firstLeftLiCFWL63_1.setTitleText("财富稳利63天CFWL63");
firstLeftLiCFWL63_1.setTitleIntro("");
firstLeftLiCFWL63_1.setTitleOffset("");
firstLeftLiCFWL63_1.setKind("");
firstLeftLiCFWL63_1.setProfitText("预期年化收益");
firstLeftLiCFWL63_1.setProfitTextColor("");
firstLeftLiCFWL63_1.setProfitValue("4.60%-4.70%");
firstLeftLiCFWL63_1.setProfitValueSize("20");
firstLeftLiCFWL63_1.setPaddingTop("24");
firstLeftLiCFWL63_1.setButtonText("交易");
firstLeftLiCFWL63_1.setLeftOffset("28px");
firstLeftLiCFWL63_1.setAttachData({'prodid':'CFWL63','prodname':'财富稳利63天','isPerbankPro':'0','isPerbankUser':'','pribankcustFlag':''});
firstLeftLiCFWL63_1.show();
}else{
try{delete window.firstLeftLiCFWL63_1;}catch(e){}
var firstLeftLiCFWL63_1 = new InfoArea("firstLeftLiCFWL63_1");
firstLeftLiCFWL63_1.setEventClickHandler(eventClick);
firstLeftLiCFWL63_1.setType("middle");
firstLeftLiCFWL63_1.setFlag("0");
firstLeftLiCFWL63_1.setTitleText("财富稳利63天CFWL63");
firstLeftLiCFWL63_1.setTitleIntro("");
firstLeftLiCFWL63_1.setTitleOffset("");
firstLeftLiCFWL63_1.setKind("");
firstLeftLiCFWL63_1.setProfitText("预期年化收益");
firstLeftLiCFWL63_1.setProfitTextColor("");
firstLeftLiCFWL63_1.setProfitValue("4.60%-4.70%");
firstLeftLiCFWL63_1.setProfitValueSize("20");
firstLeftLiCFWL63_1.setPaddingTop("24");
firstLeftLiCFWL63_1.setButtonText("交易");
firstLeftLiCFWL63_1.setLeftOffset("28px");
firstLeftLiCFWL63_1.setAttachData({'prodid':'CFWL63','prodname':'财富稳利63天','isPerbankPro':'0','isPerbankUser':'','pribankcustFlag':''});
firstLeftLiCFWL63_1.show();
}
</script>





				<li id="firstLeftLiCFWL98_2" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-firstLeftLiCFWL98_2" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle">财富稳利98天CFWL98</div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub">预期年化收益</span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle">4.70%-4.80%</span></p>
					<div id="com_icbc_ebdp_wap_ui_component_7" class="ebdp-pc4promote-infoarea-infounit-middle ">
						起购金额 &nbsp;&nbsp; <span style="color:#C60001;">5万</span>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_7 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_7 = new InfoUnit("com_icbc_ebdp_wap_ui_component_7");
com_icbc_ebdp_wap_ui_component_7.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_7;}catch(e){}
var com_icbc_ebdp_wap_ui_component_7 = new InfoUnit("com_icbc_ebdp_wap_ui_component_7");
com_icbc_ebdp_wap_ui_component_7.show();
}
</script>

					<div id="com_icbc_ebdp_wap_ui_component_8" class="ebdp-pc4promote-infoarea-infounit-middle ">
						理财期限 &nbsp;&nbsp; <span style="color:#C60001;">最短投资98天</span>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_8 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_8 = new InfoUnit("com_icbc_ebdp_wap_ui_component_8");
com_icbc_ebdp_wap_ui_component_8.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_8;}catch(e){}
var com_icbc_ebdp_wap_ui_component_8 = new InfoUnit("com_icbc_ebdp_wap_ui_component_8");
com_icbc_ebdp_wap_ui_component_8.show();
}
</script>

					<div id="com_icbc_ebdp_wap_ui_component_9" class="ebdp-pc4promote-infoarea-infounit-middle secondStyleM">
						<p class="thirdStyleM"></p>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_9 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_9 = new InfoUnit("com_icbc_ebdp_wap_ui_component_9");
com_icbc_ebdp_wap_ui_component_9.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_9;}catch(e){}
var com_icbc_ebdp_wap_ui_component_9 = new InfoUnit("com_icbc_ebdp_wap_ui_component_9");
com_icbc_ebdp_wap_ui_component_9.show();
}
</script>

				<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(firstLeftLiCFWL98_2 instanceof InfoArea)){
var firstLeftLiCFWL98_2 = new InfoArea("firstLeftLiCFWL98_2");
firstLeftLiCFWL98_2.setEventClickHandler(eventClick);
firstLeftLiCFWL98_2.setType("middle");
firstLeftLiCFWL98_2.setFlag("0");
firstLeftLiCFWL98_2.setTitleText("财富稳利98天CFWL98");
firstLeftLiCFWL98_2.setTitleIntro("");
firstLeftLiCFWL98_2.setTitleOffset("");
firstLeftLiCFWL98_2.setKind("");
firstLeftLiCFWL98_2.setProfitText("预期年化收益");
firstLeftLiCFWL98_2.setProfitTextColor("");
firstLeftLiCFWL98_2.setProfitValue("4.70%-4.80%");
firstLeftLiCFWL98_2.setProfitValueSize("20");
firstLeftLiCFWL98_2.setPaddingTop("24");
firstLeftLiCFWL98_2.setButtonText("交易");
firstLeftLiCFWL98_2.setLeftOffset("28px");
firstLeftLiCFWL98_2.setAttachData({'prodid':'CFWL98','prodname':'财富稳利98天','isPerbankPro':'0','isPerbankUser':'','pribankcustFlag':''});
firstLeftLiCFWL98_2.show();
}else{
try{delete window.firstLeftLiCFWL98_2;}catch(e){}
var firstLeftLiCFWL98_2 = new InfoArea("firstLeftLiCFWL98_2");
firstLeftLiCFWL98_2.setEventClickHandler(eventClick);
firstLeftLiCFWL98_2.setType("middle");
firstLeftLiCFWL98_2.setFlag("0");
firstLeftLiCFWL98_2.setTitleText("财富稳利98天CFWL98");
firstLeftLiCFWL98_2.setTitleIntro("");
firstLeftLiCFWL98_2.setTitleOffset("");
firstLeftLiCFWL98_2.setKind("");
firstLeftLiCFWL98_2.setProfitText("预期年化收益");
firstLeftLiCFWL98_2.setProfitTextColor("");
firstLeftLiCFWL98_2.setProfitValue("4.70%-4.80%");
firstLeftLiCFWL98_2.setProfitValueSize("20");
firstLeftLiCFWL98_2.setPaddingTop("24");
firstLeftLiCFWL98_2.setButtonText("交易");
firstLeftLiCFWL98_2.setLeftOffset("28px");
firstLeftLiCFWL98_2.setAttachData({'prodid':'CFWL98','prodname':'财富稳利98天','isPerbankPro':'0','isPerbankUser':'','pribankcustFlag':''});
firstLeftLiCFWL98_2.show();
}
</script>




			</ul>
		</div>

		<div style="height:127px;">
			<ul>


				<li id="firstLeftLiAXTL1732_3" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-firstLeftLiAXTL1732_3" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle">2018第3期工银理财177天（工迎新春高净值客户专属）AXTL1732</div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"><span>新品</span></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub">预期年化收益</span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle">4.85%</span></p>
					<div id="com_icbc_ebdp_wap_ui_component_10" class="ebdp-pc4promote-infoarea-infounit-middle ">
						起购金额 &nbsp;&nbsp; <span style="color:#C60001;">10万</span>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_10 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_10 = new InfoUnit("com_icbc_ebdp_wap_ui_component_10");
com_icbc_ebdp_wap_ui_component_10.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_10;}catch(e){}
var com_icbc_ebdp_wap_ui_component_10 = new InfoUnit("com_icbc_ebdp_wap_ui_component_10");
com_icbc_ebdp_wap_ui_component_10.show();
}
</script>

					<div id="com_icbc_ebdp_wap_ui_component_11" class="ebdp-pc4promote-infoarea-infounit-middle ">
						理财期限 &nbsp;&nbsp; <span style="color:#C60001;">177天</span>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_11 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_11 = new InfoUnit("com_icbc_ebdp_wap_ui_component_11");
com_icbc_ebdp_wap_ui_component_11.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_11;}catch(e){}
var com_icbc_ebdp_wap_ui_component_11 = new InfoUnit("com_icbc_ebdp_wap_ui_component_11");
com_icbc_ebdp_wap_ui_component_11.show();
}
</script>

					<div id="com_icbc_ebdp_wap_ui_component_12" class="ebdp-pc4promote-infoarea-infounit-middle secondStyleM">
						<p class="thirdStyleM">&nbsp;&nbsp;2018.01.10-2018.01.15</p>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_12 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_12 = new InfoUnit("com_icbc_ebdp_wap_ui_component_12");
com_icbc_ebdp_wap_ui_component_12.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_12;}catch(e){}
var com_icbc_ebdp_wap_ui_component_12 = new InfoUnit("com_icbc_ebdp_wap_ui_component_12");
com_icbc_ebdp_wap_ui_component_12.show();
}
</script>

				<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(firstLeftLiAXTL1732_3 instanceof InfoArea)){
var firstLeftLiAXTL1732_3 = new InfoArea("firstLeftLiAXTL1732_3");
firstLeftLiAXTL1732_3.setEventClickHandler(eventClick);
firstLeftLiAXTL1732_3.setType("middle");
firstLeftLiAXTL1732_3.setFlag("0");
firstLeftLiAXTL1732_3.setTitleText("2018第3期工银理财177天（工迎新春高净值客户专属）AXTL1732");
firstLeftLiAXTL1732_3.setTitleIntro("");
firstLeftLiAXTL1732_3.setTitleOffset("");
firstLeftLiAXTL1732_3.setKind("新品");
firstLeftLiAXTL1732_3.setProfitText("预期年化收益");
firstLeftLiAXTL1732_3.setProfitTextColor("");
firstLeftLiAXTL1732_3.setProfitValue("4.85%");
firstLeftLiAXTL1732_3.setProfitValueSize("20");
firstLeftLiAXTL1732_3.setPaddingTop("24");
firstLeftLiAXTL1732_3.setButtonText("交易");
firstLeftLiAXTL1732_3.setLeftOffset("28px");
firstLeftLiAXTL1732_3.setAttachData({'prodid':'AXTL1732','prodname':'2018第3期工银理财177天（工迎新春高净值客户专属）','isPerbankPro':'0','isPerbankUser':'','pribankcustFlag':''});
firstLeftLiAXTL1732_3.show();
}else{
try{delete window.firstLeftLiAXTL1732_3;}catch(e){}
var firstLeftLiAXTL1732_3 = new InfoArea("firstLeftLiAXTL1732_3");
firstLeftLiAXTL1732_3.setEventClickHandler(eventClick);
firstLeftLiAXTL1732_3.setType("middle");
firstLeftLiAXTL1732_3.setFlag("0");
firstLeftLiAXTL1732_3.setTitleText("2018第3期工银理财177天（工迎新春高净值客户专属）AXTL1732");
firstLeftLiAXTL1732_3.setTitleIntro("");
firstLeftLiAXTL1732_3.setTitleOffset("");
firstLeftLiAXTL1732_3.setKind("新品");
firstLeftLiAXTL1732_3.setProfitText("预期年化收益");
firstLeftLiAXTL1732_3.setProfitTextColor("");
firstLeftLiAXTL1732_3.setProfitValue("4.85%");
firstLeftLiAXTL1732_3.setProfitValueSize("20");
firstLeftLiAXTL1732_3.setPaddingTop("24");
firstLeftLiAXTL1732_3.setButtonText("交易");
firstLeftLiAXTL1732_3.setLeftOffset("28px");
firstLeftLiAXTL1732_3.setAttachData({'prodid':'AXTL1732','prodname':'2018第3期工银理财177天（工迎新春高净值客户专属）','isPerbankPro':'0','isPerbankUser':'','pribankcustFlag':''});
firstLeftLiAXTL1732_3.show();
}
</script>





				<li id="firstLeftLiCFYX1802_4" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-firstLeftLiCFYX1802_4" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle">（2018-3期）“安享长盈”工银财富客户专属理财产品（CFYX1802）CFYX1802</div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"><span>新品</span></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub">预期年化收益</span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle">5.10%</span></p>
					<div id="com_icbc_ebdp_wap_ui_component_13" class="ebdp-pc4promote-infoarea-infounit-middle ">
						起购金额 &nbsp;&nbsp; <span style="color:#C60001;">10万</span>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_13 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_13 = new InfoUnit("com_icbc_ebdp_wap_ui_component_13");
com_icbc_ebdp_wap_ui_component_13.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_13;}catch(e){}
var com_icbc_ebdp_wap_ui_component_13 = new InfoUnit("com_icbc_ebdp_wap_ui_component_13");
com_icbc_ebdp_wap_ui_component_13.show();
}
</script>

					<div id="com_icbc_ebdp_wap_ui_component_14" class="ebdp-pc4promote-infoarea-infounit-middle ">
						理财期限 &nbsp;&nbsp; <span style="color:#C60001;">1826天</span>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_14 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_14 = new InfoUnit("com_icbc_ebdp_wap_ui_component_14");
com_icbc_ebdp_wap_ui_component_14.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_14;}catch(e){}
var com_icbc_ebdp_wap_ui_component_14 = new InfoUnit("com_icbc_ebdp_wap_ui_component_14");
com_icbc_ebdp_wap_ui_component_14.show();
}
</script>

					<div id="com_icbc_ebdp_wap_ui_component_15" class="ebdp-pc4promote-infoarea-infounit-middle secondStyleM">
						<p class="thirdStyleM">&nbsp;&nbsp;2018.01.12-2018.01.25</p>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_15 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_15 = new InfoUnit("com_icbc_ebdp_wap_ui_component_15");
com_icbc_ebdp_wap_ui_component_15.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_15;}catch(e){}
var com_icbc_ebdp_wap_ui_component_15 = new InfoUnit("com_icbc_ebdp_wap_ui_component_15");
com_icbc_ebdp_wap_ui_component_15.show();
}
</script>

				<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(firstLeftLiCFYX1802_4 instanceof InfoArea)){
var firstLeftLiCFYX1802_4 = new InfoArea("firstLeftLiCFYX1802_4");
firstLeftLiCFYX1802_4.setEventClickHandler(eventClick);
firstLeftLiCFYX1802_4.setType("middle");
firstLeftLiCFYX1802_4.setFlag("0");
firstLeftLiCFYX1802_4.setTitleText("（2018-3期）“安享长盈”工银财富客户专属理财产品（CFYX1802）CFYX1802");
firstLeftLiCFYX1802_4.setTitleIntro("");
firstLeftLiCFYX1802_4.setTitleOffset("");
firstLeftLiCFYX1802_4.setKind("新品");
firstLeftLiCFYX1802_4.setProfitText("预期年化收益");
firstLeftLiCFYX1802_4.setProfitTextColor("");
firstLeftLiCFYX1802_4.setProfitValue("5.10%");
firstLeftLiCFYX1802_4.setProfitValueSize("20");
firstLeftLiCFYX1802_4.setPaddingTop("24");
firstLeftLiCFYX1802_4.setButtonText("交易");
firstLeftLiCFYX1802_4.setLeftOffset("28px");
firstLeftLiCFYX1802_4.setAttachData({'prodid':'CFYX1802','prodname':'（2018-3期）“安享长盈”工银财富客户专属理财产品（CFYX1802）','isPerbankPro':'0','isPerbankUser':'','pribankcustFlag':''});
firstLeftLiCFYX1802_4.show();
}else{
try{delete window.firstLeftLiCFYX1802_4;}catch(e){}
var firstLeftLiCFYX1802_4 = new InfoArea("firstLeftLiCFYX1802_4");
firstLeftLiCFYX1802_4.setEventClickHandler(eventClick);
firstLeftLiCFYX1802_4.setType("middle");
firstLeftLiCFYX1802_4.setFlag("0");
firstLeftLiCFYX1802_4.setTitleText("（2018-3期）“安享长盈”工银财富客户专属理财产品（CFYX1802）CFYX1802");
firstLeftLiCFYX1802_4.setTitleIntro("");
firstLeftLiCFYX1802_4.setTitleOffset("");
firstLeftLiCFYX1802_4.setKind("新品");
firstLeftLiCFYX1802_4.setProfitText("预期年化收益");
firstLeftLiCFYX1802_4.setProfitTextColor("");
firstLeftLiCFYX1802_4.setProfitValue("5.10%");
firstLeftLiCFYX1802_4.setProfitValueSize("20");
firstLeftLiCFYX1802_4.setPaddingTop("24");
firstLeftLiCFYX1802_4.setButtonText("交易");
firstLeftLiCFYX1802_4.setLeftOffset("28px");
firstLeftLiCFYX1802_4.setAttachData({'prodid':'CFYX1802','prodname':'（2018-3期）“安享长盈”工银财富客户专属理财产品（CFYX1802）','isPerbankPro':'0','isPerbankUser':'','pribankcustFlag':''});
firstLeftLiCFYX1802_4.show();
}
</script>





				<li id="firstLeftLiCFYX1801_5" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-firstLeftLiCFYX1801_5" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle">（2018-3期）“安享长盈”工银menu-ul客户专属理财产品（CFYX1801）CFYX1801</div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"><span>新品</span></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub">预期年化收益</span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle">5.05%</span></p>
					<div id="com_icbc_ebdp_wap_ui_component_16" class="ebdp-pc4promote-infoarea-infounit-middle ">
						起购金额 &nbsp;&nbsp; <span style="color:#C60001;">10万</span>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_16 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_16 = new InfoUnit("com_icbc_ebdp_wap_ui_component_16");
com_icbc_ebdp_wap_ui_component_16.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_16;}catch(e){}
var com_icbc_ebdp_wap_ui_component_16 = new InfoUnit("com_icbc_ebdp_wap_ui_component_16");
com_icbc_ebdp_wap_ui_component_16.show();
}
</script>

					<div id="com_icbc_ebdp_wap_ui_component_17" class="ebdp-pc4promote-infoarea-infounit-middle ">
						理财期限 &nbsp;&nbsp; <span style="color:#C60001;">1158天</span>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_17 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_17 = new InfoUnit("com_icbc_ebdp_wap_ui_component_17");
com_icbc_ebdp_wap_ui_component_17.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_17;}catch(e){}
var com_icbc_ebdp_wap_ui_component_17 = new InfoUnit("com_icbc_ebdp_wap_ui_component_17");
com_icbc_ebdp_wap_ui_component_17.show();
}
</script>

					<div id="com_icbc_ebdp_wap_ui_component_18" class="ebdp-pc4promote-infoarea-infounit-middle secondStyleM">
						<p class="thirdStyleM">&nbsp;&nbsp;2018.01.12-2018.01.25</p>
					</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_18 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_18 = new InfoUnit("com_icbc_ebdp_wap_ui_component_18");
com_icbc_ebdp_wap_ui_component_18.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_18;}catch(e){}
var com_icbc_ebdp_wap_ui_component_18 = new InfoUnit("com_icbc_ebdp_wap_ui_component_18");
com_icbc_ebdp_wap_ui_component_18.show();
}
</script>

				<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(firstLeftLiCFYX1801_5 instanceof InfoArea)){
var firstLeftLiCFYX1801_5 = new InfoArea("firstLeftLiCFYX1801_5");
firstLeftLiCFYX1801_5.setEventClickHandler(eventClick);
firstLeftLiCFYX1801_5.setType("middle");
firstLeftLiCFYX1801_5.setFlag("0");
firstLeftLiCFYX1801_5.setTitleText("（2018-3期）“安享长盈”工银财富客户专属理财产品（CFYX1801）CFYX1801");
firstLeftLiCFYX1801_5.setTitleIntro("");
firstLeftLiCFYX1801_5.setTitleOffset("");
firstLeftLiCFYX1801_5.setKind("新品");
firstLeftLiCFYX1801_5.setProfitText("预期年化收益");
firstLeftLiCFYX1801_5.setProfitTextColor("");
firstLeftLiCFYX1801_5.setProfitValue("5.05%");
firstLeftLiCFYX1801_5.setProfitValueSize("20");
firstLeftLiCFYX1801_5.setPaddingTop("24");
firstLeftLiCFYX1801_5.setButtonText("交易");
firstLeftLiCFYX1801_5.setLeftOffset("28px");
firstLeftLiCFYX1801_5.setAttachData({'prodid':'CFYX1801','prodname':'（2018-3期）“安享长盈”工银财富客户专属理财产品（CFYX1801）','isPerbankPro':'0','isPerbankUser':'','pribankcustFlag':''});
firstLeftLiCFYX1801_5.show();
}else{
try{delete window.firstLeftLiCFYX1801_5;}catch(e){}
var firstLeftLiCFYX1801_5 = new InfoArea("firstLeftLiCFYX1801_5");
firstLeftLiCFYX1801_5.setEventClickHandler(eventClick);
firstLeftLiCFYX1801_5.setType("middle");
firstLeftLiCFYX1801_5.setFlag("0");
firstLeftLiCFYX1801_5.setTitleText("（2018-3期）“安享长盈”工银财富客户专属理财产品（CFYX1801）CFYX1801");
firstLeftLiCFYX1801_5.setTitleIntro("");
firstLeftLiCFYX1801_5.setTitleOffset("");
firstLeftLiCFYX1801_5.setKind("新品");
firstLeftLiCFYX1801_5.setProfitText("预期年化收益");
firstLeftLiCFYX1801_5.setProfitTextColor("");
firstLeftLiCFYX1801_5.setProfitValue("5.05%");
firstLeftLiCFYX1801_5.setProfitValueSize("20");
firstLeftLiCFYX1801_5.setPaddingTop("24");
firstLeftLiCFYX1801_5.setButtonText("交易");
firstLeftLiCFYX1801_5.setLeftOffset("28px");
firstLeftLiCFYX1801_5.setAttachData({'prodid':'CFYX1801','prodname':'（2018-3期）“安享长盈”工银财富客户专属理财产品（CFYX1801）','isPerbankPro':'0','isPerbankUser':'','pribankcustFlag':''});
firstLeftLiCFYX1801_5.show();
}
</script>




			</ul>
		</div>

</div>  <!--理财 end-->


            		<!DOCTYPE HTML>











<script type="text/javascript">
function formSubmit_fund1(data){
   var num = data.indexOf("-");
   var fundname = data.substring(0,num);
   var fundno = data.substring(num+1);
   logPV('PBL200303',fundno,fundname,'1');
   AtomSerivceSubmit('PBL200303',fundno+'|1');
}
</script>
<style>
	.firstStyleM11 {
		font-size: 14px;
		color: #ff5a5e;
	}


</style>
</head>
<body>
  <!--   <div class="fund cf">
            <u class="fl"></u>
            <h2 class="fl">基金产品</h2>
            <div class="more fr">
                <a href="javascript:AtomSerivceSubmit('PBL200301','');">更多产品&gt;&gt;</a>
            </div>
    </div> -->
<div class="licaitouzi-centent-item-box" id="jijin">

		  	<div style="height:127px;">
	    		<ul>


					<li id="firstLeftLi160632" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-firstLeftLi160632" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle">鹏华中证酒指数分级基金【160632】</div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"><span>股票型</span></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub">近三月涨幅</span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle">11.94%</span></p>
					   <div id="com_icbc_ebdp_wap_ui_component_19" class="ebdp-pc4promote-infoarea-infounit-middle ">

							起购金额      <span class="thirdStyleM">1,000.00</span>元

						</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_19 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_19 = new InfoUnit("com_icbc_ebdp_wap_ui_component_19");
com_icbc_ebdp_wap_ui_component_19.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_19;}catch(e){}
var com_icbc_ebdp_wap_ui_component_19 = new InfoUnit("com_icbc_ebdp_wap_ui_component_19");
com_icbc_ebdp_wap_ui_component_19.show();
}
</script>

					<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(firstLeftLi160632 instanceof InfoArea)){
var firstLeftLi160632 = new InfoArea("firstLeftLi160632");
firstLeftLi160632.setEventClickHandler(formSubmit_fund1);
firstLeftLi160632.setType("middle");
firstLeftLi160632.setFlag("0");
firstLeftLi160632.setTitleText("鹏华中证酒指数分级基金【160632】");
firstLeftLi160632.setTitleIntro("");
firstLeftLi160632.setTitleOffset("");
firstLeftLi160632.setKind("股票型");
firstLeftLi160632.setProfitText("近三月涨幅");
firstLeftLi160632.setProfitTextColor("");
firstLeftLi160632.setProfitValue("11.94%");
firstLeftLi160632.setPaddingTop("45");
firstLeftLi160632.setButtonText("交易");
firstLeftLi160632.setLeftOffset("28px");
firstLeftLi160632.setAttachData("鹏华中证酒指数分级基金-160632");
firstLeftLi160632.show();
}else{
try{delete window.firstLeftLi160632;}catch(e){}
var firstLeftLi160632 = new InfoArea("firstLeftLi160632");
firstLeftLi160632.setEventClickHandler(formSubmit_fund1);
firstLeftLi160632.setType("middle");
firstLeftLi160632.setFlag("0");
firstLeftLi160632.setTitleText("鹏华中证酒指数分级基金【160632】");
firstLeftLi160632.setTitleIntro("");
firstLeftLi160632.setTitleOffset("");
firstLeftLi160632.setKind("股票型");
firstLeftLi160632.setProfitText("近三月涨幅");
firstLeftLi160632.setProfitTextColor("");
firstLeftLi160632.setProfitValue("11.94%");
firstLeftLi160632.setPaddingTop("45");
firstLeftLi160632.setButtonText("交易");
firstLeftLi160632.setLeftOffset("28px");
firstLeftLi160632.setAttachData("鹏华中证酒指数分级基金-160632");
firstLeftLi160632.show();
}
</script>





					<li id="firstLeftLi040008" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-firstLeftLi040008" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle">华安策略优选混合基金【040008】</div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"><span>混合型</span></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub">近三月涨幅</span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle">14.69%</span></p>
					   <div id="com_icbc_ebdp_wap_ui_component_20" class="ebdp-pc4promote-infoarea-infounit-middle ">

							起购金额      <span class="thirdStyleM">5,000.00</span>元

						</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_20 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_20 = new InfoUnit("com_icbc_ebdp_wap_ui_component_20");
com_icbc_ebdp_wap_ui_component_20.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_20;}catch(e){}
var com_icbc_ebdp_wap_ui_component_20 = new InfoUnit("com_icbc_ebdp_wap_ui_component_20");
com_icbc_ebdp_wap_ui_component_20.show();
}
</script>

					<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(firstLeftLi040008 instanceof InfoArea)){
var firstLeftLi040008 = new InfoArea("firstLeftLi040008");
firstLeftLi040008.setEventClickHandler(formSubmit_fund1);
firstLeftLi040008.setType("middle");
firstLeftLi040008.setFlag("0");
firstLeftLi040008.setTitleText("华安策略优选混合基金【040008】");
firstLeftLi040008.setTitleIntro("");
firstLeftLi040008.setTitleOffset("");
firstLeftLi040008.setKind("混合型");
firstLeftLi040008.setProfitText("近三月涨幅");
firstLeftLi040008.setProfitTextColor("");
firstLeftLi040008.setProfitValue("14.69%");
firstLeftLi040008.setPaddingTop("45");
firstLeftLi040008.setButtonText("交易");
firstLeftLi040008.setLeftOffset("28px");
firstLeftLi040008.setAttachData("华安策略优选混合基金-040008");
firstLeftLi040008.show();
}else{
try{delete window.firstLeftLi040008;}catch(e){}
var firstLeftLi040008 = new InfoArea("firstLeftLi040008");
firstLeftLi040008.setEventClickHandler(formSubmit_fund1);
firstLeftLi040008.setType("middle");
firstLeftLi040008.setFlag("0");
firstLeftLi040008.setTitleText("华安策略优选混合基金【040008】");
firstLeftLi040008.setTitleIntro("");
firstLeftLi040008.setTitleOffset("");
firstLeftLi040008.setKind("混合型");
firstLeftLi040008.setProfitText("近三月涨幅");
firstLeftLi040008.setProfitTextColor("");
firstLeftLi040008.setProfitValue("14.69%");
firstLeftLi040008.setPaddingTop("45");
firstLeftLi040008.setButtonText("交易");
firstLeftLi040008.setLeftOffset("28px");
firstLeftLi040008.setAttachData("华安策略优选混合基金-040008");
firstLeftLi040008.show();
}
</script>





					<li id="firstLeftLi310398" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-firstLeftLi310398" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle">申万菱信沪深300价值股票型【310398】</div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"><span>股票型</span></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub">近三月涨幅</span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle">12.08%</span></p>
					   <div id="com_icbc_ebdp_wap_ui_component_21" class="ebdp-pc4promote-infoarea-infounit-middle ">

							起购金额      <span class="thirdStyleM">1,000.00</span>元

						</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_21 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_21 = new InfoUnit("com_icbc_ebdp_wap_ui_component_21");
com_icbc_ebdp_wap_ui_component_21.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_21;}catch(e){}
var com_icbc_ebdp_wap_ui_component_21 = new InfoUnit("com_icbc_ebdp_wap_ui_component_21");
com_icbc_ebdp_wap_ui_component_21.show();
}
</script>

					<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(firstLeftLi310398 instanceof InfoArea)){
var firstLeftLi310398 = new InfoArea("firstLeftLi310398");
firstLeftLi310398.setEventClickHandler(formSubmit_fund1);
firstLeftLi310398.setType("middle");
firstLeftLi310398.setFlag("0");
firstLeftLi310398.setTitleText("申万菱信沪深300价值股票型【310398】");
firstLeftLi310398.setTitleIntro("");
firstLeftLi310398.setTitleOffset("");
firstLeftLi310398.setKind("股票型");
firstLeftLi310398.setProfitText("近三月涨幅");
firstLeftLi310398.setProfitTextColor("");
firstLeftLi310398.setProfitValue("12.08%");
firstLeftLi310398.setPaddingTop("45");
firstLeftLi310398.setButtonText("交易");
firstLeftLi310398.setLeftOffset("28px");
firstLeftLi310398.setAttachData("申万菱信沪深300价值股票型-310398");
firstLeftLi310398.show();
}else{
try{delete window.firstLeftLi310398;}catch(e){}
var firstLeftLi310398 = new InfoArea("firstLeftLi310398");
firstLeftLi310398.setEventClickHandler(formSubmit_fund1);
firstLeftLi310398.setType("middle");
firstLeftLi310398.setFlag("0");
firstLeftLi310398.setTitleText("申万菱信沪深300价值股票型【310398】");
firstLeftLi310398.setTitleIntro("");
firstLeftLi310398.setTitleOffset("");
firstLeftLi310398.setKind("股票型");
firstLeftLi310398.setProfitText("近三月涨幅");
firstLeftLi310398.setProfitTextColor("");
firstLeftLi310398.setProfitValue("12.08%");
firstLeftLi310398.setPaddingTop("45");
firstLeftLi310398.setButtonText("交易");
firstLeftLi310398.setLeftOffset("28px");
firstLeftLi310398.setAttachData("申万菱信沪深300价值股票型-310398");
firstLeftLi310398.show();
}
</script>




	    		</ul>
			</div>

		  	<div style="height:127px;">
	    		<ul>


					<li id="firstLeftLi110003" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-firstLeftLi110003" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle">易基50指数【110003】</div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"><span>股票型</span></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub">近三月涨幅</span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle">16.53%</span></p>
					   <div id="com_icbc_ebdp_wap_ui_component_22" class="ebdp-pc4promote-infoarea-infounit-middle ">

							起购金额      <span class="thirdStyleM">1,000.00</span>元

						</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_22 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_22 = new InfoUnit("com_icbc_ebdp_wap_ui_component_22");
com_icbc_ebdp_wap_ui_component_22.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_22;}catch(e){}
var com_icbc_ebdp_wap_ui_component_22 = new InfoUnit("com_icbc_ebdp_wap_ui_component_22");
com_icbc_ebdp_wap_ui_component_22.show();
}
</script>

					<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(firstLeftLi110003 instanceof InfoArea)){
var firstLeftLi110003 = new InfoArea("firstLeftLi110003");
firstLeftLi110003.setEventClickHandler(formSubmit_fund1);
firstLeftLi110003.setType("middle");
firstLeftLi110003.setFlag("0");
firstLeftLi110003.setTitleText("易基50指数【110003】");
firstLeftLi110003.setTitleIntro("");
firstLeftLi110003.setTitleOffset("");
firstLeftLi110003.setKind("股票型");
firstLeftLi110003.setProfitText("近三月涨幅");
firstLeftLi110003.setProfitTextColor("");
firstLeftLi110003.setProfitValue("16.53%");
firstLeftLi110003.setPaddingTop("45");
firstLeftLi110003.setButtonText("交易");
firstLeftLi110003.setLeftOffset("28px");
firstLeftLi110003.setAttachData("易基50指数-110003");
firstLeftLi110003.show();
}else{
try{delete window.firstLeftLi110003;}catch(e){}
var firstLeftLi110003 = new InfoArea("firstLeftLi110003");
firstLeftLi110003.setEventClickHandler(formSubmit_fund1);
firstLeftLi110003.setType("middle");
firstLeftLi110003.setFlag("0");
firstLeftLi110003.setTitleText("易基50指数【110003】");
firstLeftLi110003.setTitleIntro("");
firstLeftLi110003.setTitleOffset("");
firstLeftLi110003.setKind("股票型");
firstLeftLi110003.setProfitText("近三月涨幅");
firstLeftLi110003.setProfitTextColor("");
firstLeftLi110003.setProfitValue("16.53%");
firstLeftLi110003.setPaddingTop("45");
firstLeftLi110003.setButtonText("交易");
firstLeftLi110003.setLeftOffset("28px");
firstLeftLi110003.setAttachData("易基50指数-110003");
firstLeftLi110003.show();
}
</script>





					<li id="firstLeftLi519690" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-firstLeftLi519690" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle">交银稳健【519690】</div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"><span>混合型</span></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub">近三月涨幅</span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle">11.12%</span></p>
					   <div id="com_icbc_ebdp_wap_ui_component_23" class="ebdp-pc4promote-infoarea-infounit-middle ">

							起购金额      <span class="thirdStyleM">1,000.00</span>元

						</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_23 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_23 = new InfoUnit("com_icbc_ebdp_wap_ui_component_23");
com_icbc_ebdp_wap_ui_component_23.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_23;}catch(e){}
var com_icbc_ebdp_wap_ui_component_23 = new InfoUnit("com_icbc_ebdp_wap_ui_component_23");
com_icbc_ebdp_wap_ui_component_23.show();
}
</script>

					<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(firstLeftLi519690 instanceof InfoArea)){
var firstLeftLi519690 = new InfoArea("firstLeftLi519690");
firstLeftLi519690.setEventClickHandler(formSubmit_fund1);
firstLeftLi519690.setType("middle");
firstLeftLi519690.setFlag("0");
firstLeftLi519690.setTitleText("交银稳健【519690】");
firstLeftLi519690.setTitleIntro("");
firstLeftLi519690.setTitleOffset("");
firstLeftLi519690.setKind("混合型");
firstLeftLi519690.setProfitText("近三月涨幅");
firstLeftLi519690.setProfitTextColor("");
firstLeftLi519690.setProfitValue("11.12%");
firstLeftLi519690.setPaddingTop("45");
firstLeftLi519690.setButtonText("交易");
firstLeftLi519690.setLeftOffset("28px");
firstLeftLi519690.setAttachData("交银稳健-519690");
firstLeftLi519690.show();
}else{
try{delete window.firstLeftLi519690;}catch(e){}
var firstLeftLi519690 = new InfoArea("firstLeftLi519690");
firstLeftLi519690.setEventClickHandler(formSubmit_fund1);
firstLeftLi519690.setType("middle");
firstLeftLi519690.setFlag("0");
firstLeftLi519690.setTitleText("交银稳健【519690】");
firstLeftLi519690.setTitleIntro("");
firstLeftLi519690.setTitleOffset("");
firstLeftLi519690.setKind("混合型");
firstLeftLi519690.setProfitText("近三月涨幅");
firstLeftLi519690.setProfitTextColor("");
firstLeftLi519690.setProfitValue("11.12%");
firstLeftLi519690.setPaddingTop("45");
firstLeftLi519690.setButtonText("交易");
firstLeftLi519690.setLeftOffset("28px");
firstLeftLi519690.setAttachData("交银稳健-519690");
firstLeftLi519690.show();
}
</script>





					<li id="firstLeftLi050018" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-firstLeftLi050018" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle">博时行业轮动混合【050018】</div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"><span>混合型</span></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub">近三月涨幅</span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle">8.81%</span></p>
					   <div id="com_icbc_ebdp_wap_ui_component_24" class="ebdp-pc4promote-infoarea-infounit-middle ">

							起购金额      <span class="thirdStyleM">1,000.00</span>元

						</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_24 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_24 = new InfoUnit("com_icbc_ebdp_wap_ui_component_24");
com_icbc_ebdp_wap_ui_component_24.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_24;}catch(e){}
var com_icbc_ebdp_wap_ui_component_24 = new InfoUnit("com_icbc_ebdp_wap_ui_component_24");
com_icbc_ebdp_wap_ui_component_24.show();
}
</script>

					<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(firstLeftLi050018 instanceof InfoArea)){
var firstLeftLi050018 = new InfoArea("firstLeftLi050018");
firstLeftLi050018.setEventClickHandler(formSubmit_fund1);
firstLeftLi050018.setType("middle");
firstLeftLi050018.setFlag("0");
firstLeftLi050018.setTitleText("博时行业轮动混合【050018】");
firstLeftLi050018.setTitleIntro("");
firstLeftLi050018.setTitleOffset("");
firstLeftLi050018.setKind("混合型");
firstLeftLi050018.setProfitText("近三月涨幅");
firstLeftLi050018.setProfitTextColor("");
firstLeftLi050018.setProfitValue("8.81%");
firstLeftLi050018.setPaddingTop("45");
firstLeftLi050018.setButtonText("交易");
firstLeftLi050018.setLeftOffset("28px");
firstLeftLi050018.setAttachData("博时行业轮动混合-050018");
firstLeftLi050018.show();
}else{
try{delete window.firstLeftLi050018;}catch(e){}
var firstLeftLi050018 = new InfoArea("firstLeftLi050018");
firstLeftLi050018.setEventClickHandler(formSubmit_fund1);
firstLeftLi050018.setType("middle");
firstLeftLi050018.setFlag("0");
firstLeftLi050018.setTitleText("博时行业轮动混合【050018】");
firstLeftLi050018.setTitleIntro("");
firstLeftLi050018.setTitleOffset("");
firstLeftLi050018.setKind("混合型");
firstLeftLi050018.setProfitText("近三月涨幅");
firstLeftLi050018.setProfitTextColor("");
firstLeftLi050018.setProfitValue("8.81%");
firstLeftLi050018.setPaddingTop("45");
firstLeftLi050018.setButtonText("交易");
firstLeftLi050018.setLeftOffset("28px");
firstLeftLi050018.setAttachData("博时行业轮动混合-050018");
firstLeftLi050018.show();
}
</script>




	    		</ul>
			</div>

</div>


  <!--基金 end-->










<script>
function formSubmit_insure(data){
/* logPV(serviceid,Prodid,ProdName,flag)其中serviceid 为点击的原子服务ID,Prodid为产品代码,ProdName为产品名称,flag为首页标志、传1*/
	var datas = data.split("-");
	var arr=datas[0].split("|");
	logPV('PBL200502',arr[1],datas[1],1);
	AtomSerivceSubmit('PBL200502', datas[0]);
}
</script>
<body>

<div class="licaitouzi-centent-item-box" id="baoxian">

	<div>
		<ul>


            <li id="item_insure1" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-image-middle"><img class="ebdp-pc4promote-infoarea-image-content-middle" src="https://image.mybank.icbc.com.cn//picture/hqinsure/110/001/ProdPicPath/303_04-168x168.jpg">
	            </li><script type="text/javascript">
if(!(item_insure1 instanceof InfoArea)){
var item_insure1 = new InfoArea("item_insure1");
item_insure1.setEventClickHandler(formSubmit_insure);
item_insure1.setType("image");
item_insure1.setFlag("1");
item_insure1.setTitleOffset("");
item_insure1.setKind("https://image.mybank.icbc.com.cn//picture/hqinsure/110/001/ProdPicPath/303_04-168x168.jpg");
item_insure1.setProfitText("");
item_insure1.setProfitTextColor("");
item_insure1.setPaddingTop("24");
item_insure1.setAttachData("110|001|101|1-“保赢1号”投资型家庭财产保险");
item_insure1.show();
}else{
try{delete window.item_insure1;}catch(e){}
var item_insure1 = new InfoArea("item_insure1");
item_insure1.setEventClickHandler(formSubmit_insure);
item_insure1.setType("image");
item_insure1.setFlag("1");
item_insure1.setTitleOffset("");
item_insure1.setKind("https://image.mybank.icbc.com.cn//picture/hqinsure/110/001/ProdPicPath/303_04-168x168.jpg");
item_insure1.setProfitText("");
item_insure1.setProfitTextColor("");
item_insure1.setPaddingTop("24");
item_insure1.setAttachData("110|001|101|1-“保赢1号”投资型家庭财产保险");
item_insure1.show();
}
</script>



    	</ul>
	</div>

</div>
</body>  <!--保险 end-->







<!--公共tag引入区域-->



<script type="text/javascript">
var _ebdp_language = "utf-8";
</script>

<script src="${pageContext.request.contextPath}/icbc/newperbank/js/ajax/datastruct-ajax-eb.js?ver=2017122122"></script>
<script src="${pageContext.request.contextPath}/icbc/newperbank/js/ajax/json2.js?ver=2017122122"></script>


<script language="javascript">

	function setGoldProducts()
	{
 		for(var i = 0; i < 6; i++)
		{
			showList_acgold(i);
		}
	}

	function setButtonHeight()
	{
		area0_acgold.setBtnTop();//计算第一行的按钮对齐top
		area3_acgold.setBtnTop();//计算第二行的按钮对齐top
	}

	var product_type_acgold = new Array();
    var product_no_acgold =new Array();
	product_type_acgold[0] = '1';//产品种类
	product_type_acgold[1] = '1';
	product_type_acgold[2] = '2';
	product_type_acgold[3] = '1';
	product_type_acgold[4] = '1';
	product_type_acgold[5] = '5';
	product_no_acgold[0] = '130060000043';//产品代码
	product_no_acgold[1] = '130060000044';
	product_no_acgold[2] = '080020000521';
	product_no_acgold[3] = '130060000041';
	product_no_acgold[4] = '130060000123';
	product_no_acgold[5] = '080020000219';

	var prodno_acgold = new Array();//账户贵金属产品代码
	var prodno_accrual = new Array();//如意金产品代码
	var index1_acgold = 0;

	var attlink_acgold;

	function acGold(data)
	{
		//PBL200601
		var param = data.split("-");
		logPV("PBL201311",param[1],param[2],1);
		AtomSerivceSubmit('PBL201311',data,false);
	}
	function accrualGold(data)
	{
		var datastr="0|"+data;
		logPV("PBL201331",data,"积存金",1);
		AtomSerivceSubmit('PBL201331',datastr,false);
	}
	function realGold(data)
	{
		var param = data.split("|");
		logPV("PBL201332",param[0],param[1],1);
		AtomSerivceSubmit('PBL201332',data,false);
	}
	function futuresGold(data)
	{
		var param = data.split("|");
		logPV("PBL201333",param[0],param[1],1);
		AtomSerivceSubmit('PBL201333',data,false);
	}
	function showList_acgold(num)
	{
		if(product_type_acgold[num] == 1)
		//账户贵金属
		{
			prodno_acgold[num] = product_no_acgold[num];//赋值产品代码
			ajaxgo_acgold(num);
		}
 		else if(product_type_acgold[num] == 2)
		//积存贵金属
		{
			if(num == 0){
				area0_acgold.setTitleText("积存金");
				area0_acgold.setEventClickHandler(accrualGold);
				attlink_acgold = '080020000521';
				area0_acgold.setAttachData(attlink_acgold);
				area0_acgold.setPaddingTop("32");
				area0_acgold.show();
				jQuery("#span0_acgold").text("主动积存价");
				jQuery("#span1_acgold").text("定期积存价");
				jQuery("#span2_acgold").text("赎回价");
				jQuery("#uint0_acgold").text("280.47");
				jQuery("#uint1_acgold").text("280.47");
				jQuery("#uint2_acgold").text("280.47");
				setButtonHeight();
			}else if(num == 1)
			{
				area1_acgold.setTitleText("积存金");
				area1_acgold.setEventClickHandler(accrualGold);
				attlink_acgold = '080020000521';
				area1_acgold.setAttachData(attlink_acgold);
				area1_acgold.setPaddingTop("32");
				area1_acgold.show();
				jQuery("#span3_acgold").text("主动积存价");
				jQuery("#span4_acgold").text("定期积存价");
				jQuery("#span5_acgold").text("赎回价");
				jQuery("#uint3_acgold").text("280.47");
				jQuery("#uint4_acgold").text("280.47");
				jQuery("#uint5_acgold").text("280.47");
				setButtonHeight();
			}
			else if(num == 2)
			{
				area2_acgold.setTitleText("积存金");
				area2_acgold.setEventClickHandler(accrualGold);
				attlink_acgold = '080020000521';
				area2_acgold.setAttachData(attlink_acgold);
				area2_acgold.setPaddingTop("32");
				area2_acgold.show();
				jQuery("#span6_acgold").text("主动积存价");
				jQuery("#span7_acgold").text("定期积存价");
				jQuery("#span8_acgold").text("赎回价");
				jQuery("#uint6_acgold").text("280.47");
				jQuery("#uint7_acgold").text("280.47");
				jQuery("#uint8_acgold").text("280.47");
				setButtonHeight();
			}
			else if(num == 3)
			{
				area3_acgold.setTitleText("积存金");
				area3_acgold.setEventClickHandler(accrualGold);
				attlink_acgold = '080020000521';
				area3_acgold.setAttachData(attlink_acgold);
				area3_acgold.setPaddingTop("32");
				area3_acgold.show();
				jQuery("#span9_acgold").text("主动积存价");
				jQuery("#span10_acgold").text("定期积存价");
				jQuery("#span11_acgold").text("赎回价");
				jQuery("#uint9_acgold").text("280.47");
				jQuery("#uint10_acgold").text("280.47");
				jQuery("#uint11_acgold").text("280.47");
				setButtonHeight();
			}
			else if(num == 4)
			{
				area4_acgold.setTitleText("积存金");
				area4_acgold.setEventClickHandler(accrualGold);
				attlink_acgold = '080020000521';
				area4_acgold.setAttachData(attlink_acgold);
				area4_acgold.setPaddingTop("32");
				area4_acgold.show();
				jQuery("#span12_acgold").text("主动积存价");
				jQuery("#span13_acgold").text("定期积存价");
				jQuery("#span14_acgold").text("赎回价");
				jQuery("#uint12_acgold").text("280.47");
				jQuery("#uint13_acgold").text("280.47");
				jQuery("#uint14_acgold").text("280.47");
				setButtonHeight();
			}
			else if(num == 5)
			{
				area5_acgold.setTitleText("积存金");
				area5_acgold.setEventClickHandler(accrualGold);
				attlink_acgold = '080020000521';
				area5_acgold.setAttachData(attlink_acgold);
				area5_acgold.setPaddingTop("32");
				area5_acgold.show();
				jQuery("#span15_acgold").text("主动积存价");
				jQuery("#span16_acgold").text("定期积存价");
				jQuery("#span17_acgold").text("赎回价");
				jQuery("#uint15_acgold").text("280.47");
				jQuery("#uint16_acgold").text("280.47");
				jQuery("#uint17_acgold").text("280.47");
				setButtonHeight();
			}
		}
		else if(product_type_acgold[num] == 3)
		//如意金
		{
			prodno_accrual[num] = product_no_acgold[num];//赋值产品代码
			ajaxgo_goldaccrual(num);
		}
		else if(product_type_acgold[num] == 4)
		//代理实物贵金属
		{
			if(num == 0)
			{
				area0_acgold.setTitleText("");
				area0_acgold.setProfitText("当日涨跌值");
				area0_acgold.setProfitValue("");
				area0_acgold.setProfitValueColor("");
				area0_acgold.setEventClickHandler(realGold);
				attlink_acgold = '||1';
				area0_acgold.setAttachData(attlink_acgold);
				area0_acgold.show();
				jQuery("#span0_acgold").text("最新价");
				jQuery("#span1_acgold").text("第一买入价");
				jQuery("#span2_acgold").text("第一卖出价");
				jQuery("#uint0_acgold").text("");
				jQuery("#uint1_acgold").text("");
				jQuery("#uint2_acgold").text("");
				setButtonHeight();
			}
			else if(num == 1)
			{
				area1_acgold.setTitleText("");
				area1_acgold.setProfitText("当日涨跌值");
				area1_acgold.setProfitValue("");
				area1_acgold.setProfitValueColor("");
				area1_acgold.setEventClickHandler(realGold);
				attlink_acgold = '||1';
				area1_acgold.setAttachData(attlink_acgold);
				area1_acgold.show();
				jQuery("#span3_acgold").text("最新价");
				jQuery("#span4_acgold").text("第一买入价");
				jQuery("#span5_acgold").text("第一卖出价");
				jQuery("#uint3_acgold").text("");
				jQuery("#uint4_acgold").text("");
				jQuery("#uint5_acgold").text("");
				setButtonHeight();
			}
			else if(num == 2)
			{
				area2_acgold.setTitleText("");
				area2_acgold.setProfitText("当日涨跌值");
				area2_acgold.setProfitValue("");
				area2_acgold.setProfitValueColor("");
				area2_acgold.setEventClickHandler(realGold);
				attlink_acgold = '||1';
				area2_acgold.setAttachData(attlink_acgold);
				area2_acgold.show();
				jQuery("#span6_acgold").text("最新价");
				jQuery("#span7_acgold").text("第一买入价");
				jQuery("#span8_acgold").text("第一卖出价");
				jQuery("#uint6_acgold").text("");
				jQuery("#uint7_acgold").text("");
				jQuery("#uint8_acgold").text("");
				setButtonHeight();
			}
			else if(num == 3)
			{
				area3_acgold.setTitleText("");
				area3_acgold.setProfitText("当日涨跌值");
				area3_acgold.setProfitValue("");
				area3_acgold.setProfitValueColor("");
				area3_acgold.setEventClickHandler(realGold);
				attlink_acgold = '||1';
				area3_acgold.setAttachData(attlink_acgold);
				area3_acgold.show();
				jQuery("#span9_acgold").text("最新价");
				jQuery("#span10_acgold").text("第一买入价");
				jQuery("#span11_acgold").text("第一卖出价");
				jQuery("#uint9_acgold").text("");
				jQuery("#uint10_acgold").text("");
				jQuery("#uint11_acgold").text("");
				setButtonHeight();
			}
			else if(num == 4)
			{
				area4_acgold.setTitleText("");
				area4_acgold.setProfitText("当日涨跌值");
				area4_acgold.setProfitValue("");
				area4_acgold.setProfitValueColor("");
				area4_acgold.setEventClickHandler(realGold);
				attlink_acgold = '||1';
				area4_acgold.setAttachData(attlink_acgold);
				area4_acgold.show();
				jQuery("#span12_acgold").text("最新价");
				jQuery("#span13_acgold").text("第一买入价");
				jQuery("#span14_acgold").text("第一卖出价");
				jQuery("#uint12_acgold").text("");
				jQuery("#uint13_acgold").text("");
				jQuery("#uint14_acgold").text("");
				setButtonHeight();
			}
			else if(num == 5)
			{
				area5_acgold.setTitleText("");
				area5_acgold.setProfitText("当日涨跌值");
				area5_acgold.setProfitValue("");
				area5_acgold.setProfitValueColor("");
				area5_acgold.setEventClickHandler(realGold);
				attlink_acgold = '||1';
				area5_acgold.setAttachData(attlink_acgold);
				area5_acgold.show();
				jQuery("#span15_acgold").text("最新价");
				jQuery("#span16_acgold").text("第一买入价");
				jQuery("#span17_acgold").text("第一卖出价");
				jQuery("#uint15_acgold").text("");
				jQuery("#uint16_acgold").text("");
				jQuery("#uint17_acgold").text("");
				setButtonHeight();
			}
		}
		else if(product_type_acgold[num] == 5)
		//代理实物贵金属递延
		{
			if(num == 0)
			{
				area0_acgold.setTitleText("");
				area0_acgold.setProfitText("当日涨跌值");
				area0_acgold.setProfitValue("");
				area0_acgold.setProfitValueColor("");
				area0_acgold.setEventClickHandler(futuresGold);
				attlink_acgold = '||1';
				area0_acgold.setAttachData(attlink_acgold);
				area0_acgold.show();
				jQuery("#span0_acgold").text("最新价");
				jQuery("#span1_acgold").text("第一买入价");
				jQuery("#span2_acgold").text("第一卖出价");
				jQuery("#uint0_acgold").text("");
				jQuery("#uint1_acgold").text("");
				jQuery("#uint2_acgold").text("");
				setButtonHeight();
			}
			else if(num == 1)
			{
				area1_acgold.setTitleText("");
				area1_acgold.setProfitText("当日涨跌值");
				area1_acgold.setProfitValue("");
				area1_acgold.setProfitValueColor("");
				area1_acgold.setEventClickHandler(futuresGold);
				attlink_acgold = '||1';
				area1_acgold.setAttachData(attlink_acgold);
				area1_acgold.show();
				jQuery("#span3_acgold").text("最新价");
				jQuery("#span4_acgold").text("第一买入价");
				jQuery("#span5_acgold").text("第一卖出价");
				jQuery("#uint3_acgold").text("");
				jQuery("#uint4_acgold").text("");
				jQuery("#uint5_acgold").text("");
				setButtonHeight();
			}
			else if(num == 2)
			{
				area2_acgold.setTitleText("");
				area2_acgold.setProfitText("当日涨跌值");
				area2_acgold.setProfitValue("");
				area2_acgold.setProfitValueColor("");
				area2_acgold.setEventClickHandler(futuresGold);
				attlink_acgold = '||1';
				area2_acgold.setAttachData(attlink_acgold);
				area2_acgold.show();
				jQuery("#span6_acgold").text("最新价");
				jQuery("#span7_acgold").text("第一买入价");
				jQuery("#span8_acgold").text("第一卖出价");
				jQuery("#uint6_acgold").text("");
				jQuery("#uint7_acgold").text("");
				jQuery("#uint8_acgold").text("");
				setButtonHeight();
			}
			else if(num == 3)
			{
				area3_acgold.setTitleText("");
				area3_acgold.setProfitText("当日涨跌值");
				area3_acgold.setProfitValue("");
				area3_acgold.setProfitValueColor("");
				area3_acgold.setEventClickHandler(futuresGold);
				attlink_acgold = '||1';
				area3_acgold.setAttachData(attlink_acgold);
				area3_acgold.show();
				jQuery("#span9_acgold").text("最新价");
				jQuery("#span10_acgold").text("第一买入价");
				jQuery("#span11_acgold").text("第一卖出价");
				jQuery("#uint9_acgold").text("");
				jQuery("#uint10_acgold").text("");
				jQuery("#uint11_acgold").text("");
				setButtonHeight();
			}
			else if(num == 4)
			{
				area4_acgold.setTitleText("");
				area4_acgold.setProfitText("当日涨跌值");
				area4_acgold.setProfitValue("");
				area4_acgold.setProfitValueColor("");
				area4_acgold.setEventClickHandler(futuresGold);
				attlink_acgold = '||1';
				area4_acgold.setAttachData(attlink_acgold);
				area4_acgold.show();
				jQuery("#span12_acgold").text("最新价");
				jQuery("#span13_acgold").text("第一买入价");
				jQuery("#span14_acgold").text("第一卖出价");
				jQuery("#uint12_acgold").text("");
				jQuery("#uint13_acgold").text("");
				jQuery("#uint14_acgold").text("");
				setButtonHeight();
			}
			else if(num == 5)
			{
				area5_acgold.setTitleText("Ag(T+D)");
				area5_acgold.setProfitText("当日涨跌值");
				area5_acgold.setProfitValue("10.00");
				area5_acgold.setProfitValueColor("red");
				area5_acgold.setEventClickHandler(futuresGold);
				attlink_acgold = '080020000219|Ag(T+D)|1';
				area5_acgold.setAttachData(attlink_acgold);
				area5_acgold.show();
				jQuery("#span15_acgold").text("最新价");
				jQuery("#span16_acgold").text("第一买入价");
				jQuery("#span17_acgold").text("第一卖出价");
				jQuery("#uint15_acgold").text("3802.00");
				jQuery("#uint16_acgold").text("3802.00");
				jQuery("#uint17_acgold").text("3803.00");
				setButtonHeight();
			}
		}
	}

</script>

   <div class="licaitouzi-centent-item-box" id="guijinshu" >
        <div style="background-color: white;height:127px">
		<ul>

			<li id="area0_acgold" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-area0_acgold" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle"></div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub"></span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle"></span></p>
				<div id="com_icbc_ebdp_wap_ui_component_25" class="ebdp-pc4promote-infoarea-infounit-middle ">
			<span id="span0_acgold"></span><span id="uint0_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_25 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_25 = new InfoUnit("com_icbc_ebdp_wap_ui_component_25");
com_icbc_ebdp_wap_ui_component_25.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_25;}catch(e){}
var com_icbc_ebdp_wap_ui_component_25 = new InfoUnit("com_icbc_ebdp_wap_ui_component_25");
com_icbc_ebdp_wap_ui_component_25.show();
}
</script>


				<div id="com_icbc_ebdp_wap_ui_component_26" class="ebdp-pc4promote-infoarea-infounit-middle ">
    		<span id="span1_acgold"></span><span id="uint1_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_26 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_26 = new InfoUnit("com_icbc_ebdp_wap_ui_component_26");
com_icbc_ebdp_wap_ui_component_26.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_26;}catch(e){}
var com_icbc_ebdp_wap_ui_component_26 = new InfoUnit("com_icbc_ebdp_wap_ui_component_26");
com_icbc_ebdp_wap_ui_component_26.show();
}
</script>


				<div id="com_icbc_ebdp_wap_ui_component_27" class="ebdp-pc4promote-infoarea-infounit-middle ">
    		<span id="span2_acgold"></span><span id="uint2_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_27 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_27 = new InfoUnit("com_icbc_ebdp_wap_ui_component_27");
com_icbc_ebdp_wap_ui_component_27.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_27;}catch(e){}
var com_icbc_ebdp_wap_ui_component_27 = new InfoUnit("com_icbc_ebdp_wap_ui_component_27");
com_icbc_ebdp_wap_ui_component_27.show();
}
</script>

			<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(area0_acgold instanceof InfoArea)){
var area0_acgold = new InfoArea("area0_acgold");
area0_acgold.setEventClickHandler();
area0_acgold.setType("middle");
area0_acgold.setFlag("0");
area0_acgold.setTitleText("");
area0_acgold.setTitleIntro("");
area0_acgold.setTitleOffset("");
area0_acgold.setKind("");
area0_acgold.setProfitText("");
area0_acgold.setProfitTextColor("");
area0_acgold.setProfitValue("");
area0_acgold.setPaddingTop("10");
area0_acgold.setButtonText("交易");
area0_acgold.setLeftOffset("28px");
area0_acgold.setAttachData("");
area0_acgold.show();
}else{
try{delete window.area0_acgold;}catch(e){}
var area0_acgold = new InfoArea("area0_acgold");
area0_acgold.setEventClickHandler();
area0_acgold.setType("middle");
area0_acgold.setFlag("0");
area0_acgold.setTitleText("");
area0_acgold.setTitleIntro("");
area0_acgold.setTitleOffset("");
area0_acgold.setKind("");
area0_acgold.setProfitText("");
area0_acgold.setProfitTextColor("");
area0_acgold.setProfitValue("");
area0_acgold.setPaddingTop("10");
area0_acgold.setButtonText("交易");
area0_acgold.setLeftOffset("28px");
area0_acgold.setAttachData("");
area0_acgold.show();
}
</script>


			<li id="area1_acgold" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-area1_acgold" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle"></div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub"></span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle"></span></p>
				<div id="com_icbc_ebdp_wap_ui_component_28" class="ebdp-pc4promote-infoarea-infounit-middle ">
			<span id="span3_acgold"></span><span id="uint3_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_28 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_28 = new InfoUnit("com_icbc_ebdp_wap_ui_component_28");
com_icbc_ebdp_wap_ui_component_28.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_28;}catch(e){}
var com_icbc_ebdp_wap_ui_component_28 = new InfoUnit("com_icbc_ebdp_wap_ui_component_28");
com_icbc_ebdp_wap_ui_component_28.show();
}
</script>


				<div id="com_icbc_ebdp_wap_ui_component_29" class="ebdp-pc4promote-infoarea-infounit-middle ">
    		<span id="span4_acgold"></span><span id="uint4_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_29 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_29 = new InfoUnit("com_icbc_ebdp_wap_ui_component_29");
com_icbc_ebdp_wap_ui_component_29.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_29;}catch(e){}
var com_icbc_ebdp_wap_ui_component_29 = new InfoUnit("com_icbc_ebdp_wap_ui_component_29");
com_icbc_ebdp_wap_ui_component_29.show();
}
</script>


				<div id="com_icbc_ebdp_wap_ui_component_30" class="ebdp-pc4promote-infoarea-infounit-middle ">
    		<span id="span5_acgold"></span><span id="uint5_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_30 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_30 = new InfoUnit("com_icbc_ebdp_wap_ui_component_30");
com_icbc_ebdp_wap_ui_component_30.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_30;}catch(e){}
var com_icbc_ebdp_wap_ui_component_30 = new InfoUnit("com_icbc_ebdp_wap_ui_component_30");
com_icbc_ebdp_wap_ui_component_30.show();
}
</script>

			<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(area1_acgold instanceof InfoArea)){
var area1_acgold = new InfoArea("area1_acgold");
area1_acgold.setEventClickHandler();
area1_acgold.setType("middle");
area1_acgold.setFlag("0");
area1_acgold.setTitleText("");
area1_acgold.setTitleIntro("");
area1_acgold.setTitleOffset("");
area1_acgold.setKind("");
area1_acgold.setProfitText("");
area1_acgold.setProfitTextColor("");
area1_acgold.setProfitValue("");
area1_acgold.setPaddingTop("10");
area1_acgold.setButtonText("交易");
area1_acgold.setLeftOffset("28px");
area1_acgold.setAttachData("");
area1_acgold.show();
}else{
try{delete window.area1_acgold;}catch(e){}
var area1_acgold = new InfoArea("area1_acgold");
area1_acgold.setEventClickHandler();
area1_acgold.setType("middle");
area1_acgold.setFlag("0");
area1_acgold.setTitleText("");
area1_acgold.setTitleIntro("");
area1_acgold.setTitleOffset("");
area1_acgold.setKind("");
area1_acgold.setProfitText("");
area1_acgold.setProfitTextColor("");
area1_acgold.setProfitValue("");
area1_acgold.setPaddingTop("10");
area1_acgold.setButtonText("交易");
area1_acgold.setLeftOffset("28px");
area1_acgold.setAttachData("");
area1_acgold.show();
}
</script>


			<li id="area2_acgold" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-area2_acgold" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle"></div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub"></span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle"></span></p>
				<div id="com_icbc_ebdp_wap_ui_component_31" class="ebdp-pc4promote-infoarea-infounit-middle ">
    		<span id="span6_acgold"></span><span id="uint6_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_31 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_31 = new InfoUnit("com_icbc_ebdp_wap_ui_component_31");
com_icbc_ebdp_wap_ui_component_31.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_31;}catch(e){}
var com_icbc_ebdp_wap_ui_component_31 = new InfoUnit("com_icbc_ebdp_wap_ui_component_31");
com_icbc_ebdp_wap_ui_component_31.show();
}
</script>


				<div id="com_icbc_ebdp_wap_ui_component_32" class="ebdp-pc4promote-infoarea-infounit-middle ">
    		<span id="span7_acgold"></span><span id="uint7_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_32 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_32 = new InfoUnit("com_icbc_ebdp_wap_ui_component_32");
com_icbc_ebdp_wap_ui_component_32.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_32;}catch(e){}
var com_icbc_ebdp_wap_ui_component_32 = new InfoUnit("com_icbc_ebdp_wap_ui_component_32");
com_icbc_ebdp_wap_ui_component_32.show();
}
</script>


				<div id="com_icbc_ebdp_wap_ui_component_33" class="ebdp-pc4promote-infoarea-infounit-middle ">
    		<span id="span8_acgold"></span><span id="uint8_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_33 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_33 = new InfoUnit("com_icbc_ebdp_wap_ui_component_33");
com_icbc_ebdp_wap_ui_component_33.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_33;}catch(e){}
var com_icbc_ebdp_wap_ui_component_33 = new InfoUnit("com_icbc_ebdp_wap_ui_component_33");
com_icbc_ebdp_wap_ui_component_33.show();
}
</script>

			<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(area2_acgold instanceof InfoArea)){
var area2_acgold = new InfoArea("area2_acgold");
area2_acgold.setEventClickHandler();
area2_acgold.setType("middle");
area2_acgold.setFlag("0");
area2_acgold.setTitleText("");
area2_acgold.setTitleIntro("");
area2_acgold.setTitleOffset("");
area2_acgold.setKind("");
area2_acgold.setProfitText("");
area2_acgold.setProfitTextColor("");
area2_acgold.setProfitValue("");
area2_acgold.setPaddingTop("10");
area2_acgold.setButtonText("交易");
area2_acgold.setLeftOffset("28px");
area2_acgold.setAttachData("");
area2_acgold.show();
}else{
try{delete window.area2_acgold;}catch(e){}
var area2_acgold = new InfoArea("area2_acgold");
area2_acgold.setEventClickHandler();
area2_acgold.setType("middle");
area2_acgold.setFlag("0");
area2_acgold.setTitleText("");
area2_acgold.setTitleIntro("");
area2_acgold.setTitleOffset("");
area2_acgold.setKind("");
area2_acgold.setProfitText("");
area2_acgold.setProfitTextColor("");
area2_acgold.setProfitValue("");
area2_acgold.setPaddingTop("10");
area2_acgold.setButtonText("交易");
area2_acgold.setLeftOffset("28px");
area2_acgold.setAttachData("");
area2_acgold.show();
}
</script>


		</ul>
		</div>

		<div style="background-color: white;height:127px;border: none;">
		<ul>
			<li id="area3_acgold" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-area3_acgold" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle"></div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub"></span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle"></span></p>
				<div id="com_icbc_ebdp_wap_ui_component_34" class="ebdp-pc4promote-infoarea-infounit-middle ">
			<span id="span9_acgold"></span><span id="uint9_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_34 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_34 = new InfoUnit("com_icbc_ebdp_wap_ui_component_34");
com_icbc_ebdp_wap_ui_component_34.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_34;}catch(e){}
var com_icbc_ebdp_wap_ui_component_34 = new InfoUnit("com_icbc_ebdp_wap_ui_component_34");
com_icbc_ebdp_wap_ui_component_34.show();
}
</script>


				<div id="com_icbc_ebdp_wap_ui_component_35" class="ebdp-pc4promote-infoarea-infounit-middle ">
    		<span id="span10_acgold"></span><span id="uint10_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_35 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_35 = new InfoUnit("com_icbc_ebdp_wap_ui_component_35");
com_icbc_ebdp_wap_ui_component_35.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_35;}catch(e){}
var com_icbc_ebdp_wap_ui_component_35 = new InfoUnit("com_icbc_ebdp_wap_ui_component_35");
com_icbc_ebdp_wap_ui_component_35.show();
}
</script>


				<div id="com_icbc_ebdp_wap_ui_component_36" class="ebdp-pc4promote-infoarea-infounit-middle ">
    		<span id="span11_acgold"></span><span id="uint11_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_36 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_36 = new InfoUnit("com_icbc_ebdp_wap_ui_component_36");
com_icbc_ebdp_wap_ui_component_36.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_36;}catch(e){}
var com_icbc_ebdp_wap_ui_component_36 = new InfoUnit("com_icbc_ebdp_wap_ui_component_36");
com_icbc_ebdp_wap_ui_component_36.show();
}
</script>

			<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(area3_acgold instanceof InfoArea)){
var area3_acgold = new InfoArea("area3_acgold");
area3_acgold.setEventClickHandler();
area3_acgold.setType("middle");
area3_acgold.setFlag("0");
area3_acgold.setTitleText("");
area3_acgold.setTitleIntro("");
area3_acgold.setTitleOffset("");
area3_acgold.setKind("");
area3_acgold.setProfitText("");
area3_acgold.setProfitTextColor("");
area3_acgold.setProfitValue("");
area3_acgold.setPaddingTop("10");
area3_acgold.setButtonText("交易");
area3_acgold.setLeftOffset("28px");
area3_acgold.setAttachData("");
area3_acgold.show();
}else{
try{delete window.area3_acgold;}catch(e){}
var area3_acgold = new InfoArea("area3_acgold");
area3_acgold.setEventClickHandler();
area3_acgold.setType("middle");
area3_acgold.setFlag("0");
area3_acgold.setTitleText("");
area3_acgold.setTitleIntro("");
area3_acgold.setTitleOffset("");
area3_acgold.setKind("");
area3_acgold.setProfitText("");
area3_acgold.setProfitTextColor("");
area3_acgold.setProfitValue("");
area3_acgold.setPaddingTop("10");
area3_acgold.setButtonText("交易");
area3_acgold.setLeftOffset("28px");
area3_acgold.setAttachData("");
area3_acgold.show();
}
</script>


			<li id="area4_acgold" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-area4_acgold" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle"></div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub"></span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle"></span></p>
				<div id="com_icbc_ebdp_wap_ui_component_37" class="ebdp-pc4promote-infoarea-infounit-middle ">
			<span id="span12_acgold"></span><span id="uint12_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_37 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_37 = new InfoUnit("com_icbc_ebdp_wap_ui_component_37");
com_icbc_ebdp_wap_ui_component_37.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_37;}catch(e){}
var com_icbc_ebdp_wap_ui_component_37 = new InfoUnit("com_icbc_ebdp_wap_ui_component_37");
com_icbc_ebdp_wap_ui_component_37.show();
}
</script>


				<div id="com_icbc_ebdp_wap_ui_component_38" class="ebdp-pc4promote-infoarea-infounit-middle ">
    		<span id="span13_acgold"></span><span id="uint13_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_38 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_38 = new InfoUnit("com_icbc_ebdp_wap_ui_component_38");
com_icbc_ebdp_wap_ui_component_38.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_38;}catch(e){}
var com_icbc_ebdp_wap_ui_component_38 = new InfoUnit("com_icbc_ebdp_wap_ui_component_38");
com_icbc_ebdp_wap_ui_component_38.show();
}
</script>


				<div id="com_icbc_ebdp_wap_ui_component_39" class="ebdp-pc4promote-infoarea-infounit-middle ">
    		<span id="span14_acgold"></span><span id="uint14_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_39 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_39 = new InfoUnit("com_icbc_ebdp_wap_ui_component_39");
com_icbc_ebdp_wap_ui_component_39.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_39;}catch(e){}
var com_icbc_ebdp_wap_ui_component_39 = new InfoUnit("com_icbc_ebdp_wap_ui_component_39");
com_icbc_ebdp_wap_ui_component_39.show();
}
</script>

			<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(area4_acgold instanceof InfoArea)){
var area4_acgold = new InfoArea("area4_acgold");
area4_acgold.setEventClickHandler();
area4_acgold.setType("middle");
area4_acgold.setFlag("0");
area4_acgold.setTitleText("");
area4_acgold.setTitleIntro("");
area4_acgold.setTitleOffset("");
area4_acgold.setKind("");
area4_acgold.setProfitText("");
area4_acgold.setProfitTextColor("");
area4_acgold.setProfitValue("");
area4_acgold.setPaddingTop("10");
area4_acgold.setButtonText("交易");
area4_acgold.setLeftOffset("28px");
area4_acgold.setAttachData("");
area4_acgold.show();
}else{
try{delete window.area4_acgold;}catch(e){}
var area4_acgold = new InfoArea("area4_acgold");
area4_acgold.setEventClickHandler();
area4_acgold.setType("middle");
area4_acgold.setFlag("0");
area4_acgold.setTitleText("");
area4_acgold.setTitleIntro("");
area4_acgold.setTitleOffset("");
area4_acgold.setKind("");
area4_acgold.setProfitText("");
area4_acgold.setProfitTextColor("");
area4_acgold.setProfitValue("");
area4_acgold.setPaddingTop("10");
area4_acgold.setButtonText("交易");
area4_acgold.setLeftOffset("28px");
area4_acgold.setAttachData("");
area4_acgold.show();
}
</script>


			<li id="area5_acgold" class="ebdp-pc4promote-infoarea ebdp-pc4promote-infoarea-middle"><div class="ebdp-pc4promote-infoarea-title ebdp-pc4promote-infoarea-title-middle"><div id="ebdp-pc4promote-infoarea-title-text-area5_acgold" class="ebdp-pc4promote-infoarea-title-text ebdp-pc4promote-infoarea-title-text-middle"></div><div class="ebdp-pc4promote-infoarea-title-introduce ebdp-pc4promote-infoarea-title-introduce-middle"></div></div><div class="ebdp-pc4promote-infoarea-content"><p class="ebdp-pc4promote-infoarea-kind ebdp-pc4promote-infoarea-kind-middle"></p><p class="ebdp-pc4promote-infoarea-profit ebdp-pc4promote-infoarea-profit-middle"><span class="ebdp-pc4promote-infoarea-profit-text ebdp-pc4promote-infoarea-profit-text-middle"><span class="ebdp-pc4promote-infoarea-profit-sub"></span></span><span class="ebdp-pc4promote-infoarea-profit-value ebdp-pc4promote-infoarea-profit-value-middle"></span></p>
				<div id="com_icbc_ebdp_wap_ui_component_40" class="ebdp-pc4promote-infoarea-infounit-middle ">
    		<span id="span15_acgold"></span><span id="uint15_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_40 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_40 = new InfoUnit("com_icbc_ebdp_wap_ui_component_40");
com_icbc_ebdp_wap_ui_component_40.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_40;}catch(e){}
var com_icbc_ebdp_wap_ui_component_40 = new InfoUnit("com_icbc_ebdp_wap_ui_component_40");
com_icbc_ebdp_wap_ui_component_40.show();
}
</script>


				<div id="com_icbc_ebdp_wap_ui_component_41" class="ebdp-pc4promote-infoarea-infounit-middle ">
    		<span id="span16_acgold"></span><span id="uint16_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_41 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_41 = new InfoUnit("com_icbc_ebdp_wap_ui_component_41");
com_icbc_ebdp_wap_ui_component_41.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_41;}catch(e){}
var com_icbc_ebdp_wap_ui_component_41 = new InfoUnit("com_icbc_ebdp_wap_ui_component_41");
com_icbc_ebdp_wap_ui_component_41.show();
}
</script>


				<div id="com_icbc_ebdp_wap_ui_component_42" class="ebdp-pc4promote-infoarea-infounit-middle ">
    		<span id="span17_acgold"></span><span id="uint17_acgold" class="firstStyleM" style="*float:none;padding:0% 30% 0% 0%"></span>
				</div><script type="text/javascript">
if(!(com_icbc_ebdp_wap_ui_component_42 instanceof InfoUnit)){
var com_icbc_ebdp_wap_ui_component_42 = new InfoUnit("com_icbc_ebdp_wap_ui_component_42");
com_icbc_ebdp_wap_ui_component_42.show();
}else{
try{delete window.com_icbc_ebdp_wap_ui_component_42;}catch(e){}
var com_icbc_ebdp_wap_ui_component_42 = new InfoUnit("com_icbc_ebdp_wap_ui_component_42");
com_icbc_ebdp_wap_ui_component_42.show();
}
</script>

			<div class="ebdp-pc4promote-infoarea-button ebdp-pc4promote-infoarea-button-middle">交易</div></div></li><script type="text/javascript">
if(!(area5_acgold instanceof InfoArea)){
var area5_acgold = new InfoArea("area5_acgold");
area5_acgold.setEventClickHandler();
area5_acgold.setType("middle");
area5_acgold.setFlag("0");
area5_acgold.setTitleText("");
area5_acgold.setTitleIntro("");
area5_acgold.setTitleOffset("");
area5_acgold.setKind("");
area5_acgold.setProfitText("");
area5_acgold.setProfitTextColor("");
area5_acgold.setProfitValue("");
area5_acgold.setPaddingTop("10");
area5_acgold.setButtonText("交易");
area5_acgold.setLeftOffset("28px");
area5_acgold.setAttachData("");
area5_acgold.show();
}else{
try{delete window.area5_acgold;}catch(e){}
var area5_acgold = new InfoArea("area5_acgold");
area5_acgold.setEventClickHandler();
area5_acgold.setType("middle");
area5_acgold.setFlag("0");
area5_acgold.setTitleText("");
area5_acgold.setTitleIntro("");
area5_acgold.setTitleOffset("");
area5_acgold.setKind("");
area5_acgold.setProfitText("");
area5_acgold.setProfitTextColor("");
area5_acgold.setProfitValue("");
area5_acgold.setPaddingTop("10");
area5_acgold.setButtonText("交易");
area5_acgold.setLeftOffset("28px");
area5_acgold.setAttachData("");
area5_acgold.show();
}
</script>


		</ul>
		</div>

	</div>

<script language="javascript">



var area_acgold = '0200';
try{
	area_acgold = parent.Perbank3PubData.Area_code;
}catch(e){}

function dealerror_acgold(result){

}
//ajax后台刷新行情信息
function ajaxgo_acgold(num) {
    var sendParam = {};
    sendParam["Area_code"]=area_acgold;
    sendParam["trademode"]="1";
    sendParam["tranCode"]="A00462";//per_GoldQueryPriceNSOp
    if(num == 0)
    {
    	EBDataStruct.sendAjax({
    						data: sendParam,
    						dataType: "json",
    						url: "${pageContext.request.contextPath}/AsynGetDataServlet",
    						failCallBack: function(result1){ dealerror_acgold(result1); },
    						successCallBack: function(kc1){
                        		deal1_acgold(kc1);
                        	},
    						isDisplay: false,
    						displayArea: "pselected"
    					});

	}
	else if(num == 1)
	{
    	EBDataStruct.sendAjax({
    						data: sendParam,
    						dataType: "json",
    						url: "${pageContext.request.contextPath}/AsynGetDataServlet",
    						failCallBack: function(result2){ dealerror_acgold(result2); },
    						successCallBack: function(kc2){
                        		deal2_acgold(kc2);
                        	},
    						isDisplay: false,
    						displayArea: "pselected"
    					});
	}
	else if(num == 2)
	{
      	EBDataStruct.sendAjax({
    						data: sendParam,
    						dataType: "json",
    						url: "${pageContext.request.contextPath}/AsynGetDataServlet",
    						failCallBack: function(result3){ dealerror_acgold(result3); },
    						successCallBack: function(kc3){
                        		deal3_acgold(kc3);
                        	},
    						isDisplay: false,
    						displayArea: "pselected"
    					});
	  }
	else if(num == 3)
	{
      	EBDataStruct.sendAjax({
    						data: sendParam,
    						dataType: "json",
    						url: "${pageContext.request.contextPath}/AsynGetDataServlet",
    						failCallBack: function(result4){ dealerror_acgold(result4); },
    						successCallBack: function(kc4){
                        		deal4_acgold(kc4);
                        	},
    						isDisplay: false,
    						displayArea: "pselected"
    					});
	}
	else if(num == 4)
	{
      	EBDataStruct.sendAjax({
    						data: sendParam,
    						dataType: "json",
    						url: "${pageContext.request.contextPath}/AsynGetDataServlet",
    						failCallBack: function(result5){ dealerror_acgold(result5); },
    						successCallBack: function(kc5){
                        		deal5_acgold(kc5);
                        	},
    						isDisplay: false,
    						displayArea: "pselected"
    					});
	}
	else if(num == 5)
	{
      	EBDataStruct.sendAjax({
    						data: sendParam,
    						dataType: "json",
    						url: "${pageContext.request.contextPath}/AsynGetDataServlet",
    						failCallBack: function(result6){ dealerror_acgold(result6); },
    						successCallBack: function(kc6){
                        		deal6_acgold(kc6);
                        	},
    						isDisplay: false,
    						displayArea: "pselected"
    					});
	}
}


function deal1_acgold(KColl)
{
	var MsgInfo = KColl;
	var icollSet = KColl.getIndexedCollection("market");
	var size = icollSet.size();
	var openprice_dv = new Array();
	var openprice_dr = new Array();
	var prodcode = new Array();
	var upordown = new Array();
	var metalname = new Array();
	var buyprice = new Array();
	var sellprice = new Array();
	var middleprice = new Array();
	var updown_d = new Array();
	var price_setValue;

	//mod by kfzx-wenmr 20150810 2015年8月版开放式网银首页改造
	if(size > 0)
	{
		 	for(var index=0;index<size;index++)
		 	{
		 		 var setInfo = icollSet.getElementAt(index);
		 		 metalname[index] = setInfo.getValueAt("metalname");
		 		 upordown[index] = setInfo.getValueAt("upordown");
		 		 var unit = setInfo.getValueAt("unit");
		 		 buyprice[index] = setInfo.getValueAt("buyprice");
		 		 sellprice[index] = setInfo.getValueAt("sellprice");
		 		 var ebuyprice = setInfo.getValueAt("ebuyprice");
		 		 var esellprice = setInfo.getValueAt("esellprice");
		 		 middleprice[index] = setInfo.getValueAt("middleprice");
		 		 var topmiddleprice = setInfo.getValueAt("topmiddleprice");
		 		 var lowmiddleprice = setInfo.getValueAt("lowmiddleprice");
		 		 var currcode = setInfo.getValueAt("currcode");
		 		 prodcode[index] = setInfo.getValueAt("prodcode");
		 		 var metalflag = setInfo.getValueAt("metalflag");
		 		 var openprice_yr = setInfo.getValueAt("openprice_yr");
		 		 openprice_dv[index] = setInfo.getValueAt("openprice_dv");
		 		 openprice_dr[index] = setInfo.getValueAt("openprice_dr");
		 		 var updown_y = setInfo.getValueAt("updown_y");
		 		 updown_d[index] = setInfo.getValueAt("updown_d");

		 		 if(prodcode[index] == prodno_acgold[0])
		 		 {
		 		 	index1_acgold = index;
		 		 }
		 	}
	 }

	if(updown_d[index1_acgold] == "1")
	{
		area0_acgold.setProfitValueColor("red");
	}
	else if(updown_d[index1_acgold] == "2")
	{
		area0_acgold.setProfitValueColor("green");
	}
	else
	{
		area0_acgold.setProfitValueColor("black");
	}
	if(upordown[index1_acgold] == "1")
	{
		price_setValue = openprice_dv[index1_acgold];
	}
	else if(upordown[index1_acgold] == "2")
	{
		price_setValue = openprice_dv[index1_acgold];
	}
	else
	{
		price_setValue = openprice_dv[index1_acgold];
	}

	area0_acgold.setTitleText(metalname[index1_acgold]);
	area0_acgold.setProfitText("当日涨跌值");
	area0_acgold.setProfitValue(price_setValue);
	area0_acgold.setEventClickHandler(acGold);
	attlink_acgold = prodcode[index1_acgold] + '|1|1-' + prodcode[index1_acgold] + '-' + metalname[index1_acgold];
	area0_acgold.setAttachData(attlink_acgold);
	area0_acgold.show();
	jQuery("#span0_acgold").text("中间价");
	jQuery("#span1_acgold").text("银行买入价");
	jQuery("#span2_acgold").text("银行卖出价");
	jQuery("#uint0_acgold").text(middleprice[index1_acgold]);
	jQuery("#uint1_acgold").text(buyprice[index1_acgold]);
	jQuery("#uint2_acgold").text(sellprice[index1_acgold]);
	setButtonHeight();
}


function deal2_acgold(KColl)
{
	var MsgInfo = KColl;
	var icollSet = KColl.getIndexedCollection("market");
	var size = icollSet.size();
	var openprice_dv = new Array();
	var openprice_dr = new Array();
	var prodcode = new Array();
	var upordown = new Array();
	var metalname = new Array();
	var buyprice = new Array();
	var sellprice = new Array();
	var middleprice = new Array();
	var updown_d = new Array();
	var price_setValue;

	//mod by kfzx-wenmr 20150810 2015年8月版开放式网银首页改造
	if(size > 0)
	{
		 	for(var index=0;index<size;index++)
		 	{
		 		 var setInfo = icollSet.getElementAt(index);
		 		 metalname[index] = setInfo.getValueAt("metalname");
		 		 upordown[index] = setInfo.getValueAt("upordown");
		 		 var unit = setInfo.getValueAt("unit");
		 		 buyprice[index] = setInfo.getValueAt("buyprice");
		 		 sellprice[index] = setInfo.getValueAt("sellprice");
		 		 var ebuyprice = setInfo.getValueAt("ebuyprice");
		 		 var esellprice = setInfo.getValueAt("esellprice");
		 		 middleprice[index] = setInfo.getValueAt("middleprice");
		 		 var topmiddleprice = setInfo.getValueAt("topmiddleprice");
		 		 var lowmiddleprice = setInfo.getValueAt("lowmiddleprice");
		 		 var currcode = setInfo.getValueAt("currcode");
		 		 prodcode[index] = setInfo.getValueAt("prodcode");
		 		 var metalflag = setInfo.getValueAt("metalflag");
		 		 var openprice_yr = setInfo.getValueAt("openprice_yr");
		 		 openprice_dv[index] = setInfo.getValueAt("openprice_dv");
		 		 openprice_dr[index] = setInfo.getValueAt("openprice_dr");
		 		 var updown_y = setInfo.getValueAt("updown_y");
		 		 updown_d[index] = setInfo.getValueAt("updown_d");

		 		 if(prodcode[index] == prodno_acgold[1])
		 		 {
		 		 	index1_acgold = index;
		 		 }
		 	}
	 }
	if(updown_d[index1_acgold] == "1")
	{
		area1_acgold.setProfitValueColor("red");
	}
	else if(updown_d[index1_acgold] == "2")
	{
		area1_acgold.setProfitValueColor("green");
	}
	else
	{
		area1_acgold.setProfitValueColor("black");
	}
	if(upordown[index1_acgold] == "1")
	{
		price_setValue = openprice_dv[index1_acgold];
	}
	else if(upordown[index1_acgold] == "2")
	{
		price_setValue = openprice_dv[index1_acgold];
	}
	else
	{
		price_setValue = openprice_dv[index1_acgold];
	}

	area1_acgold.setTitleText(metalname[index1_acgold]);
	area1_acgold.setProfitText("当日涨跌值");
	area1_acgold.setProfitValue(price_setValue);
	area1_acgold.setEventClickHandler(acGold);
	attlink_acgold = prodcode[index1_acgold] + '|1|1-' + prodcode[index1_acgold] + '-' + metalname[index1_acgold];
	area1_acgold.setAttachData(attlink_acgold);
	area1_acgold.show();
	jQuery("#span3_acgold").text("中间价");
	jQuery("#span4_acgold").text("银行买入价");
	jQuery("#span5_acgold").text("银行卖出价");
	jQuery("#uint3_acgold").text(middleprice[index1_acgold]);
	jQuery("#uint4_acgold").text(buyprice[index1_acgold]);
	jQuery("#uint5_acgold").text(sellprice[index1_acgold]);
	setButtonHeight();
}

function deal3_acgold(KColl)
{
	var MsgInfo = KColl;
	var icollSet = KColl.getIndexedCollection("market");
	var size = icollSet.size();
	var openprice_dv = new Array();
	var openprice_dr = new Array();
	var prodcode = new Array();
	var upordown = new Array();
	var metalname = new Array();
	var buyprice = new Array();
	var sellprice = new Array();
	var middleprice = new Array();
	var updown_d = new Array();
	var price_setValue;

	//mod by kfzx-wenmr 20150810 2015年8月版开放式网银首页改造
	if(size > 0)
	{
		 	for(var index=0;index<size;index++)
		 	{
		 		 var setInfo = icollSet.getElementAt(index);
		 		 metalname[index] = setInfo.getValueAt("metalname");
		 		 upordown[index] = setInfo.getValueAt("upordown");
		 		 var unit = setInfo.getValueAt("unit");
		 		 buyprice[index] = setInfo.getValueAt("buyprice");
		 		 sellprice[index] = setInfo.getValueAt("sellprice");
		 		 var ebuyprice = setInfo.getValueAt("ebuyprice");
		 		 var esellprice = setInfo.getValueAt("esellprice");
		 		 middleprice[index] = setInfo.getValueAt("middleprice");
		 		 var topmiddleprice = setInfo.getValueAt("topmiddleprice");
		 		 var lowmiddleprice = setInfo.getValueAt("lowmiddleprice");
		 		 var currcode = setInfo.getValueAt("currcode");
		 		 prodcode[index] = setInfo.getValueAt("prodcode");
		 		 var metalflag = setInfo.getValueAt("metalflag");
		 		 var openprice_yr = setInfo.getValueAt("openprice_yr");
		 		 openprice_dv[index] = setInfo.getValueAt("openprice_dv");
		 		 openprice_dr[index] = setInfo.getValueAt("openprice_dr");
		 		 var updown_y = setInfo.getValueAt("updown_y");
		 		 updown_d[index] = setInfo.getValueAt("updown_d");

		 		 if(prodcode[index] == prodno_acgold[2])
		 		 {
		 		 	index1_acgold = index;
		 		 }
		 	}
	 }
	if(updown_d[index1_acgold] == "1")
	{
		area2_acgold.setProfitValueColor("red");
	}
	else if(updown_d[index1_acgold] == "2")
	{
		area2_acgold.setProfitValueColor("green");
	}
	else
	{
		area2_acgold.setProfitValueColor("black");
	}
	if(upordown[index1_acgold] == "1")
	{
		price_setValue = openprice_dv[index1_acgold];
	}
	else if(upordown[index1_acgold] == "2")
	{
		price_setValue = openprice_dv[index1_acgold];
	}
	else
	{
		price_setValue = openprice_dv[index1_acgold];
	}


	area2_acgold.setTitleText(metalname[index1_acgold]);
	area2_acgold.setProfitText("当日涨跌值");
	area2_acgold.setProfitValue(price_setValue);
	area2_acgold.setEventClickHandler(acGold);
	attlink_acgold = prodcode[index1_acgold] + '|1|1-' + prodcode[index1_acgold] + '-' + metalname[index1_acgold];
	area2_acgold.setAttachData(attlink_acgold);
	area2_acgold.show();
	jQuery("#span6_acgold").text("中间价");
	jQuery("#span7_acgold").text("银行买入价");
	jQuery("#span8_acgold").text("银行卖出价");
	jQuery("#uint6_acgold").text(middleprice[index1_acgold]);
	jQuery("#uint7_acgold").text(buyprice[index1_acgold]);
	jQuery("#uint8_acgold").text(sellprice[index1_acgold]);
	setButtonHeight();
}
function deal4_acgold(KColl)
{
	var MsgInfo = KColl;
	var icollSet = KColl.getIndexedCollection("market");
	var size = icollSet.size();
	var openprice_dv = new Array();
	var openprice_dr = new Array();
	var prodcode = new Array();
	var upordown = new Array();
	var metalname = new Array();
	var buyprice = new Array();
	var sellprice = new Array();
	var middleprice = new Array();
	var updown_d = new Array();
	var price_setValue;

	//mod by kfzx-wenmr 20150810 2015年8月版开放式网银首页改造
	if(size > 0)
	{
		 	for(var index=0;index<size;index++)
		 	{
		 		 var setInfo = icollSet.getElementAt(index);
		 		 metalname[index] = setInfo.getValueAt("metalname");
		 		 upordown[index] = setInfo.getValueAt("upordown");
		 		 var unit = setInfo.getValueAt("unit");
		 		 buyprice[index] = setInfo.getValueAt("buyprice");
		 		 sellprice[index] = setInfo.getValueAt("sellprice");
		 		 var ebuyprice = setInfo.getValueAt("ebuyprice");
		 		 var esellprice = setInfo.getValueAt("esellprice");
		 		 middleprice[index] = setInfo.getValueAt("middleprice");
		 		 var topmiddleprice = setInfo.getValueAt("topmiddleprice");
		 		 var lowmiddleprice = setInfo.getValueAt("lowmiddleprice");
		 		 var currcode = setInfo.getValueAt("currcode");
		 		 prodcode[index] = setInfo.getValueAt("prodcode");
		 		 var metalflag = setInfo.getValueAt("metalflag");
		 		 var openprice_yr = setInfo.getValueAt("openprice_yr");
		 		 openprice_dv[index] = setInfo.getValueAt("openprice_dv");
		 		 openprice_dr[index] = setInfo.getValueAt("openprice_dr");
		 		 var updown_y = setInfo.getValueAt("updown_y");
		 		 updown_d[index] = setInfo.getValueAt("updown_d");

		 		 if(prodcode[index] == prodno_acgold[3])
		 		 {
		 		 	index1_acgold = index;
		 		 }
		 	}
	 }

	if(updown_d[index1_acgold] == "1")
	{
		area3_acgold.setProfitValueColor("red");
	}
	else if(updown_d[index1_acgold] == "2")
	{
		area3_acgold.setProfitValueColor("green");
	}
	else
	{
		area3_acgold.setProfitValueColor("black");
	}
	if(upordown[index1_acgold] == "1")
	{
		price_setValue = openprice_dv[index1_acgold];
	}
	else if(upordown[index1_acgold] == "2")
	{
		price_setValue = openprice_dv[index1_acgold];
	}
	else
	{
		price_setValue = openprice_dv[index1_acgold];
	}

	area3_acgold.setTitleText(metalname[index1_acgold]);
	area3_acgold.setProfitText("当日涨跌值");
	area3_acgold.setProfitValue(price_setValue);
	area3_acgold.setEventClickHandler(acGold);
	attlink_acgold = prodcode[index1_acgold] + '|1|1-' + prodcode[index1_acgold] + '-' + metalname[index1_acgold];
	area3_acgold.setAttachData(attlink_acgold);
	area3_acgold.show();
	jQuery("#span9_acgold").text("中间价");
	jQuery("#span10_acgold").text("银行买入价");
	jQuery("#span11_acgold").text("银行卖出价");
	jQuery("#uint9_acgold").text(middleprice[index1_acgold]);
	jQuery("#uint10_acgold").text(buyprice[index1_acgold]);
	jQuery("#uint11_acgold").text(sellprice[index1_acgold]);
	setButtonHeight();
}
function deal5_acgold(KColl)
{
	var MsgInfo = KColl;
	var icollSet = KColl.getIndexedCollection("market");
	var size = icollSet.size();
	var openprice_dv = new Array();
	var openprice_dr = new Array();
	var prodcode = new Array();
	var upordown = new Array();
	var metalname = new Array();
	var buyprice = new Array();
	var sellprice = new Array();
	var middleprice = new Array();
	var updown_d = new Array();
	var price_setValue;

	//mod by kfzx-wenmr 20150810 2015年8月版开放式网银首页改造
	if(size > 0)
	{
		 	for(var index=0;index<size;index++)
		 	{
		 		 var setInfo = icollSet.getElementAt(index);
		 		 metalname[index] = setInfo.getValueAt("metalname");
		 		 upordown[index] = setInfo.getValueAt("upordown");
		 		 var unit = setInfo.getValueAt("unit");
		 		 buyprice[index] = setInfo.getValueAt("buyprice");
		 		 sellprice[index] = setInfo.getValueAt("sellprice");
		 		 var ebuyprice = setInfo.getValueAt("ebuyprice");
		 		 var esellprice = setInfo.getValueAt("esellprice");
		 		 middleprice[index] = setInfo.getValueAt("middleprice");
		 		 var topmiddleprice = setInfo.getValueAt("topmiddleprice");
		 		 var lowmiddleprice = setInfo.getValueAt("lowmiddleprice");
		 		 var currcode = setInfo.getValueAt("currcode");
		 		 prodcode[index] = setInfo.getValueAt("prodcode");
		 		 var metalflag = setInfo.getValueAt("metalflag");
		 		 var openprice_yr = setInfo.getValueAt("openprice_yr");
		 		 openprice_dv[index] = setInfo.getValueAt("openprice_dv");
		 		 openprice_dr[index] = setInfo.getValueAt("openprice_dr");
		 		 var updown_y = setInfo.getValueAt("updown_y");
		 		 updown_d[index] = setInfo.getValueAt("updown_d");

		 		 if(prodcode[index] == prodno_acgold[4])
		 		 {
		 		 	index1_acgold = index;
		 		 }
		 	}
	 }
	if(updown_d[index1_acgold] == "1")
	{
		area4_acgold.setProfitValueColor("red");
	}
	else if(updown_d[index1_acgold] == "2")
	{
		area4_acgold.setProfitValueColor("green");
	}
	else
	{
		area4_acgold.setProfitValueColor("black");
	}
	if(upordown[index1_acgold] == "1")
	{
		price_setValue = openprice_dv[index1_acgold];
	}
	else if(upordown[index1_acgold] == "2")
	{
		price_setValue = openprice_dv[index1_acgold];
	}
	else
	{
		price_setValue = openprice_dv[index1_acgold];
	}

	area4_acgold.setTitleText(metalname[index1_acgold]);
	area4_acgold.setProfitText("当日涨跌值");
	area4_acgold.setProfitValue(price_setValue);
	area4_acgold.setEventClickHandler(acGold);
	attlink_acgold = prodcode[index1_acgold] + '|1|1-' + prodcode[index1_acgold] + '-' + metalname[index1_acgold];
	area4_acgold.setAttachData(attlink_acgold);
	area4_acgold.show();
	jQuery("#span12_acgold").text("中间价");
	jQuery("#span13_acgold").text("银行买入价");
	jQuery("#span14_acgold").text("银行卖出价");
	jQuery("#uint12_acgold").text(middleprice[index1_acgold]);
	jQuery("#uint13_acgold").text(buyprice[index1_acgold]);
	jQuery("#uint14_acgold").text(sellprice[index1_acgold]);
	setButtonHeight();
}
function deal6_acgold(KColl)
{
	var MsgInfo = KColl;
	var icollSet = KColl.getIndexedCollection("market");
	var size = icollSet.size();
	var openprice_dv = new Array();
	var openprice_dr = new Array();
	var prodcode = new Array();
	var upordown = new Array();
	var metalname = new Array();
	var buyprice = new Array();
	var sellprice = new Array();
	var middleprice = new Array();
	var updown_d = new Array();
	var price_setValue;

	//mod by kfzx-wenmr 20150810 2015年8月版开放式网银首页改造
	if(size > 0)
	{
		 	for(var index=0;index<size;index++)
		 	{
		 		 var setInfo = icollSet.getElementAt(index);
		 		 metalname[index] = setInfo.getValueAt("metalname");
		 		 upordown[index] = setInfo.getValueAt("upordown");
		 		 var unit = setInfo.getValueAt("unit");
		 		 buyprice[index] = setInfo.getValueAt("buyprice");
		 		 sellprice[index] = setInfo.getValueAt("sellprice");
		 		 var ebuyprice = setInfo.getValueAt("ebuyprice");
		 		 var esellprice = setInfo.getValueAt("esellprice");
		 		 middleprice[index] = setInfo.getValueAt("middleprice");
		 		 var topmiddleprice = setInfo.getValueAt("topmiddleprice");
		 		 var lowmiddleprice = setInfo.getValueAt("lowmiddleprice");
		 		 var currcode = setInfo.getValueAt("currcode");
		 		 prodcode[index] = setInfo.getValueAt("prodcode");
		 		 var metalflag = setInfo.getValueAt("metalflag");
		 		 var openprice_yr = setInfo.getValueAt("openprice_yr");
		 		 openprice_dv[index] = setInfo.getValueAt("openprice_dv");
		 		 openprice_dr[index] = setInfo.getValueAt("openprice_dr");
		 		 var updown_y = setInfo.getValueAt("updown_y");
		 		 updown_d[index] = setInfo.getValueAt("updown_d");

		 		 if(prodcode[index] == prodno_acgold[5])
		 		 {
		 		 	index1_acgold = index;
		 		 }
		 	}
	 }

	if(updown_d[index1_acgold] == "1")
	{
		area5_acgold.setProfitValueColor("red");
	}
	else if(updown_d[index1_acgold] == "2")
	{
		area5_acgold.setProfitValueColor("green");
	}
	else
	{
		area5_acgold.setProfitValueColor("black");
	}
	if(upordown[index1_acgold] == "1")
	{
		price_setValue = openprice_dv[index1_acgold];
	}
	else if(upordown[index1_acgold] == "2")
	{
		price_setValue = openprice_dv[index1_acgold];
	}
	else
	{
		price_setValue = openprice_dv[index1_acgold];
	}

	area5_acgold.setTitleText(metalname[index1_acgold]);
	area5_acgold.setProfitText("当日涨跌值");
	area5_acgold.setProfitValue(price_setValue);
	area5_acgold.setEventClickHandler(acGold);
	attlink_acgold = prodcode[index1_acgold] + '|1|1-' + prodcode[index1_acgold] + '-' + metalname[index1_acgold];
	area5_acgold.setAttachData(attlink_acgold);
	area5_acgold.show();
	jQuery("#span15_acgold").text("中间价");
	jQuery("#span16_acgold").text("银行买入价");
	jQuery("#span17_acgold").text("银行卖出价");
	jQuery("#uint15_acgold").text(middleprice[index1_acgold]);
	jQuery("#uint16_acgold").text(buyprice[index1_acgold]);
	jQuery("#uint17_acgold").text(sellprice[index1_acgold]);
	setButtonHeight();
}
function ajaxgo_goldaccrual(num)
{
	var sendParam = {};
    sendParam["tranCode"]="A00505";//per_ryGoldOp
    if(num == 0)
    {
    EBDataStruct.sendAjax({
    						data: sendParam,
    						dataType: "json",
    						url: "${pageContext.request.contextPath}/AsynGetDataServlet",
    						failCallBack: function(result){ dealerror_acgold(result); },
    						successCallBack: function(kc1){
                        		deal_goldaccrual(kc1);
                        	},
    						isDisplay: false,
    						displayArea: "pselected"
    					});
    }
    else if(num == 1)
    {
    EBDataStruct.sendAjax({
    						data: sendParam,
    						dataType: "json",
    						url: "${pageContext.request.contextPath}/AsynGetDataServlet",
    						failCallBack: function(result){ dealerror_acgold(result); },
    						successCallBack: function(kc2){
                        		deal_goldaccrual1(kc2);
                        	},
    						isDisplay: false,
    						displayArea: "pselected"
    					});
    }
    else if(num == 2)
    {
    EBDataStruct.sendAjax({
    						data: sendParam,
    						dataType: "json",
    						url: "${pageContext.request.contextPath}/AsynGetDataServlet",
    						failCallBack: function(result){ dealerror_acgold(result); },
    						successCallBack: function(kc3){
                        		deal_goldaccrual2(kc3);
                        	},
    						isDisplay: false,
    						displayArea: "pselected"
    					});
    }
    else if(num == 3)
    {
    EBDataStruct.sendAjax({
    						data: sendParam,
    						dataType: "json",
    						url: "${pageContext.request.contextPath}/AsynGetDataServlet",
    						failCallBack: function(result){ dealerror_acgold(result); },
    						successCallBack: function(kc4){
                        		deal_goldaccrual3(kc4);
                        	},
    						isDisplay: false,
    						displayArea: "pselected"
    					});
    }
    else if(num == 4)
    {
    EBDataStruct.sendAjax({
    						data: sendParam,
    						dataType: "json",
    						url: "${pageContext.request.contextPath}/AsynGetDataServlet",
    						failCallBack: function(result){ dealerror_acgold(result); },
    						successCallBack: function(kc5){
                        		deal_goldaccrual4(kc5);
                        	},
    						isDisplay: false,
    						displayArea: "pselected"
    					});
    }
    else if(num == 5)
    {
    EBDataStruct.sendAjax({
    						data: sendParam,
    						dataType: "json",
    						url: "${pageContext.request.contextPath}/AsynGetDataServlet",
    						failCallBack: function(result){ dealerror_acgold(result); },
    						successCallBack: function(kc6){
                        		deal_goldaccrual5(kc6);
                        	},
    						isDisplay: false,
    						displayArea: "pselected"
    					});
    }
}
function deal_goldaccrual(KColl)
{
	var icollSet = KColl.getIndexedCollection("pronoinfo");
	var icollSet2 = KColl.getIndexedCollection("ryinfo");
	var size=icollSet.size();
	var size2=icollSet2.size();
	var buyprice_accrual;
	var sellprice_accrual;
	var prodname_accrual;
	var i = 0;
	var j = 0;
	try{
		if(size > 0)
		{
			for(i=0;i<size;i++)
			{
		 		var setInfo = icollSet.getElementAt(i);
		 		var prodcode = setInfo.getValueAt("prodcode");
		 		var buyprice = setInfo.getValueAt("buyprice");
		 		var sellprice = setInfo.getValueAt("sellprice");

		 		if(prodno_accrual[0] == prodcode)
		 		{
					if(buyprice > 0 && sellprice > 0)
					{
						var blen = buyprice.length;
						var slen = sellprice.length;
						if(blen > 2)
						{
							buyprice = buyprice.substring(0,blen-2) + "." + buyprice.substring(blen-2,blen);
						}
						else if(blen == 2)
						{
							buyprice = "0." + buyprice;
						}
						else
						{
							buyprice = "0.0" + buyprice;
						}
						if(slen > 2)
						{
							sellprice = sellprice.substring(0,slen-2) + "." + sellprice.substring(slen-2,slen);
						}
						else if(slen == 2)
						{
							sellprice = "0." +sellprice;
						}
						else
						{
							sellprice = "0.0" + sellprice;
						}
					}
		 			while(prodcode.length < 12)
					{
						prodcode = "0" + prodcode;
					}
					for(j=0; j < size2; j++)
					{
						var setInfo2 = icollSet2.getElementAt(j);
						var jcTXONOFF = setInfo2.getValueAt("jcTXONOFF");
				   	 	if(jcTXONOFF!=1)continue;
		 				var productId = setInfo2.getValueAt("productId");
		 				var productName = setInfo2.getValueAt("productName");
		 		    	while(productId.length < 12)
				    	{
					    	productId = "0" + productId;
				    	}
		 				if(prodcode == productId)
		 				{
		 					prodname_accrual = productName;
							buyprice_accrual = buyprice;
							sellprice_accrual = sellprice;
		 				}
					}
				}
			}
		}

	}catch(e){}

	area0_acgold.setTitleText(prodname_accrual);
	area0_acgold.setEventClickHandler(accrualGold);
	attlink_acgold = prodno_accrual;
	area0_acgold.setAttachData(attlink_acgold);
	area0_acgold.setPaddingTop("32");
	area0_acgold.show();
	jQuery("#span0_acgold").text("主动积存价");
	jQuery("#span1_acgold").text("赎回价");
	jQuery("#uint0_acgold").text(buyprice_accrual);
	jQuery("#uint1_acgold").text(sellprice_accrual);
	setButtonHeight();
}

function deal_goldaccrual1(KColl)
{
	var icollSet = KColl.getIndexedCollection("pronoinfo");
	var icollSet2 = KColl.getIndexedCollection("ryinfo");
	var size=icollSet.size();
	var size2=icollSet2.size();
	var buyprice_accrual;
	var sellprice_accrual;
	var prodname_accrual;
	var i = 0;
	var j = 0;
	try{
		if(size > 0)
		{
			for(i=0;i<size;i++)
			{
		 		var setInfo = icollSet.getElementAt(i);
		 		var prodcode = setInfo.getValueAt("prodcode");
		 		var buyprice = setInfo.getValueAt("buyprice");
		 		var sellprice = setInfo.getValueAt("sellprice");

		 		if(prodno_accrual[1] == prodcode)
		 		{
					if(buyprice > 0 && sellprice > 0)
					{
						var blen = buyprice.length;
						var slen = sellprice.length;
						if(blen > 2)
						{
							buyprice = buyprice.substring(0,blen-2) + "." + buyprice.substring(blen-2,blen);
						}
						else if(blen == 2)
						{
							buyprice = "0." + buyprice;
						}
						else
						{
							buyprice = "0.0" + buyprice;
						}
						if(slen > 2)
						{
							sellprice = sellprice.substring(0,slen-2) + "." + sellprice.substring(slen-2,slen);
						}
						else if(slen == 2)
						{
							sellprice = "0." +sellprice;
						}
						else
						{
							sellprice = "0.0" + sellprice;
						}
					}
		 			while(prodcode.length < 12)
					{
						prodcode = "0" + prodcode;
					}
					for(j=0; j < size2; j++)
					{
						var setInfo2 = icollSet2.getElementAt(j);
						var jcTXONOFF = setInfo2.getValueAt("jcTXONOFF");
				   	 	if(jcTXONOFF!=1)continue;
		 				var productId = setInfo2.getValueAt("productId");
		 				var productName = setInfo2.getValueAt("productName");
		 		    	while(productId.length < 12)
				    	{
					    	productId = "0" + productId;
				    	}
		 				if(prodcode == productId)
		 				{
		 					prodname_accrual = productName;
							buyprice_accrual = buyprice;
							sellprice_accrual = sellprice;
		 				}
					}
				}
			}
		}

	}catch(e){}

	area1_acgold.setTitleText(prodname_accrual);
	area1_acgold.setEventClickHandler(accrualGold);
	attlink_acgold = prodno_accrual;
	area1_acgold.setAttachData(attlink_acgold);
	area1_acgold.setPaddingTop("32");
	area1_acgold.show();
	jQuery("#span3_acgold").text("主动积存价");
	jQuery("#span4_acgold").text("赎回价");
	jQuery("#uint3_acgold").text(buyprice_accrual);
	jQuery("#uint4_acgold").text(sellprice_accrual);
	setButtonHeight();
}
function deal_goldaccrual2(KColl)
{
	var icollSet = KColl.getIndexedCollection("pronoinfo");
	var icollSet2 = KColl.getIndexedCollection("ryinfo");
	var size=icollSet.size();
	var size2=icollSet2.size();
	var buyprice_accrual;
	var sellprice_accrual;
	var prodname_accrual;
	var i = 0;
	var j = 0;
	try{
		if(size > 0)
		{
			for(i=0;i<size;i++)
			{
		 		var setInfo = icollSet.getElementAt(i);
		 		var prodcode = setInfo.getValueAt("prodcode");
		 		var buyprice = setInfo.getValueAt("buyprice");
		 		var sellprice = setInfo.getValueAt("sellprice");

		 		if(prodno_accrual[2] == prodcode)
		 		{
					if(buyprice > 0 && sellprice > 0)
					{
						var blen = buyprice.length;
						var slen = sellprice.length;
						if(blen > 2)
						{
							buyprice = buyprice.substring(0,blen-2) + "." + buyprice.substring(blen-2,blen);
						}
						else if(blen == 2)
						{
							buyprice = "0." + buyprice;
						}
						else
						{
							buyprice = "0.0" + buyprice;
						}
						if(slen > 2)
						{
							sellprice = sellprice.substring(0,slen-2) + "." + sellprice.substring(slen-2,slen);
						}
						else if(slen == 2)
						{
							sellprice = "0." +sellprice;
						}
						else
						{
							sellprice = "0.0" + sellprice;
						}
					}
		 			while(prodcode.length < 12)
					{
						prodcode = "0" + prodcode;
					}
					for(j=0; j < size2; j++)
					{
						var setInfo2 = icollSet2.getElementAt(j);
						var jcTXONOFF = setInfo2.getValueAt("jcTXONOFF");
				   	 	if(jcTXONOFF!=1)continue;
		 				var productId = setInfo2.getValueAt("productId");
		 				var productName = setInfo2.getValueAt("productName");
		 		    	while(productId.length < 12)
				    	{
					    	productId = "0" + productId;
				    	}
		 				if(prodcode == productId)
		 				{
		 					prodname_accrual = productName;
							buyprice_accrual = buyprice;
							sellprice_accrual = sellprice;
		 				}
					}
				}
			}
		}

	}catch(e){}

	area2_acgold.setTitleText(prodname_accrual);
	area2_acgold.setEventClickHandler(accrualGold);
	attlink_acgold = prodno_accrual;
	area2_acgold.setAttachData(attlink_acgold);
	area2_acgold.setPaddingTop("32");
	area2_acgold.show();
	jQuery("#span6_acgold").text("主动积存价");
	jQuery("#span7_acgold").text("赎回价");
	jQuery("#uint6_acgold").text(buyprice_accrual);
	jQuery("#uint7_acgold").text(sellprice_accrual);
	setButtonHeight();
}
function deal_goldaccrual3(KColl)
{
	var icollSet = KColl.getIndexedCollection("pronoinfo");
	var icollSet2 = KColl.getIndexedCollection("ryinfo");
	var size=icollSet.size();
	var size2=icollSet2.size();
	var buyprice_accrual;
	var sellprice_accrual;
	var prodname_accrual;
	var i = 0;
	var j = 0;
	try{
		if(size > 0)
		{
			for(i=0;i<size;i++)
			{
		 		var setInfo = icollSet.getElementAt(i);
		 		var prodcode = setInfo.getValueAt("prodcode");
		 		var buyprice = setInfo.getValueAt("buyprice");
		 		var sellprice = setInfo.getValueAt("sellprice");

		 		if(prodno_accrual[3] == prodcode)
		 		{
					if(buyprice > 0 && sellprice > 0)
					{
						var blen = buyprice.length;
						var slen = sellprice.length;
						if(blen > 2)
						{
							buyprice = buyprice.substring(0,blen-2) + "." + buyprice.substring(blen-2,blen);
						}
						else if(blen == 2)
						{
							buyprice = "0." + buyprice;
						}
						else
						{
							buyprice = "0.0" + buyprice;
						}
						if(slen > 2)
						{
							sellprice = sellprice.substring(0,slen-2) + "." + sellprice.substring(slen-2,slen);
						}
						else if(slen == 2)
						{
							sellprice = "0." +sellprice;
						}
						else
						{
							sellprice = "0.0" + sellprice;
						}
					}
		 			while(prodcode.length < 12)
					{
						prodcode = "0" + prodcode;
					}
					for(j=0; j < size2; j++)
					{
						var setInfo2 = icollSet2.getElementAt(j);
						var jcTXONOFF = setInfo2.getValueAt("jcTXONOFF");
				   	 	if(jcTXONOFF!=1)continue;
		 				var productId = setInfo2.getValueAt("productId");
		 				var productName = setInfo2.getValueAt("productName");
		 		    	while(productId.length < 12)
				    	{
					    	productId = "0" + productId;
				    	}
		 				if(prodcode == productId)
		 				{
		 					prodname_accrual = productName;
							buyprice_accrual = buyprice;
							sellprice_accrual = sellprice;
		 				}
					}
				}
			}
		}

	}catch(e){}

	area3_acgold.setTitleText(prodname_accrual);
	area3_acgold.setEventClickHandler(accrualGold);
	attlink_acgold = prodno_accrual;
	area3_acgold.setAttachData(attlink_acgold);
	area3_acgold.setPaddingTop("32");
	area3_acgold.show();
	jQuery("#span9_acgold").text("主动积存价");
	jQuery("#span10_acgold").text("赎回价");
	jQuery("#uint9_acgold").text(buyprice_accrual);
	jQuery("#uint10_acgold").text(sellprice_accrual);
	setButtonHeight();
}
function deal_goldaccrual4(KColl)
{
	var icollSet = KColl.getIndexedCollection("pronoinfo");
	var icollSet2 = KColl.getIndexedCollection("ryinfo");
	var size=icollSet.size();
	var size2=icollSet2.size();
	var buyprice_accrual;
	var sellprice_accrual;
	var prodname_accrual;
	var i = 0;
	var j = 0;
	try{
		if(size > 0)
		{
			for(i=0;i<size;i++)
			{
		 		var setInfo = icollSet.getElementAt(i);
		 		var prodcode = setInfo.getValueAt("prodcode");
		 		var buyprice = setInfo.getValueAt("buyprice");
		 		var sellprice = setInfo.getValueAt("sellprice");

		 		if(prodno_accrual[4] == prodcode)
		 		{
					if(buyprice > 0 && sellprice > 0)
					{
						var blen = buyprice.length;
						var slen = sellprice.length;
						if(blen > 2)
						{
							buyprice = buyprice.substring(0,blen-2) + "." + buyprice.substring(blen-2,blen);
						}
						else if(blen == 2)
						{
							buyprice = "0." + buyprice;
						}
						else
						{
							buyprice = "0.0" + buyprice;
						}
						if(slen > 2)
						{
							sellprice = sellprice.substring(0,slen-2) + "." + sellprice.substring(slen-2,slen);
						}
						else if(slen == 2)
						{
							sellprice = "0." +sellprice;
						}
						else
						{
							sellprice = "0.0" + sellprice;
						}
					}
		 			while(prodcode.length < 12)
					{
						prodcode = "0" + prodcode;
					}
					for(j=0; j < size2; j++)
					{
						var setInfo2 = icollSet2.getElementAt(j);
						var jcTXONOFF = setInfo2.getValueAt("jcTXONOFF");
				   	 	if(jcTXONOFF!=1)continue;
		 				var productId = setInfo2.getValueAt("productId");
		 				var productName = setInfo2.getValueAt("productName");
		 		    	while(productId.length < 12)
				    	{
					    	productId = "0" + productId;
				    	}
		 				if(prodcode == productId)
		 				{
		 					prodname_accrual = productName;
							buyprice_accrual = buyprice;
							sellprice_accrual = sellprice;
		 				}
					}
				}
			}
		}

	}catch(e){}

	area4_acgold.setTitleText(prodname_accrual);
	area4_acgold.setEventClickHandler(accrualGold);
	attlink_acgold = prodno_accrual;
	area4_acgold.setAttachData(attlink_acgold);
	area4_acgold.setPaddingTop("32");
	area4_acgold.show();
	jQuery("#span12_acgold").text("主动积存价");
	jQuery("#span13_acgold").text("赎回价");
	jQuery("#uint12_acgold").text(buyprice_accrual);
	jQuery("#uint13_acgold").text(sellprice_accrual);
	setButtonHeight();
}
function deal_goldaccrual5(KColl)
{
	var icollSet = KColl.getIndexedCollection("pronoinfo");
	var icollSet2 = KColl.getIndexedCollection("ryinfo");
	var size=icollSet.size();
	var size2=icollSet2.size();
	var buyprice_accrual;
	var sellprice_accrual;
	var prodname_accrual;
	var i = 0;
	var j = 0;
	try{
		if(size > 0)
		{
			for(i=0;i<size;i++)
			{
		 		var setInfo = icollSet.getElementAt(i);
		 		var prodcode = setInfo.getValueAt("prodcode");
		 		var buyprice = setInfo.getValueAt("buyprice");
		 		var sellprice = setInfo.getValueAt("sellprice");

		 		if(prodno_accrual[5] == prodcode)
		 		{
					if(buyprice > 0 && sellprice > 0)
					{
						var blen = buyprice.length;
						var slen = sellprice.length;
						if(blen > 2)
						{
							buyprice = buyprice.substring(0,blen-2) + "." + buyprice.substring(blen-2,blen);
						}
						else if(blen == 2)
						{
							buyprice = "0." + buyprice;
						}
						else
						{
							buyprice = "0.0" + buyprice;
						}
						if(slen > 2)
						{
							sellprice = sellprice.substring(0,slen-2) + "." + sellprice.substring(slen-2,slen);
						}
						else if(slen == 2)
						{
							sellprice = "0." +sellprice;
						}
						else
						{
							sellprice = "0.0" + sellprice;
						}
					}
		 			while(prodcode.length < 12)
					{
						prodcode = "0" + prodcode;
					}
					for(j=0; j < size2; j++)
					{
						var setInfo2 = icollSet2.getElementAt(j);
						var jcTXONOFF = setInfo2.getValueAt("jcTXONOFF");
				   	 	if(jcTXONOFF!=1)continue;
		 				var productId = setInfo2.getValueAt("productId");
		 				var productName = setInfo2.getValueAt("productName");
		 		    	while(productId.length < 12)
				    	{
					    	productId = "0" + productId;
				    	}
		 				if(prodcode == productId)
		 				{
		 					prodname_accrual = productName;
							buyprice_accrual = buyprice;
							sellprice_accrual = sellprice;
		 				}
					}
				}
			}
		}

	}catch(e){}

	area5_acgold.setTitleText(prodname_accrual);
	area5_acgold.setEventClickHandler(accrualGold);
	attlink_acgold = prodno_accrual;
	area5_acgold.setAttachData(attlink_acgold);
	area5_acgold.setPaddingTop("32");
	area5_acgold.show();
	jQuery("#span15_acgold").text("主动积存价");
	jQuery("#span16_acgold").text("赎回价");
	jQuery("#uint15_acgold").text(buyprice_accrual);
	jQuery("#uint16_acgold").text(sellprice_accrual);
	setButtonHeight();
}
</script>

<jsp:include page="8.jsp"></jsp:include>
<script language="javascript">
var loadFlag= true;
function freshForeignInfo() {
	if(!loadFlag) return;
	$(".ebdp-pc4promote-infoarea-content").css("width", "210px"); //width: 210px;

	// 1:014#013@美元/港币, 2:130060001311, 3:015,
	var result_foreign = "2:130060000931, 2:130060000932, 2:130060000933, 2:130060000934, 2:130060000935, 2:130060001311, ";
	var foreignResultss = result_foreign.split(", ");

	for ( var icount = 0; icount < foreignResultss.length - 1; icount++) {
		var prodNum = foreignResultss[icount]; // 1:013#014@美元/港元

		var prodType = prodNum.split(":")[0];        //外汇类型:   2            1
		var prodValue = prodNum.split(":")[1].split("@")[0];//产品代码   or  币种1#币种2

		if (prodType == 1) { //prodValue=币种1#币种2
			var currName = prodNum.split("@")[1];//币种对应名称
			var sellc = prodValue.split("#")[0];
			var buyc = prodValue.split("#")[1];

			//外汇买卖
			foreignTradingAjaxGo(sellc, buyc, currName, icount);
		}
		if (prodType == 2) { //prodValue=产品代码
			//账户外汇
			foreignExchangeAjaxGo(prodValue, icount);
		}
		if (prodType == 3) { //prodValue=产品代码
			//增加支持结售汇类型
			SmallPurchaseFEAjaxGo(prodValue, icount);
		}
	} //end for

	for ( var icount = foreignResultss.length-1; icount < 6 ; icount++) {
		$("#foreign_area"+icount).remove();
	}

	loadFlag= false;
}
</script>
<jsp:include page="3.jsp"></jsp:include>
   <!--账户商品 end-->

        </div>
    </div>
</div>




		<!-- 购物  12月补丁隐藏购物楼层-->

		<!-- 惠生活 -->





<div class="huishenghuo-block">
	<div class="huishenghuo-box width">
    	<a class="top-bg"></a>
        <div class="huishenghuo-top">
        	<h4 class="tit">惠生活</h4>
            <a>娱、食、住、行 一站搞定</a>
        </div>
        <div class="huishenghuo-main">
        	<ul>
                <li>
                	<div class="pic-box">
               			<div class="pic">


							 	 <a href="javascript:goToHuiAdMid();">
							 	 	<img class="lazy" alt="" data-original="https://image.mybank.icbc.com.cn//picture/EBankpAdvPic/8044785575.png" />
							 	 </a>


               			</div>
                	</div>

                <h6>优惠活动</h6><div class=huishenghuo-main-div><p>专属优惠，给力活动嗨翻天</p></div>

                </li>
                <li>
                	<div class="pic-box">
                			<div class="pic">

								 	 <a href="javascript:goToHuiAdLeft();">
								 	 	<img class="lazy" alt="" data-original="https://image.mybank.icbc.com.cn//picture/EBankpAdvPic/1016431715.png" />
								 	 </a>

                			</div>
                		</a>
                	</div>

                <h6>城市生活</h6><div class=huishenghuo-main-div><p>包罗万象，精彩生活轻松享</p></div>

                </li>
                <li>
                	<div class="pic-box">
                			<div class="pic">

							 	 <a href="javascript:goToHuiAdRight();"><img class="lazy" alt="" data-original="https://image.mybank.icbc.com.cn//picture/EBankpAdvPic/0269355270.png" /></a>

                			</div>

                	</div>

                <h6>本地特色</h6><div class=huishenghuo-main-div><p>当地特色，贴心服务只为您</p></div>

                </li>
            </ul>
        </div>
    </div>
</div>


<script type="text/javascript">
	 function goToHuiAdLeft(){
		var adsrc = "2";
		var big_adjsurl = "https://image.mybank.icbc.com.cn//picture/EBankpAdvPic/1016431715.png";
		var actiontype = "2";
 		var action = "AtomSerivceSubmit('PBL200203','')";


		//广告由门户维护，BIG_ADJSURL中为门户提供的js相对路径。
		if(adsrc=="1"){
			/* window.open(big_adjsurl); */
		}

		//广告信息由内管提供，BIG_ADJSURL为内管上传的图片路径
		if(adsrc=="2"){
			//超链接时，ACTION为完整URL。
			if("1" == actiontype){
		 		window.open(action);
			}
			//js动作，ACTION为触发的js方法如AtomSerivceSubmit('PBL200306')
			if ("2" == actiontype){
				eval(action);
			}
		}
	}


	 function goToHuiAdMid(){
		var adsrc = "2";
		var big_adjsurl = "https://image.mybank.icbc.com.cn//picture/EBankpAdvPic/8044785575.png";
		var actiontype = "2";
 		var action = "AtomSerivceSubmit('PBL200203','')";


		//广告由门户维护，BIG_ADJSURL中为门户提供的js相对路径。
		if(adsrc=="1"){
			/* window.open(big_adjsurl); */
		}

		//广告信息由内管提供，BIG_ADJSURL为内管上传的图片路径
		if(adsrc=="2"){
			//超链接时，ACTION为完整URL。
			if("1" == actiontype){
		 		window.open(action);
			}
			//js动作，ACTION为触发的js方法如AtomSerivceSubmit('PBL200306')
			if ("2" == actiontype){
				eval(action);
			}
		}
	}


	 function goToHuiAdRight(){
		var adsrc = "2";
		var big_adjsurl = "https://image.mybank.icbc.com.cn//picture/EBankpAdvPic/0269355270.png";
		var actiontype = "2";
 		var action = "perbankAtomLocationTW('PBL20164001','',dse_sessionId)";

		//广告由门户维护，BIG_ADJSURL中为门户提供的js相对路径。
		if(adsrc=="1"){
			/* window.open(big_adjsurl); */
		}

		//广告信息由内管提供，BIG_ADJSURL为内管上传的图片路径
		if(adsrc=="2"){
			//超链接时，ACTION为完整URL。
			if("1" == actiontype){
		 		window.open(action);
			}
			//js动作，ACTION为触发的js方法如AtomSerivceSubmit('PBL200306')
			if ("2" == actiontype){
				eval(action);
			}
		}
	}
</script>

		<!-- 页脚信息 辅助交易区-->


<!--底部快捷菜单start-->
<div id="ICBC_helper">

<script type="text/javascript">
	function dealException(){

	if(!detectAssistComm()){
		//没有安装助手弹出新提示，点击后下载
		document.getElementById("axsafetip").innerHTML = "<table style='font-size:12px' bgcolor=\"#ffffcc\" cellspacing=\"0\" cellpadding=\"0\"><td><font color=\"#FF6600\">“工行网银助手”助您一键安装更新网银安全控件及工具，建议<a href='javascript:downloadAss();'><u><font color='blue'>安装</font></u></a>。</font></td></tr></table>"
		jQuery(".input-area").css("height","45px");
	}else{
		//已经安装助手提示信息不变，自动启动助手
		document.getElementById("axsafetip").innerHTML = "<table style='font-size:12px' bgcolor=\"#ffffcc\" cellspacing=\"0\" cellpadding=\"0\"><td><font color=\"#FF6600\">如果无法输入密码，请根据浏览器弹出提示进行控件安装。</font></td></tr></table>"
		jQuery(".input-area").css("height","45px");
		try{RunAssistComm();}catch(exception){}
			}

}
function downloadAss(){
	window.open('http://www.icbc.com.cn${pageContext.request.contextPath}/icbc/html/download/EbankToolsSoftware${pageContext.request.contextPath}/icbcSetupIntegration.msi');
}
</script>

<div class="attention-block">
	<div class="attention-box width">
 		<ul class="attention-ul">
        	  <li>
            	<div class="pic"><img class="lazy" alt="" data-original="${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/icon-attention-1.png"/></div>
            	<a href="http://www.icbc.com.cn${pageContext.request.contextPath}/icbc/%e7%94%b5%e5%ad%90%e9%93%b6%e8%a1%8c/%e5%ae%89%e5%85%a8%e4%b8%93%e5%8c%ba/" target="_blank"
  					title="提供专业建议，协助您安全地使用网上银行。" >安全专区</a>
  				<a href="${pageContext.request.contextPath}/icbc/newperbank/main/risk_tip_new.jsp" target="_blank" >风险提示</a>
  					<a href="http://www.icbc.com.cn${pageContext.request.contextPath}/icbcCOLLEGE/client/page/PageShow.aspx"  target="_blank"
  					title="使用网上银行时的常见问题及解决方法。" >热点问题</a>
    		 </li>
        	 <li>
            	<div class="pic"><img class="lazy" alt="" data-original="${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/icon-attention-2.png"/></div>
  					<a href="${pageContext.request.contextPath}/icbc/newperbank/logonFreeze.jsp"  target="_blank"
  					title="点击进入自助关闭网上银行登录。" >网银关闭</a>
  				<a href="${pageContext.request.contextPath}/icbc/newperbank/wapLogonFreeze.jsp"  target="_blank"
  					 title="点击进入自助关闭手机银行登录" >手机银行关闭</a>

        						<a href="http://www.icbc.com.cn${pageContext.request.contextPath}/icbc/网银安全控件/default.htm" target="_blank" >小e安全检测</a>

 			 </li>

        	<li>
            	<div class="pic"><img class="lazy" alt="" data-original="${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/icon-attention-3.png"/></div>

  					<a href="/regist/regist_index.jsp?StructCode=1&encryptedData=w9A3onPU54b7Lq9Du2GSCLs8Fpe9sVkrmFZHbpyAf74JsR6gEJL8ONaW1btfSEuQ7VZKRFqR6osR

Rr2cbm2XcEMBgjny0OOiSRhxSFBbuxRRV4vtmX9Yx%2BvmAeqXB3ov4wMRE1K4pQuynyF6OxrqbMzS

nlcpqSHdRjGz8UaOW69r/70YBfOn0CPyVMaYcOVAd7cJbWx%2B8g3OZYYLzkofLo38v%2BXI3qG3r4O%2B

c9yj1bKDJiYeNRGV4ZdGCnHhsu0hgM/rhHRe25tWjjXXXKLThYhH%2BEtyjlovZTaRIN0Q9S1u1Poq

EX3b2D2WC%2BsWOUBoVOHtTIT66nR6zjghWDRUBRaOWgCymHBey9LxoZBQHt4fPxPpejeFNJpHaU7V

DkggWQD7PZqclCfbVho7WFutMqxxDNt5wgEpw8Cz7ssPCDk=%2B"   target="_blank"
  					title="自助开通网上银行，您就可以办理账户查询以及网上买卖证券、外汇、黄金、保险等业务。" >自助注册</a>
  				<a href="${pageContext.request.contextPath}/icbc/newperbank/main/login_agr_new.jsp" target="_blank" >电子银行章程 </a>

  				<!-- <a href="${pageContext.request.contextPath}/icbc/newperbank/logonIdsearch125.jsp"  target="_blank" >找回用户名</a> -->
  				<a href="javascript:AtomSerivceSubmit('PBL100200');">体验评价</a>
  			</li>
        	<li>
            	<div class="pic"><img class="lazy" alt="" data-original="${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/icon-attention-4.png"/></div>
  					<a href="${pageContext.request.contextPath}/icbc/newperbank/bankbook/bankbook_index.jsp"
  					title="使用中国工商银行的活期存折账号和密码登录，您就可以办理账户查询业务。"   target="_blank">存折版登录</a>
  					<a href="https://corporbank-simp.icbc.com.cn${pageContext.request.contextPath}/icbc/normalbank/index.jsp"    target="_blank">企业网上银行</a>
  					<a href="${pageContext.request.contextPath}/icbc/newenperbank/perbank3/frame/frame_index.jsp" target="_blank">Personal Internet Banking</a>

  			<!-- 	<li>
  					<a href="${pageContext.request.contextPath}/icbc/newperbank/e_card/ecard_financing_findname_index.jsp" title=""  target="_blank">e理财综合服务</a>
  				</li> -->
  				<!-- <li>
  					<a href="${pageContext.request.contextPath}/icbc/newperbank/binding/binding_confirm_submit.jsp"
  					title="为客户提供手机号/E-mail与账号绑定关系确认的功能"  target="_blank">手机号/Email与账号绑定关系</a>
  				</li> -->
 			</li>
 			<li>
            	<div class="pic"><img class="lazy" alt="" data-original="${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/icon-attention-5.png"/></div>
            		<a >为了保证正常使用网上银行<br />请您下载<span onclick="downloadAss()" style="text-decoration:underline;font-weight:normal;color:#C7000B;cursor:pointer;">&nbsp;网银助手</span><br />进行安全设置。</a>
  			</li>
  		</ul>
	</div>
</div>

</div>

	</div>

</div>

<!-- 登录区域 -->
<!-- 登录处理页面 -->




<html>


<jsp:include page="4.jsp"></jsp:include>













<jsp:include page="5.jsp"></jsp:include>








<jsp:include page="6.jsp"></jsp:include>

<!--主交易区start-->
<form name="topfameFrom"   id="topfameFrom"  method="get"  target="perbank-content-frame"
	action="servlet/icbcPERBANKLocationService" onSubmit="return false;">
	<input type="hidden"name="transData" value="">
	<input type="hidden"name="serviceId" value="PBL200202">
	<input type="hidden"name="zoneNo" value="0200">
	<input type="hidden"name="serviceIdInto" value="">
	<input type="hidden"name="dse_sessionId" value="">
	<input type="hidden"name="isflot" value="0">
	<input type="hidden"name="Language" value="zh_CN">
	<input type="hidden"name="requestChannel" value="302">
</form>
<form name="topfameFrom1"   id="topfameFrom1"  method="post"  target="ICBC_window_flot_frame"
	action="servlet/icbcPERBANKLocationService" onSubmit="return false;">
	<input type="hidden"name="transData" value="">
	<input type="hidden"name="serviceId" value="PBL200202">
	<input type="hidden"name="zoneNo" value="0200">
	<input type="hidden"name="serviceIdInto" value="">
	<input type="hidden"name="dse_sessionId" value="${dse_sessionId}">
	<input type="hidden"name="isflot" value="1">
	<input type="hidden"name="Language" value="zh_CN">
	<input type="hidden"name="requestChannel" value="302">
</form>
<form name="draw_topfameFrom1"   id="draw_topfameFrom1"  method="post"  target="DRAW_ICBC_window_flot_frame"
	action="servlet/icbcPERBANKLocationService" onSubmit="return false;">
	<input type="hidden"name="transData" value="">
	<input type="hidden"name="serviceId" value="PBL200202">
	<input type="hidden"name="zoneNo" value="0200">
	<input type="hidden"name="serviceIdInto" value="">
	<input type="hidden"name="dse_sessionId" value="${dse_sessionId}">
	<input type="hidden"name="isflot" value="1">
	<input type="hidden"name="Language" value="zh_CN">
	<input type="hidden"name="requestChannel" value="302">
</form>
<form name="topfameFrom2" id="topfameFrom2"  method="post"  target="news-pop-frame"
	action="servlet/icbcPERBANKLocationService" onSubmit="return false;">
	<input type="hidden"name="transData" value="">
	<input type="hidden"name="serviceId" value="">
	<input type="hidden"name="zoneNo" value="0200">
	<input type="hidden"name="serviceIdInto" value="">
	<input type="hidden"name="dse_sessionId" value="${dse_sessionId}">
	<input type="hidden"name="isflot" value="0">
	<input type="hidden"name="Language" value="zh_CN">
	<input type="hidden"name="requestChannel" value="302">
</form>
<div id="atomService_content" class="width" style="margin-top:0px;margin-bottom:60px;display:none">
 	<iframe id="perbank-content-frame"  name="perbank-content-frame" frameborder="no"  scrolling="no" VSPACE="0" style="top:0;width:100%;border:0 none;overflow:hidden;"  class="content-frame" onload="myload()"></iframe>
</div>
<script>

     function myload() {
         var ifm= document.getElementById("perbank-content-frame");
         ifm.height=document.documentElement.scrollHeight;
     }


</script>

<div id="guessyoulike_div_outer" style="display:none;">


</div>
<div class="footer-block">
  <div class="width footer-block-body">
    <div class="footer-left">

			<ul>
			<li class="first"><a href="http://www.icbc.com.cn${pageContext.request.contextPath}/icbc/%e5%ae%a2%e6%88%b7%e6%9c%8d%e5%8a%a1/map.htm" target="_blank">网站地图</a></li><li class=""><a href="http://www.icbc.com.cn${pageContext.request.contextPath}/icbc/%e5%ae%a2%e6%88%b7%e6%9c%8d%e5%8a%a1/service.htm" target="_blank">联系我们</a></li><li class=""><a href="http://www.icbc.com.cn${pageContext.request.contextPath}/icbcltd/%e7%bd%91%e7%ab%99%e5%a3%b0%e6%98%8e/%e7%bd%91%e7%ab%99%e5%a3%b0%e6%98%8e.htm" target="_blank">网站声明</a></li><li class="last"><a href="http://www.icbc.com.cn${pageContext.request.contextPath}/icbc/%e5%ae%a2%e6%88%b7%e6%9c%8d%e5%8a%a1/business_offices.htm" target="_blank">服务网点</a></li>
            </ul>

    </div>
    <div class="footer-right">
      <ul class="copyright-ul">

			<li>服务热线95588</li>

			<li>中国工商银行版权所有</li>
			<li>京ICP证   030247号</li>
	  </ul>
    </div>
  </div>
</div>

<div id="hall_div" style="position:fixed; width:auto; height: auto; right:0px; top: 200px; display: block; z-index:1; display:none;">
	<a href="javascript:logPV('PBL20167001');perbankAtomLocationTW('PBL20167001','5',dse_sessionId);" ><span class="hall-right"></span></a>
</div>









	<!-- <script src="${pageContext.request.contextPath}/icbc/newperbank/js/perbank3/tongji.js"></script> -->

	<script src="${pageContext.request.contextPath}/icbc/newperbank/js/perbank3/js0005.js?ver=2017122122"></script>

	<script>
	try{
	//--------------------------------------------------------

	addPvValue(['uip',clientIP]);//访客ip
	addPvValue(['areacode',zoneNo]);//地区号
	addPvValue(['stat_ss','']);//访客标识
	addPvValue(['srcpageno','']);//来源页面编码
	addPvValue(['curpageno','']);//当前页面编码
	addPvValue(['noIdendifiedCusid','']);
	addPvValue(['TRANSDATE','20180113']);
	addPvValue(['TRANSTIME','141600']);
	addPvValue(['requestChannel','302']);
	addPvValue(['sessionId',dse_sessionId]);
	addPvValue(['pvModelElementId','']);
	addPvValue(['filterWord','']);
	addPvValue(['labelname','']);
	addPvValue(['cis',mainCIS]);
	addPvValue(['url','${pageContext.request.contextPath}/icbc/newperbank/perbank3/frame/frame_index.jsp']);

	//清理上一页面信息
	}catch(e){}
</script>

<script language="javascript">

/**
刷新页面
根据最后一次调用的原子服务刷新当前页面
**/
function reSetIndex(firstZoneNoin){
	var url  =window.top.location.href;
	if(url.indexOf("?")>-1){
		url=url.substr(0,url.indexOf("?"));
	}
	//自动加载不启动清除session
	try{
		isAutoLoad=true;
	}catch(e){}
	/* url="${pageContext.request.contextPath}/icbc/newperbank/perbank3/frame/frame_index.jsp";
	url = url + "?"+"serviceId="+serviceId+"&transData="+transData+"&dse_sessionId="+dse_sessionId+"&zoneNo="+firstZoneNoin;
	window.location.href=url; */
	perbankAtomLocationBW(serviceId,transData,dse_sessionId,firstZoneNoin);
}

jQuery(document).ready(function(){
	//如果是需要登录则拦截
	//退出交易不拦截
	setTimeout('submitFirstForm()',1);
	//document.topfameFrom.submit();

	//非自动刷新页面的情况则清除session


	//活动大厅图标根据智能导航改变位置
	navigateClick();
});

function navigateClick(){
	$('.ebdp-pc4promote-navigationbar-left div').bind('click',function(){
		var display = $('.ebdp-pc4promote-navigationbar-content').css("display");
		if("none" == display){
			$('#hall_div').css("right","0px");
		} else {
			var width = $('.ebdp-pc4promote-navigationbar-content').width()+4;
			$('#hall_div').css("right",width+"px");
		}
	});
}

function hallFollowNav(){
	$('#hall_div').css("right","0px");
}

function submitFirstForm(){

	perbankAtomLocationTW('PBL200202','','')

}
//快捷工具
/**
 控制只能输入30个字，如果大于30个字则不能再输入。
 **/
function justCount() {
	var userQustva = jQuery("#service-content").val();
	var len = userQustva.length;
	if (len <= 30) {
		var a = 30 - len;
		jQuery("#userQustTips").html(a);
	} else {
		var tt = userQustva.substring(0, 30);
		jQuery("#service-content").val(tt);
	}
}

/**
 跳转到门户。
 **/
function gotoInteService() {
	var userQustva = jQuery("#service-content").val();
	if (userQustva == "" || userQustva == "请输入您要咨询的问题") {//没有输入的两种情况。
		document.getElementById("service-content").focus();
		return;
	} else {
		var key = encodeURI(userQustva);
		key = key.replace(/#/g,'%23');
		var url="http://www.icbc.com.cn${pageContext.request.contextPath}/icbc/%E5%AE%A2%E6%88%B7%E6%9C%8D%E5%8A%A1/%E6%99%BA%E8%83%BD%E6%90%9C%E7%B4%A2/default.htm"+"?title="+key;
		window.open(url,"_blank")
	}
}
function downloadAss(){
		window.open('http://www.icbc.com.cn${pageContext.request.contextPath}/icbc/html/download/EbankToolsSoftware${pageContext.request.contextPath}/icbcSetupIntegration.msi');
}
//快捷工具js
var msgList = new Array();//消息队列
var msgLen = 0;//消息队列长度
var nowMsgNum = 1;//当前显示的第几个消息
var isUserOpened = false;//用户是否打开过消息中心
function initMsgCenter(mList,isFirstLoad){//login_afterformsg.jsp调用，用于初始化消息中心
	isUserOpened = false;
	msgList = mList;
	msgLen = 0;
	try{
		msgLen = msgList.length;
	}catch(e){
		msgLen = 0;
	}
	shortcuttool.setTipByValue("3",msgLen);
	$("#pop .page-prev").hide();
	$("#pop .page-next").hide();
	if(msgLen>1){
		if(nowMsgNum == msgLen){
			$("#pop .page-prev").show();
		}else{
			if(nowMsgNum == 1){
				$("#pop .page-next").show();
			}else{
				$("#pop .page-prev").show();
				$("#pop .page-next").show();
			}
		}
		$("#pop .page-prev").unbind("click");
		$("#pop .page-prev").bind("click",getPrevMsg);
		$("#pop .page-next").unbind("click");
		$("#pop .page-next").bind("click",getNextMsg);
	}
	jQuery("#pop").hide();
	if(msgLen>0){//有消息，默认打开
		if(isFirstLoad){//登录后第一次自动打开
			eventClick('3','');
		}
	}else{
		$(".ebdp-pc4promote-shortcuttool-tip").hide();//无消息，隐藏数字
	}
}
//点击消息下一页
function getNextMsg(){
	nowMsgNum++;
	if(nowMsgNum==msgLen){
		$("#pop .page-next").hide();
	}
    displayMsgToFrame(nowMsgNum);
    $("#pop .page-prev").show();
    return false;
}
//点击消息上一页
function getPrevMsg(){
	nowMsgNum--;
	if(nowMsgNum==1){
		$("#pop .page-prev").hide();
	}
    displayMsgToFrame(nowMsgNum);
    $("#pop .page-next").show();
    return false;
}
//提交消息原子服务，展示在frame中
function displayMsgToFrame(dMsgN){
	var msgJson = eval('('+msgList[dMsgN-1]+')');
	document.topfameFrom2.transData.value=msgJson.transdata;
	document.topfameFrom2.serviceId.value=msgJson.serviceid;
	document.topfameFrom2.submit();
}
//获取U盾、防钓鱼提示的UTipsNum，USTip、AntiPhishing页面调用
function getUTipsNum(){
	var msgJson = eval('('+msgList[nowMsgNum-1]+')');
	return msgJson.UTipsNum;
}
function reInitMsgCenter(delServiceId){//U盾、防钓鱼提示页面选不再提示后
	for(var i=0;i<msgList.length;i++){
		if(msgList[i].indexOf(delServiceId)!=-1){
			msgList.splice(i,1);
		}
	}
	if(nowMsgNum<msgLen){
		initMsgCenter(msgList,true);
	}else{
		nowMsgNum = 1;
		initMsgCenter(msgList,false);
	}
}
function eventClick(value,index){
	if(value=="7"){
		perbankAtomLocationTW('PBL20167001','5',dse_sessionId);
	}
	if(value=="5"){
		$(window).scrollTop(0);
		shortcuttool.setVisibleByValue("5",false);
	}
	if(value=="3" && jQuery("#pop").is(':hidden')){
		if(msgLen!=0){
			if(!isUserOpened){
				displayMsgToFrame(nowMsgNum);
				isUserOpened = true;
			}
			jQuery("#pop").show();
		}else{
			alert("您暂无通知消息。");
		}
	}
	if(value=="2"){
		downloadAss();
	}

}
function eventMouseEnter(value,index){
	if(value=="4"){
		jQuery("#erweima").stop().animate({"width":"274px"},500);
	}
	if(value=="2"){
		jQuery("#helper").stop().animate({"width":"274px"},500);
	}
	if(value=="6"){
		getFootPrint(dse_sessionId);
		jQuery("#footprint").stop().animate({"width":"275px"},500);
	}

	if(value=="1"){
		jQuery("#service").stop().animate({"width":"275px"},500);
	}

}
function eventMouseLeave(value,index){
	if(value=="4"){
		jQuery("#erweima").stop().animate({"width":"0"},500);
	}
	if(value=="2"){
		jQuery("#helper").stop().animate({"width":"0"},500);
	}
	if(value=="6"){
		jQuery("#footprint").stop().animate({"width":"0"},500);
	}

	if(value=="1"){
		jQuery("#service").stop().animate({"width":"0"},500);
	}

}
</script>

<div>
	<div id="pop" class="news-pop">
     	<div class="news-box">
         	<div class="news-main">
             	<b class="close-btn">x</b>
             	<h4>重要提示</h4>
                 <div class="news-body">
                 	<IFRAME frameBorder=0 marginHeight=0 name="news-pop-frame" id="news-pop-frame" src="" scrolling="no"
							style="HEIGHT:200px;VISIBILITY:inherit;WIDTH:100%;Z-INDEX:1;overflow:hidden;"></IFRAME>
                 </div>
                 <div class="page-div">
                 	<span class="page-prev">上一页</span>
                     <span class="page-next">下一页</span>
                 </div>
             </div>
         </div>
     </div>
	<div id="service" class="service-pop">
    	<div class="service-box">
        	<div><textarea name="service-content" id="service-content" cols="" rows=""  maxlength="30" onkeydown="javascript:justCount();" onkeyup="javascript:justCount();" placeholder="请输入您要咨询的问题"></textarea></div>
            <div class="service-btn-box">
            	<span>您可以输入<span id="userQustTips">30</span>个字</span><a href="javascript:gotoInteService();" class="service-btn"></a>
            </div>
        </div>
    </div>
    <div id="erweima" class="erweima-box">
       	<ol>
           	<li class="Eg" onclick="window.open('http://www.icbc.com.cn${pageContext.request.contextPath}/icbc/gnym2/2.htm')"></li>
            <li class="El" onclick="window.open('http://www.icbc.com.cn${pageContext.request.contextPath}/icbc/gnym2/2.htm')"></li>
            <li class="Eh" onclick="window.open('http://www.icbc.com.cn${pageContext.request.contextPath}/icbc/gnym2/2.htm')"></li>
        </ol>
    </div>
    <div id="helper" class="helper-pop">
    	<div class="helper-box">
        	<p>一键快捷完成网银安全控件U盾驱动安装</p>
        </div>
    </div>
    <div id="footprint" class="footprint-pop">
    <input id="getFootInfoError" type="hidden" value=""/>
     <div class="footprint-box">
       <div class="footprint-content">
       		<!-- <div class="footprint-leftfoot-out"><div class="footprint-leftfoot-bg">我的账户</div></div>
       		<div class="footprint-rightfoot-out"><div class="footprint-rightfoot-bg">转账汇款</div></div> -->
       </div>
     </div>
    </div>


	<div id="shortcuttool" class="ebdp-pc4promote-shortcuttool-wrapper" ><ul><li data-value='7'><a style='background:url(${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/fix-img/icon-fix-7.png) center center no-repeat;'><span class='ebdp-pc4promote-shortcuttool-tip ebdp-pc4promote-shortcuttool-tip-hidden'></span></a></li><li data-value='1'><a style='background:url(${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/fix-img/icon-fix-1.png) center center no-repeat;'><span class='ebdp-pc4promote-shortcuttool-tip ebdp-pc4promote-shortcuttool-tip-hidden'></span></a></li><li data-value='2'><a style='background:url(${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/fix-img/icon-fix-2.png) center center no-repeat;'><span class='ebdp-pc4promote-shortcuttool-tip ebdp-pc4promote-shortcuttool-tip-hidden'></span></a></li><li data-value='3'><a style='background:url(${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/fix-img/icon-fix-3.png) center center no-repeat;'><span class='ebdp-pc4promote-shortcuttool-tip'>0</span></a></li><li data-value='4'><a style='background:url(${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/fix-img/icon-fix-4.png) center center no-repeat;'><span class='ebdp-pc4promote-shortcuttool-tip ebdp-pc4promote-shortcuttool-tip-hidden'></span></a></li><li data-value='6'><a style='background:url(${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/fix-img/icon-fix-6.png) center center no-repeat;'><span class='ebdp-pc4promote-shortcuttool-tip ebdp-pc4promote-shortcuttool-tip-hidden'></span></a></li><li data-value='5'><a style='background:url(${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/fix-img/icon-fix-5.png) center center no-repeat;'><span class='ebdp-pc4promote-shortcuttool-tip ebdp-pc4promote-shortcuttool-tip-hidden'></span></a></li></ul></div><script type="text/javascript">
if(!(shortcuttool instanceof ShortcutTool)){
var shortcuttool = new ShortcutTool("shortcuttool");
shortcuttool.setVisible("true|true|true|true|true");
shortcuttool.setEventClickHandler(eventClick);
shortcuttool.setEventMouseEnterHandler(eventMouseEnter);
shortcuttool.setEventMouseLeaveHandler(eventMouseLeave);
shortcuttool.show();
}else{
try{delete window.shortcuttool;}catch(e){}
var shortcuttool = new ShortcutTool("shortcuttool");
shortcuttool.setVisible("true|true|true|true|true");
shortcuttool.setEventClickHandler(eventClick);
shortcuttool.setEventMouseEnterHandler(eventMouseEnter);
shortcuttool.setEventMouseLeaveHandler(eventMouseLeave);
shortcuttool.show();
}
</script>



</div>
<!--fix-box end-->
<!-- 201710 智能导航栏    -->
<script type="text/javascript">
var link1 = function(){
	var contentDom=navigationbar.getContentDom();
	contentDom.html("<iframe  id='quickTran' name='quickTran'  frameborder='0' width='300px' height='100%' style='margin-top:-8px' src='${pageContext.request.contextPath}/icbc/newperbank/perbank3/quickFuc/quickTrans.jsp?dse_sessionId="${dse_sessionId}"'></iframe>");
};
var link2 = function(){
	var contentDom=navigationbar.getContentDom();
	contentDom.html("<iframe id='right' name='right' frameborder='0' width='100%' height='100%' scrolling='no' style='overflow:hidden; max-height:99%'></iframe>");
	document.form152.submit();
};
var checkLoginLink2 = function(){
	if(dse_sessionId==""||dse_sessionId==null){
		console.log("frame_index.jsp--AtomSerivceSubmitPre");
		AtomSerivceSubmitPre('PBL201700','2','',"1",true);
		return false;
	}
	else{
		return true;
	}
};
var link3 = function(){
	var contentDom=navigationbar.getContentDom();
	contentDom.html("<iframe id='inlifeVerticalFrame' name='inlifeVerticalFrame' frameborder='0' width='100%' height='100%' scrolling='no' style='overflow:hidden; max-height:99%'></iframe>");
	document.inlifeVerticalForm.submit();
};
var link4 = function(){//消息中心
	var contentDom=navigationbar.getContentDom();
	contentDom.html("<iframe id='messageNav' name='messageNav' frameborder='0' width='100%' height='100%'></iframe>");
	document.messageCenter.submit();
};
var link5 = function(){//在线客服

	return false;
};

var link6 = function(){
	var contentDom=navigationbar.getContentDom();
	contentDom.html("<iframe id='fundCompare' name='fundCompare' frameborder='0' width='100%' height='100%' style='margin-top:-5px' src='${pageContext.request.contextPath}/icbc/newperbank/perbank3/fund/frame_fund_compare.jsp?dse_sessionId="${dse_sessionId}"'></iframe>");
};
var link7 = function(){
	perbankAtomLocationTW('PBL201670','5','');
	navigationbar.closeContent();
};

function goinfo(id,type){
	document.goinfopage.action=document.goinfopage.action = '/servlet/icbcINBSReqServlet?safaritemp=' + new Date().getTime();
	document.goinfopage.SMSID.value=id;
	document.goinfopage.SMSType.value=type;
	document.goinfopage.submit();
}

</script>
<!--智能导航栏交易快照form  -->
<form name="form152" method="post" action="/servlet/icbcINBSReqServlet" target="right"><!--智能导航栏 交易快照  -->
	<input type="hidden" name="dse_sessionId" value="null" />
<input type="hidden" name="dse_applicationId" value="null" />
<input type="hidden" name="dse_operationName" value="per_TranSnapSaveAndLoadOp" />
<input type="hidden" name="dse_pageId" value="null" />
	<input type="hidden" name="isNavigation" value="1">
	<input type="hidden" name="transFlag" value="5">
</form>
<!-- 智能导航栏金融日历简易版form -->
<form name="inlifeVerticalForm" method="post" action="/servlet/icbcINBSReqServlet" target="inlifeVerticalFrame">
	<input type="hidden" name="dse_sessionId" value="null" />
<input type="hidden" name="dse_applicationId" value="null" />
<input type="hidden" name="dse_operationName" value="per_IntelligentLifeOp" />
<input type="hidden" name="dse_pageId" value="null" />
	<input type="hidden" name="tranFlag" value="0">
	<input type="hidden" name="typeFlag" value="2">
</form>
<!-- 智能导航栏消息中心提交form -->
<form name="messageCenter" method="post" action="/servlet/icbcINBSReqServlet" target="messageNav">
	<input type="hidden" name="dse_sessionId" value="null" />
<input type="hidden" name="dse_applicationId" value="null" />
<input type="hidden" name="dse_operationName" value="per_MessageCenterOp" />
<input type="hidden" name="dse_pageId" value="null" />
	<input type="hidden" name="tranFlag" value="3">
</form>


<script>
//初始化快捷工具
	//未登录不显示消息中心和足迹
	 	shortcuttool.setVisibleByValue("3",false);//消息中心

	shortcuttool.setVisibleByValue("6",false);//足迹 --12月版屏蔽
	shortcuttool.setVisibleByValue("5",false);

			shortcuttool.setVisibleByValue("7",true);

	shortcuttool.setAlertContent("1","service");
	shortcuttool.setAlertContent("2","helper");
	shortcuttool.setAlertContent("4","erweima");
	shortcuttool.setAlertContent("3","pop");
	shortcuttool.setAlertContent("6","footprint");

	$("#pop .close-btn").bind("click",function(){
		$("#pop").hide();
		return false;
	})
	$(window).scroll(function(){
		if($(window).scrollTop()>85){

				shortcuttool.setVisibleByValue("5",true);

		}else{

				shortcuttool.setVisibleByValue("5",false);

		}
	});


$(function(){
//点击消息框以外的地方隐藏消息框
	$(document).bind("click",function(e){
		var target = $(e.target);
		if(target.closest("#pop").length==0){
			$("#pop").hide();
		}
	})
//首页默认的时候最爱展开

	//pdzuiquan();

//图片懒加载
	$("img.lazy").show().lazyload({
	   		placeholder: "${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/images/loadering.gif"
	});
})
</script>
</body>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">



<link href="${pageContext.request.contextPath}/icbc/newperbank/perbank3/css/frame/css/style.css?ver=2017122122" rel="stylesheet" type="text/css"/>

<jsp:include page="7.jsp"></jsp:include>
</html>

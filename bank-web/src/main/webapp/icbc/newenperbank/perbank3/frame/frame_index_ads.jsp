<!DOCTYPE html>

<!--公共tag引入区域-->













 <script>
	try{
		if(isNaN('icbc.com.cn'.replace(/\./g,""))){
			document.domain='icbc.com.cn';}
	}catch(e){
		
	}
 </script>
<script src="/icbc/newenperbank/js/perbank3/js0011.js?ver=2017122122"></script>

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
<script src="/icbc/newperbank/js/perbank3/jquery-1.8.3.min.js?ver=2017122122"></script>
<script src="
/icbc/newenperbank/js/includes/pebank_browsercompatible.js?ver=2017122122"></script>
<script src="
/icbc/newenperbank/js/preventFresh.js?ver=2017122122"></script>
<script src="
/icbc/newenperbank/js/perbank3/userBrowseSidStack.js?ver=2017122122"></script>
<script src="
/icbc/newenperbank/js/perbank3/js0002.js?ver=2017122122"></script>
<script src="
/icbc/newperbank/js/includes/pebank_pagesubmit.js?ver=2017122122"></script>

 <link href="/icbc/newperbank/perbank3/style/style_default/css/base.css?ver=2017122122" rel="stylesheet" type="text/css"/>
<link href="
   /icbc/newperbank/perbank3/style/style_default/css/common.css?ver=2017122122" rel="stylesheet" type="text/css"/>

<input type="hidden" name="saveFiledValueFirefox"/>

<!-- 登录前使用 -->
<link href="/icbc/newperbank/perbank3/css/indexp.css?ver=2017122122" rel="stylesheet" type="text/css"/>


<script src="/js/jquery.js?ver=1.0.17"></script>
<script src="/ebdpui/pc4promote/ebdp-pc4promote-core.js?ver=1.0.17"></script>

<link href="/ebdpui/pc4promote/style/default/normalbutton/ebdp-pc4promote-normalbutton.css?ver=1.0.17" rel="stylesheet" type="text/css"/>
<script src="/ebdpui/pc4promote/ebdp-pc4promote-normalbutton.js?ver=1.0.17"></script>
<script type="text/javascript">
var _ebdp_language = "zh-CN";
</script>

<html>
<head>
	<title>首页</title> 
</head>
<body class="noautoHeight">







<script>
function ezf_ad() /* 工银e支付 */
{
AtomSerivceSubmit("PBL200745");
}
function yebd_ad() /* 余额变动提醒 */
{
AtomSerivceSubmit("PBL201411");
}
function jdcx_ad() /*进度查询*/
{
AtomSerivceSubmit("PBL200774");
}
function hslxwm_ad() /* 华商联系我们 */
{
	getTopWindow().open('http://www.cmbcn.com.cn/jsp/personal/index_469_5_389.html');
}
function dzzh_ad() /* 电子账户 */
	{
	var url = 'https://epass.icbc.com.cn/regist/regist_index.jsp';
	var flag = '3';
	var StructCode = '1';
	if("4"==StructCode){
		url = url+"?StructCode=4";
	}
	if("3"==flag){
		getTopWindow().location.href = url;
	}else if("1"==flag){
		getTopWindow().open(url);
		}
	}
</script>
<script>
jQuery(document).ready(function(){
    var bigUrl    = "/ICBC_ADJS/6CDF48ECCB194A9BB2B892C9E925C881.js";
    var imageUrl1 = "";
    var imageUrl2 = "";
    var imageUrl3 = "";
    var imageUrl4 = "";
    jQuery("#ccdcacfbecd7495b98b89219d38d8221wtc").hide(); 
    jQuery("#page_fragment").hide();
    if(bigUrl!=""){
        jQuery("#ccdcacfbecd7495b98b89219d38d8221wtc").show();
    }  
    if(imageUrl1!="" && imageUrl2!="" && imageUrl3!=""){
        jQuery("#page_fragment").show();  
    }       
});
</script>
<script language="javascript">
	function query(){
  		var url="";
  		window.open(url);
	}
</script>
<style>
   	.advertise{
   		height:312px;	
   		overflow:hidden;
   	}
   	.pagefragment{
   		left:0px;	
   	}
   	pagefragment.pgfrgmnt_4Cols{
   		width:170px;
   	}
   	.page_fragment_3col{
   		width:310px;
   		height:132px;
   	}
   	.page_fragment_4col{
   		width:227px;
   		height:132px;
   	}
   	.fragment_margin3{
   		margin-left:10px;
   	}
</style>
    

<script src="/icbc/newperbank/js/perbank3/jquery-1.8.3.min.js?ver=11.7"></script>  

<script type="text/javascript" src="https://member.icbc.com.cn/ICBC_ADJS/ICBCActiveMaintainList.js"></script>
<script type="text/javascript" src="https://member.icbc.com.cn/Portal_Resources/Common/zones.js"></script>
<script type="text/javascript" src="https://member.icbc.com.cn/Portal_Resources/Common/ICBCADByZoneUtil.js"></script>

<script>
 	//console.log(jQuery().jquery);
 	var $jq_portal_ad=jQuery.noConflict(true);//还原jQuery 1.4.3的版本
 	if(!jQuery&&$jq_portal_ad)jQuery=$jq_portal_ad;//防止门户js未正常加载时，jquery没有值
 	if(!$&&$jq_portal_ad)$=$jq_portal_ad;      //防止门户js未正常加载时，$没有值
 	//console.log(jQuery().jquery);
 	//console.log($jq_portal_ad().jquery);
</script>
<script src="https://member.icbc.com.cn/Portal_Resources/Common/HttpsClientAnalysis.js"></script>
<script src="https://member.icbc.com.cn/Portal_Resources/Common/AdRes/HttpsQuanTongAD.js"></script>
<link rel='stylesheet' href='https://member.icbc.com.cn/Portal_Resources/Common/AdCss/NewLunboQT_MS_Layout.css' />
<link rel='stylesheet' href='https://member.icbc.com.cn/icbc/include/AD_Huangdengpian.css' />
<div id='ccdcacfbecd7495b98b89219d38d8221wtc' name='ccdcacfbecd7495b98b89219d38d8221wtc'>
<div id="loadingDiv" style="position: absolute;left: 40%;top: 30%">
						<div class="loadingDivPic"></div>
						<div class="loadingDivin" id="loadingDivin">Loading...</div>
</div>
</div>
<script language='javascript' type='text/javascript'>
  function TimeDemo() {
      var d, s = '', c = '';
      d = new Date();
      s += parseInt(Date.parse(d) / (1000 * 3600)) + c; return (s);
  }
  var tocken = TimeDemo();
  var big = "/ICBC_ADJS/6CDF48ECCB194A9BB2B892C9E925C881.js";
  var write_str = "<script language='javascript' type='text/javascript' src='https://member.icbc.com.cn/ICBC_ADJS/6CDF48ECCB194A9BB2B892C9E925C881.js?Ad_Top=0&Ad_Left=0&Ad_ChooseMode=0&Ad_Width=0&Ad_Height=0&Ad_IsClose=false&Ad_Guid=ccdcacfbecd7495b98b89219d38d8221&Ad_AreaId=ccdcacfbecd7495b98b89219d38d8221&Ad_RealAreaName=wtc&Ad_AreaName=ccdcacfbecd7495b98b89219d38d8221wtc&Ad_Source=wtc&AD_tocken=" + tocken + "&Ad_ZoneNo=0'><\/script>";
  if (typeof (ICBCADByZoneUtil) != "undefined") {
    ICBCADByZoneUtil.SetCurrentSite('https://member.icbc.com.cn');
    var adfileSuffix = ICBCADByZoneUtil.GetADFileNameSuffix("6CDF48ECCB194A9BB2B892C9E925C881", ICBCADByZoneUtil.GetClientZoneNo());
    var adfileName = ICBCADByZoneUtil.GetADFileName("6CDF48ECCB194A9BB2B892C9E925C881", adfileSuffix);
    
    write_str = "<script language='javascript' type='text/javascript' src='https://member.icbc.com.cn/ICBC_ADJS/" + adfileName + ".js?Ad_Top=0&Ad_Left=0&Ad_ChooseMode=0&Ad_Width=0&Ad_Height=0&Ad_IsClose=false&Ad_Guid=ccdcacfbecd7495b98b89219d38d8221&Ad_AreaId=ccdcacfbecd7495b98b89219d38d8221&Ad_RealAreaName=wtc&Ad_AreaName=ccdcacfbecd7495b98b89219d38d8221wtc&Ad_Source=wtc&AD_tocken=" + tocken + "&Ad_ZoneNo=" + adfileSuffix + "'><\/script>";
    
  }
  if(big!=""){
      document.write(write_str);
  }
</script> 
 
<div id="page_fragment" class="com-width pagefragment">
	
</div>


 





<script>
	//绑定clicknull的清空方法
	jQuery(".mobileSecured").unbind("focus").bind("focus",function(){jQuery(this).val("")});
</script>

 
<!DOCTYPE>








<!-- <script type="text/javascript" src="/icbc/newperbank/js/perbank3/locationmap.js"></script> -->

<script src="/icbc/newenperbank/js/perbank3/js0001.js?ver=2017122122"></script>

<script type="text/javascript">

	var loctionmapList=new LoctionmapList();
var nologonList= new Array();
var loctionmapListourl= new Array();
nologonList[0]=new Loctionmap('PBL20132107','null','','0','1、客户可注销交易账户或调整交易卡。注销交易账户前客户须清空持仓及保证金账户。');
loctionmapList.add(new Loctionmap('PBL201427','022502'));
loctionmapListourl[0]=new Loctionmap('PBL201427','022502','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20201803','171005'));
loctionmapListourl[1]=new Loctionmap('PBL20201803','171005','','0','','/icbc/newperbank/fakeexchange/stock_fake_lsmx.jsp','null','null','0','null','null','null');
nologonList[1]=new Loctionmap('PBL201428','null','网点预约','1','');
nologonList[2]=new Loctionmap('PBL20132108','null','','0','1、您可以通过“查询持仓的份额调整记录”功能了解所持有的账户原油连续产品和账户天然气的份额调整情况。<br>2、您的账户原油连续产品持仓资产规模在份额调整前后保持不变，即调整前持仓*份额调整前价格=调整后持仓*份额调整后价格+退还资金（释放保证金），其中份额调整过程中剩余不足开仓0.1桶的资金（或保证金）将退还至您的资金账户（或释放到保证金账户）。<br>3、您的账户天然气持仓资产规模在份额调整前后保持不变，即调整前持仓*份额调整前价格=调整后持仓*份额调整后价格+退还资金（释放保证金），其中份额调整过程中剩余不足开仓1百万英热单位的资金（或保证金）将退还至您的资金账户（或释放到保证金账户）。<br>4、您可以通过“查询历史份额调整价格”功能了解账户原油连续产品和账户天然气历史份额调整价格。<br>5、您可以通过“份额调整短信提醒”功能订阅账户原油连续产品和账户天然气份额调整结果通知，并修改接收短信的手机号码。');
loctionmapList.add(new Loctionmap('PBL20091101','400101'));
loctionmapListourl[2]=new Loctionmap('PBL20091101','400101','','0','','/icbc/newperbank/reckoning/reckoning_service_apply_index.jsp','null','null','0','null','cardNumInject','payerNameInject');
nologonList[3]=new Loctionmap('PBL201429','230501','网点预约','1','您提交预约申请后，我行将实时反馈预约结果，并向您发送业务提醒短信。<br>外币现金存取款预约业务目前最多可支持21个外币的预约服务，不同地区的网点支持可预约的外币币种不同。我行将根据您的币种要求，自动回显可预约该币种的网点。');
loctionmapList.add(new Loctionmap('PBL201429','230501'));
loctionmapListourl[3]=new Loctionmap('PBL20091102','null','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20091103','4003'));
loctionmapListourl[4]=new Loctionmap('PBL20091103','4003','','0','','/icbc/newperbank/reckoning/reckoning_mybill_person_index.jsp','null','null','0','null','parentServiceId','null');
loctionmapList.add(new Loctionmap('PBL20091104','4004'));
loctionmapListourl[5]=new Loctionmap('PBL20091104','4004','','0','','/icbc/newperbank/reckoning/reckoning_detail_submit.jsp','null','null','0','null','parentServiceId','null');
loctionmapList.add(new Loctionmap('PBL20109101','0804'));
loctionmapListourl[6]=new Loctionmap('PBL201670','null','活动大厅','0','','/icbc/Emall/main/forward.jsp','/icbc/Emall/main/forward.jsp','null','0','null','turnUrl','null');
nologonList[4]=new Loctionmap('PBL20132110','null','','0','1、客户设置到期转期类型后，中国工商银行在产品到期日按到期转期结算价格及客户选定的转期方式自动平仓上期产品并开仓下期产品，一般在次日的7:05起开始转期交易。<br>2、客户设置自选转期类型后，中国工商银行在产品到期日按客户选择的转期时点自选转期价格和客户选定的转期方式自动平仓上期产品并开仓下期产品，一般在转期时点后5分钟后开始转期交易。<br>3、到期转期和自选转期一经开启、长期有效，客户可在“管理自动转期”菜单下终止转期功能。<br>4、按金额转期（即固定金额转期）的方式是使用平仓全部上期产品数量所得资金，以最大可开仓数量同时开仓下期产品；按桶数转期（即固定数量转期）的方式是按客户持有的全部上期产品数量，尽可能开仓相同数量的下期产品。<br><font color="red">5、自选转期和到期转期中上期产品平仓价和下期产品开仓价一般情况下大幅好于同时点账户客户卖出价/买入价（即银行买入价/卖出价）。</font><br>6、具体功能请查询账户能源的产品介绍及交易规则。');
nologonList[5]=new Loctionmap('PBL201430','null','我的网点预约','1','');
nologonList[6]=new Loctionmap('PBL201431','null','我的网点预约','0','');
nologonList[7]=new Loctionmap('PBL20132111','null','','0','1、客户可以通过点击“撤销”取消已经预约的转期计划。');
nologonList[8]=new Loctionmap('PBL201432','null','','1','');
nologonList[9]=new Loctionmap('PBL20132112','null','','0','1、客户可以查询账户原油实时转期、自选转期和到期转期的交易明细。');
nologonList[10]=new Loctionmap('PBL201433','null','申请借记卡','1','');
nologonList[11]=new Loctionmap('PBL20132113','null','','0','1、客户可以查询账户原油转期的历史价格。');
nologonList[12]=new Loctionmap('PBL20132118','420102','','0','1、账户原油期次产品的交易起始日、交易结束日和结算日等信息可在账户原油“查询产品信息”栏目下查询。<br>2、账户原油连续产品份额调整的有关信息，可在“我的账户原油”栏目下的查询份额调整信息功能查询。<br>3、账户原油交易时间一般为周一9：00到24：00，周二至周五每日0：00到4：00与9：00到24：00，周六0：00到4：00。<br>4、客户通过我行风险能力评测和投资交易类产品适合度评估后方能办理账户原油开户及交易业务。<br>5、挂单交易的有效期包括24小时、48小时、72小时、96小时、120小时，客户可通过挂单有效期下拉选项选择。对于账户原油连续产品，份额调整时点前未成交的挂单将自动失效。<br>6、在账户原油行情报价，您看到的报价为参考报价，仅供您参考，不能凭此达成交易；如您需要达成交易，请联动到交易区获取可成交报价后完成交易。<br>7、根据国际市场流动性差异，我行账户原油产品在不同时段报价价差不同，一般情况下欧美时段(17:00-次日4:00)价差好于亚洲时段(9:00-17:00)价差，且亚洲时段早间价差变化较大。根据市场情况，我行可能调整账户原油的银行买入价/卖出价和交易价差，请客户在达成交易前注意。<br>8、因国家监管政策等原因，我行对所有客户人民币账户原油产品总持仓净额设定上、下限。当客户持仓触及上、下限时，客户将不能进行新开仓操作，平仓操作不受影响。<br>9、某期账户原油期次产品到期后，客户若没有参与转期而仍持有该期产品，我行将按照该期产品到期结算价为客户进行结算，客户资金在该期产品结算日到账。<br>10、为便于客户更好地了解该业务，我行在门户网站-个人业务-金融市场投资交易-热点问答中增加了账户原油交易业务知识问答。');
loctionmapList.add(new Loctionmap('PBL20132118','420102'));
loctionmapListourl[7]=new Loctionmap('PBL20132118','420102','','0','','null','null','null','null','0','prodcode','cashsign');
loctionmapListourl[8]=new Loctionmap('PBL201200','null','基金.证券.期货','0','','null','/icbc/newperbank/perbank3/fund/frame_fund_nologin.jsp','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20133211','160201'));
loctionmapList.add(new Loctionmap('PBL20133212','160201'));
loctionmapList.add(new Loctionmap('PBL20134301','130602'));
loctionmapList.add(new Loctionmap('PBL20134302','130604'));
loctionmapList.add(new Loctionmap('PBL20133213','160201'));
loctionmapList.add(new Loctionmap('PBL20133214','160201'));
loctionmapList.add(new Loctionmap('PBL20134303','130606'));
loctionmapList.add(new Loctionmap('PBL20133215','160201'));
loctionmapList.add(new Loctionmap('PBL20133216','160201'));
loctionmapList.add(new Loctionmap('PBL20133217','160201'));
loctionmapList.add(new Loctionmap('PBL20091121','400102'));
loctionmapListourl[9]=new Loctionmap('PBL20091121','400102','','0','','/icbc/newperbank/reckoning/reckoning_gathering_submit.jsp','null','null','0','null','parentServiceId','null');
loctionmapList.add(new Loctionmap('PBL20134307','130603'));
loctionmapList.add(new Loctionmap('PBL20133218','160201'));
loctionmapList.add(new Loctionmap('PBL20091122','4002'));
loctionmapListourl[10]=new Loctionmap('PBL20091122','4002','','0','','/icbc/newperbank/reckoning/reckoning_payment_submit.jsp','null','null','0','null','parentServiceId','null');
loctionmapList.add(new Loctionmap('PBL20091123','400103'));
loctionmapListourl[11]=new Loctionmap('PBL20091123','400103','','0','','/icbc/newperbank/reckoning/reckoning_myRegularBillIndex.jsp','null','null','0','null','parentServiceId','null');
nologonList[13]=new Loctionmap('PBL201210','null','基金产品','0','');
loctionmapListourl[12]=new Loctionmap('PBL201210','null','基金产品','0','','null','/icbc/newperbank/perbank3/fund/frame_fund_index_out.jsp','null','0','null','null','null');
nologonList[14]=new Loctionmap('PBL201212','null','货币基金','1','');
loctionmapListourl[13]=new Loctionmap('PBL201212','null','货币基金','1','','null','/icbc/newperbank/perbank3/fund/frame_fund_index_out.jsp','null','0','null','null','null');
nologonList[15]=new Loctionmap('PBL201213','null','股票基金','1','');
loctionmapListourl[14]=new Loctionmap('PBL201213','null','股票基金','1','','null','/icbc/newperbank/perbank3/fund/frame_fund_index_out.jsp','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20200501','170107'));
loctionmapListourl[15]=new Loctionmap('PBL20200501','170107','','0','','/icbc/newperbank/stock/3fcg/3FCGBank2StockPreSet_index.jsp','null','null','0','null','null','null');
nologonList[16]=new Loctionmap('PBL201214','null','债券基金','1','');
loctionmapListourl[16]=new Loctionmap('PBL201214','null','债券基金','1','','null','/icbc/newperbank/perbank3/fund/frame_fund_index_out.jsp','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20200502','170108'));
loctionmapListourl[17]=new Loctionmap('PBL20200502','170108','','0','','/icbc/newperbank/stock/3fcg/3FCGStock2BankPreSet_index.jsp','null','null','0','null','null','null');
nologonList[17]=new Loctionmap('PBL201215','null','混合基金','1','');
loctionmapListourl[18]=new Loctionmap('PBL201215','null','混合基金','1','','null','/icbc/newperbank/perbank3/fund/frame_fund_index_out.jsp','null','0','null','null','null');
nologonList[18]=new Loctionmap('PBL201216','null','基金定投  ','1','');
loctionmapListourl[19]=new Loctionmap('PBL201216','null','基金定投  ','1','','null','/icbc/newperbank/perbank3/fund/frame_fund_fixed_nologin.jsp','null','0','null','null','null');
loctionmapListourl[20]=new Loctionmap('PBL201217','null','基金','','','null','null','null','null','null','null','null');
nologonList[19]=new Loctionmap('PBL201220','null','保险','0','');
loctionmapListourl[21]=new Loctionmap('PBL201220','null','保险','0','','null','/icbc/newperbank/perbank3/assurance/frame_assurance_index_out.jsp','null','0','null','null','null');
nologonList[20]=new Loctionmap('PBL201221','null','','0','');
loctionmapListourl[22]=new Loctionmap('PBL201221','null','','0','','null','/icbc/newperbank/perbank3/assurance/frame_assurance_index_out.jsp','null','0','null','null','null');
nologonList[21]=new Loctionmap('PBL20122101','null','购买保险','0','');
loctionmapListourl[23]=new Loctionmap('PBL20122101','null','购买保险','0','','null','/icbc/newperbank/perbank3/assurance/frame_assurance_index_nosess.jsp','null','0','0','insurecorporno','insurekindno');
nologonList[22]=new Loctionmap('PBL201222','null','投资型保险','0','');
loctionmapListourl[24]=new Loctionmap('PBL201222','null','投资型保险','0','','null','null','null','0','null','null','null');
nologonList[23]=new Loctionmap('PBL201223','null','','0','');
loctionmapListourl[25]=new Loctionmap('PBL201223','null','','0','','null','/icbc/newperbank/perbank3/assurance/frame_assurance_index_out.jsp','null','0','null','null','null');
loctionmapListourl[26]=new Loctionmap('PBL20122102','null','我的保险','0','','/icbc/newperbank/assurance/assurance_myown_index.jsp','null','null','0','0','null','null');
loctionmapList.add(new Loctionmap('PBL20122103','2003'));
nologonList[24]=new Loctionmap('PBL20112302','150802','','0','1、国债的认购交易须在发行认购期内进行，购买储蓄国债(电子式)交易时间一般为8：30－16：30，以财政部公告为准。<br/>2、如为浮动利率债或通胀指数债，请点击对应的基本利率，可进入门户债券公告页面查看具体的利率及计息规则。');
loctionmapList.add(new Loctionmap('PBL20112302','150802'));
loctionmapListourl[27]=new Loctionmap('PBL20112302','150802','','0','','null','null','null','0','null','null','null');
nologonList[25]=new Loctionmap('PBL201224','null','万能险','0','');
loctionmapListourl[28]=new Loctionmap('PBL201224','null','万能险','0','','null','null','null','0','null','null','null');
nologonList[26]=new Loctionmap('PBL201225','null','','0','');
loctionmapListourl[29]=new Loctionmap('PBL201225','null','','0','','null','/icbc/newperbank/perbank3/assurance/frame_assurance_index_out.jsp','null','0','null','null','null');
loctionmapListourl[30]=new Loctionmap('PBL20122104','null','续期缴费','0','','/icbc/newperbank/assurance/assurance_extend_index.jsp','null','null','0','0','null','null');
loctionmapList.add(new Loctionmap('PBL20201601','170402'));
loctionmapList.add(new Loctionmap('PBL20112303','150803'));
loctionmapListourl[31]=new Loctionmap('PBL20112303','150803','','0','','/icbc/newperbank/nationaldebt/save_nationaldebt_accquery_balance.jsp','null','null','0','null','null','null');
nologonList[27]=new Loctionmap('PBL201226','null','稳健投资','0','');
loctionmapListourl[32]=new Loctionmap('PBL201226','null','稳健投资','0','','null','/icbc/newperbank/perbank3/assurance/frame_assurance_index_out.jsp','null','null','null','null','null');
loctionmapList.add(new Loctionmap('PBL20201602','170403'));
loctionmapList.add(new Loctionmap('PBL20122105','2006'));
loctionmapListourl[33]=new Loctionmap('PBL20122105','2006','我的保险芯片卡','0','','/icbc/newperbank/assurance/assurance_mychipcard_index.jsp','null','null','0','0','null','null');
loctionmapList.add(new Loctionmap('PBL20112304','150804'));
loctionmapListourl[34]=new Loctionmap('PBL20112304','150804','','0','','/icbc/newperbank/nationaldebt/save_nationaldebt_accquery_current_index.jsp','null','null','0','null','null','null');
nologonList[28]=new Loctionmap('PBL201227','null','健康人生','0','');
loctionmapListourl[35]=new Loctionmap('PBL201227','null','健康人生','0','','null','/icbc/newperbank/perbank3/assurance/frame_assurance_index_out.jsp','null','null','null','null','null');
loctionmapList.add(new Loctionmap('PBL20201603','170405'));
loctionmapListourl[36]=new Loctionmap('PBL20201603','170405','','0','','/icbc/newperbank/stock/financing/financing_query_lsmx_index.jsp','null','null','0','null','protserno','stockcode');
loctionmapList.add(new Loctionmap('PBL20112305','150805'));
loctionmapListourl[37]=new Loctionmap('PBL20112305','150805','','0','','/icbc/newperbank/nationaldebt/nationaldebt_subscribe_status_index.jsp','null','null','0','null','null','null');
nologonList[29]=new Loctionmap('PBL201228','null','安全出行','0','');
loctionmapListourl[38]=new Loctionmap('PBL201228','null','安全出行','0','','null','/icbc/newperbank/perbank3/assurance/frame_assurance_index_out.jsp','null','null','null','null','null');
loctionmapListourl[39]=new Loctionmap('PBL20112306','null','','0','','null','null','null','0','null','bondid','null');
loctionmapList.add(new Loctionmap('PBL20201604','170401'));
loctionmapListourl[40]=new Loctionmap('PBL20201604','170401','','0','','/icbc/newperbank/stock/financing/financing_list_index.jsp','null','null','0','null','null','null');
nologonList[30]=new Loctionmap('PBL201229','null','养老无忧','0','');
loctionmapListourl[41]=new Loctionmap('PBL201229','null','养老无忧','0','','null','/icbc/newperbank/perbank3/assurance/frame_assurance_index_out.jsp','null','null','null','null','null');
loctionmapListourl[42]=new Loctionmap('PBL20201605','null','','0','','/icbc/newperbank/stock/3fcg_queryMoney_index.jsp','null','null','0','null','transData','null');
loctionmapListourl[43]=new Loctionmap('PBL20190001','null','','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','null','null','null','null');
loctionmapListourl[44]=new Loctionmap('PBL20190002','null','','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','null','null','null','null');
loctionmapList.add(new Loctionmap('PBL20071301','020210'));
loctionmapListourl[45]=new Loctionmap('PBL20071301','020210','','0','','/icbc/newperbank/account/account_query_bankstatement_index_hid.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20071302','110202'));
loctionmapListourl[46]=new Loctionmap('PBL20071302','110202','','0','','/icbc/newperbank/card/card_myBill_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20071303','110203'));
loctionmapListourl[47]=new Loctionmap('PBL20071303','110203','','0','','/icbc/newperbank/annuity/annuity_reportdownload_hid.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20071304','110204'));
loctionmapListourl[48]=new Loctionmap('PBL20071304','110204','','0','','/icbc/newperbank/fund/fund_statement_hid.jsp','null','null','0','null','null','null');
nologonList[31]=new Loctionmap('PBL201230','null','保险产品','0','');
loctionmapListourl[49]=new Loctionmap('PBL201230','null','保险产品','0','','null','/icbc/newperbank/perbank3/assurance/frame_assurance_index_out.jsp','null','0','null','null','null');
loctionmapListourl[50]=new Loctionmap('PBL201231','null','我的保险','0','','null','null','null','0','null','null','null');
loctionmapListourl[51]=new Loctionmap('PBL20167001','null','热门活动','0','','/icbc/Emall/main/forward.jsp','/icbc/Emall/main/forward.jsp','null','0','null','turnUrl','null');
loctionmapListourl[52]=new Loctionmap('PBL20167002','null','我的奖品','0','','/icbc/Emall/main/forward.jsp','/icbc/Emall/main/forward.jsp','null','0','null','turnUrl','null');
loctionmapList.add(new Loctionmap('PBL20082201','060101'));
loctionmapListourl[53]=new Loctionmap('PBL20082201','060101','','0','','/icbc/newperbank/remit/remit_foreignCard_submit.jsp','null','null','0','null','snapTranData','parentServiceId');
loctionmapList.add(new Loctionmap('PBL20072401','251301'));
loctionmapListourl[54]=new Loctionmap('PBL20072401','251301','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20082202','060293'));
loctionmapListourl[55]=new Loctionmap('PBL20082202','060293','','0','','/icbc/newperbank/remit/remit_toforeignvisamater_result.jsp','null','null','0','null','null','null');
loctionmapListourl[56]=new Loctionmap('PBL20171501','null','账户列表-注册账户列表','0','','/icbc/newperbank/account/account_list_regacct.jsp','null','null','0','null','acctparas','null');
loctionmapList.add(new Loctionmap('PBL20072402','251302'));
loctionmapListourl[57]=new Loctionmap('PBL20072402','251302','','0','','null','null','null','0','null','null','null');
loctionmapListourl[58]=new Loctionmap('PBL20082203','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[59]=new Loctionmap('PBL20171502','null','','0','','/icbc/newperbank/account/account_list_otherbankacct.jsp','null','null','0','null','null','null');
loctionmapListourl[60]=new Loctionmap('PBL20171503','null','','0','','/icbc/newperbank/account/account_list_managedacct.jsp','null','null','0','null','null','null');
loctionmapListourl[61]=new Loctionmap('PBL20171504','null','','0','','/icbc/newperbank/account/account_list_points.jsp','null','null','0','null','null','null');
loctionmapListourl[62]=new Loctionmap('PBL20171505','null','','0','','/icbc/newperbank/housefund/housefund_index.jsp','null','null','0','null','null','null');
loctionmapListourl[63]=new Loctionmap('PBL20171506','null','','0','','/icbc/newperbank/socialinsurance/socialinsurance_myinfo.jsp','null','null','0','null','null','null');
loctionmapListourl[64]=new Loctionmap('PBL20171507','null','','0','','/icbc/newperbank/annuity/pension_prod_list_index.jsp','null','null','0','null','null','null');
loctionmapListourl[65]=new Loctionmap('PBL20171508','null','银商银权','0','','/icbc/newperbank/exchange/MyMarket_index.jsp','null','null','0','银商银权','showmarket','null');
loctionmapListourl[66]=new Loctionmap('PBL20171509','null','','0','','/icbc/newperbank/perbank3/stock/myStock_index.jsp','null','null','0','null','tradeflag','null');
loctionmapListourl[67]=new Loctionmap('PBL201000','null','存款.贷款','0','','null','null','null','0','null','null','null');
nologonList[32]=new Loctionmap('PBL20134101','130402','','0','');
loctionmapList.add(new Loctionmap('PBL20134101','130402'));
loctionmapListourl[68]=new Loctionmap('PBL20100101','null','','0','','/icbc/newperbank/account/account_save_list.jsp','null','null','0','null','null','null');
nologonList[33]=new Loctionmap('PBL300101','null','e缴费','0','');
loctionmapListourl[69]=new Loctionmap('PBL300101','null','e缴费','0','','/icbc/newperbank/onlinePayment/forwardToPayment.jsp','/icbc/newperbank/onlinePayment/forwardToPayment.jsp','1','0','null','null','null');
nologonList[34]=new Loctionmap('PBL20134102','null','','0','1、如需查询您在其他地区提交的外汇买卖挂单交易信息，请调整至相应地区的交易卡（账）号。<br/>2、挂单明细包括已成交和未成交的所有挂单指令，也包括手动撤销和过期失效的挂单指令。<br/>3、您可以撤销有效期内未成交的挂单交易。');
loctionmapListourl[70]=new Loctionmap('PBL20134102','null','','0','','/icbc/newperbank/foreign_two/foreign_two_entrust_submit.jsp','null','null','0','null','null','null');
loctionmapListourl[71]=new Loctionmap('PBL20100102','null','','0','','/icbc/newperbank/perbank3/finance/frame_finance_query.jsp','null','null','0','null','null','null');
nologonList[35]=new Loctionmap('PBL20134103','1305','','0','1、如需查询您在其他地区开立的外汇买卖(先卖出后买入交易)保证金余额，请调整至相应地区的交易卡（账）号。<br/>2、您可查询保证金账户中的美元资金余额。');
loctionmapList.add(new Loctionmap('PBL20134103','1305'));
loctionmapListourl[72]=new Loctionmap('PBL300102','null','','0','','/icbc/newperbank/onlinePayment/login/index_atom.jsp','null','null','0','null','null','null');
nologonList[36]=new Loctionmap('PBL300103','null','','0','');
loctionmapListourl[73]=new Loctionmap('PBL300103','null','','0','','/icbc/newperbank/onlinePayment/forwardToPayment.jsp','/icbc/newperbank/onlinePayment/forwardToPayment.jsp','1','0','null','menuFlag','keyword');
nologonList[37]=new Loctionmap('PBL20134104','130404','','0','1、如需查询您在其他地区提交的外汇买卖交易明细，请调整至相应地区的交易卡（账）号。<br/>2、您最长可查询5年内的历史交易明细。');
loctionmapList.add(new Loctionmap('PBL20134104','130404'));
loctionmapListourl[74]=new Loctionmap('PBL20100103','null','','0','','/icbc/newperbank/fund/fund_acct_query_index.jsp','null','null','0','null','null','null');
loctionmapListourl[75]=new Loctionmap('PBL20100104','null','','0','','/icbc/newperbank/perbank3/financialproducts/finance_mygold.jsp','null','null','0','null','null','null');
nologonList[38]=new Loctionmap('PBL20134105','null','','0','1、您可注销交易账户或调整交易卡。注销交易账户前须清空持仓。');
loctionmapListourl[76]=new Loctionmap('PBL20134105','null','','0','','/icbc/newperbank/foreign/foreign_tran_confirm_mid.jsp?menuId=130103','null','null','0','null','null','null');
loctionmapListourl[77]=new Loctionmap('PBL20100105','null','金融持仓-保险','0','','/icbc/newperbank/assurance/assurance_myown_index.jsp','null','null','0','null','null','null');
nologonList[39]=new Loctionmap('PBL20134106','null','','0','');
loctionmapListourl[78]=new Loctionmap('PBL20134106','null','','0','','null','null','null','0','null','null','null');
nologonList[40]=new Loctionmap('PBL20134107','null','','0','');
loctionmapListourl[79]=new Loctionmap('PBL20134107','null','','0','','null','null','null','0','null','null','null');
nologonList[41]=new Loctionmap('PBL20134108','null','','0','');
loctionmapListourl[80]=new Loctionmap('PBL20134108','null','','0','','null','null','null','0','null','null','null');
nologonList[42]=new Loctionmap('PBL20134109','null','','0','');
loctionmapListourl[81]=new Loctionmap('PBL20134109','null','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20171510','020103'));
loctionmapListourl[82]=new Loctionmap('PBL20171511','null','账户列表-注册账户列表-横版','0','','/icbc/newperbank/account/account_list_regacct_horizontal.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20171512','020111'));
loctionmapListourl[83]=new Loctionmap('PBL201010','null','存款','0','','null','null','null','0','null','null','null');
nologonList[43]=new Loctionmap('PBL20134110','null','','0','');
loctionmapListourl[84]=new Loctionmap('PBL20134110','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[85]=new Loctionmap('PBL20134111','null','','0','','/icbc/newperbank/perbank3/foreign/foreign_collect_sub.jsp','null','null','0','null','null','null');
nologonList[44]=new Loctionmap('PBL201011','null','通知存款','1','');
nologonList[45]=new Loctionmap('PBL20111001','null','','0','');
loctionmapListourl[86]=new Loctionmap('PBL20111001','null','','0','','/icbc/newperbank/perbank3/includes/menu_all.jsp','/icbc/newperbank/perbank3/includes/menu_all_out.jsp','null','0','null','tapkeydata','null');
nologonList[46]=new Loctionmap('PBL201012','null','七天通知存款','1','');
nologonList[47]=new Loctionmap('PBL20111002','null','理财产品','0','');
loctionmapList.add(new Loctionmap('PBL20200301','171201'));
loctionmapListourl[87]=new Loctionmap('PBL20200301','171201','','1','','/icbc/newperbank/stock/offlineIPO/offlineIPO_xieyi.jsp','null','null','0','null','null','null');
nologonList[48]=new Loctionmap('PBL20111004','null','私人银行','0','');
loctionmapListourl[88]=new Loctionmap('PBL20111004','null','私人银行','0','','/icbc/newperbank/perbank3/includes/menu_all.jsp','/icbc/newperbank/perbank3/includes/menu_all_out.jsp','null','0','null','null','null');
loctionmapListourl[89]=new Loctionmap('PBL20060201','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[90]=new Loctionmap('PBL201020','null','定期存款','0','','null','null','null','0','null','null','null');
nologonList[49]=new Loctionmap('PBL201021','null','定期存款','1','');
loctionmapListourl[91]=new Loctionmap('PBL20134122','null','','0','','null','null','null','0','null','null','null');
nologonList[50]=new Loctionmap('PBL201022','null','零存整取','1','');
nologonList[51]=new Loctionmap('PBL20112101','150701','','0','1、处于发行期的柜台记账式债券，在认购时按照发行价进行交易。<br/>2、“票面利率”一栏，对于附息债券显示的是票面利率，对于贴现债券显示的是以发行价格计算的折合年化收益率。<br/>3、处于交易期的柜台记账式债券则按照当日公布的净价进行交易，全价进行资金结算。债券交易实际成交的金额以系统成交金额为准。<br/>4、所有连续交易品种的“债券名称”和“债券简称”均增加了“连续”字样。<br/>5、柜台记账式债券交易时间（电子银行渠道）: 适用于债券发行认购、债券续发行认购、现券买卖和债券转托管。（1）债券发行/续发行认购：债券发行/续发行起始日10:00至截止日16:30。（2）现券买卖/债券转托管：连续交易品种：周一：10:00～24:00；周二至周四：00:00～24:00；周五:00:00～16:30。非连续交易品种：周一至周五：10:00～16:30。国家法定节假日、按国家规定调整后的实际休息日以及监管部门规定的停止交易日除外。<br/>6、柜台记账式债券的开户时间（电子银行渠道）为每周一至周日：0：00－24:00。<br/>7、本行根据市场变化制定债券交易价格，投资人自担风险。');
loctionmapList.add(new Loctionmap('PBL20112101','150701'));
loctionmapListourl[92]=new Loctionmap('PBL20112101','150701','','0','','/icbc/newperbank/nationaldebt/nationaldebt_infoquery_product.jsp','/icbc/newperbank/nationaldebt/nationaldebt_infoquery_product_nosession.jsp','null','0','null','null','null');
nologonList[52]=new Loctionmap('PBL201023','null','教育储蓄','1','');
loctionmapList.add(new Loctionmap('PBL20112102','150702'));
loctionmapListourl[93]=new Loctionmap('PBL20112102','150702','','0','','null','null','null','0','null','null','null');
nologonList[53]=new Loctionmap('PBL201024','null','存本取息','1','');
loctionmapList.add(new Loctionmap('PBL20112103','150703'));
loctionmapListourl[94]=new Loctionmap('PBL20112103','150703','','0','','null','null','null','0','null','null','null');
nologonList[54]=new Loctionmap('PBL201025','null','大额存单','1','');
loctionmapList.add(new Loctionmap('PBL20112104','150704'));
loctionmapListourl[95]=new Loctionmap('PBL20112104','150704','','0','','null','null','null','0','null','null','null');
nologonList[55]=new Loctionmap('PBL20112105','null','','0','');
loctionmapListourl[96]=new Loctionmap('PBL20112105','null','','0','','/icbc/newperbank/perbank3/nationaldebt/nationaldebt_index_information.jsp?infoFlag=1','/icbc/newperbank/perbank3/nationaldebt/nationaldebt_index_information_nosession.jsp','null','0','null','null','null');
loctionmapListourl[97]=new Loctionmap('PBL20112106','null','','0','','/icbc/newperbank/nationaldebt/nationaldebt_enews_setmodify_firstitem1.jsp','null','null','0','null','null','null');
loctionmapListourl[98]=new Loctionmap('PBL20112107','null','','0','','/icbc/newperbank/perbank3/nationaldebt/nationaldebt_index_information.jsp?infoFlag=1','null','null','0','null','null','null');
loctionmapListourl[99]=new Loctionmap('PBL20112108','null','','0','','/icbc/newperbank/perbank3/nationaldebt/nationaldebt_index_information.jsp?infoFlag=2','null','null','0','null','null','null');
loctionmapListourl[100]=new Loctionmap('PBL20112109','null','','0','','/icbc/newperbank/perbank3/nationaldebt/nationaldebt_index_information.jsp?infoFlag=3','null','null','0','null','null','null');
loctionmapListourl[101]=new Loctionmap('PBL201030','null','特色存款','0','','null','null','null','0','null','null','null');
nologonList[56]=new Loctionmap('PBL201031','null','节节高','1','');
loctionmapListourl[102]=new Loctionmap('PBL20112110','null','','0','','null','null','null','0','null','BondID','salePriceLoad');
loctionmapListourl[103]=new Loctionmap('PBL20112111','null','','0','','null','null','null','0','null','BondID','null');
loctionmapListourl[104]=new Loctionmap('PBL20112112','null','','0','','null','null','null','0','null','BondID','null');
loctionmapListourl[105]=new Loctionmap('PBL20112113','null','','0','','null','null','null','0','null','BondID','BondName');
loctionmapListourl[106]=new Loctionmap('PBL20103401','null','','0','','null','null','null','0','null','null','null');
nologonList[57]=new Loctionmap('PBL20072201','null','','0','1、请申请人认真阅读《中国工商银行牡丹信用卡章程》、《牡丹信用卡领用合约》、《安全用卡须知》、《自动还款业务协议书》。<br/>2、如您申请副卡，领卡时须主卡人和副卡人同时持各自有效证件办领卡手续。<br/>3、请确保您所填写的联系方式的准确性，收到申请后我行将与您联系。<br/>');
loctionmapListourl[107]=new Loctionmap('PBL20072201','null','','0','','/icbc/newperbank/card/card_applycard_index.jsp','/icbc/newperbank/bankbook/bankbook_onlineapply_mid.jsp','null','0','null','corpCode','firstPage');
loctionmapListourl[108]=new Loctionmap('PBL20170212','null','','0','','null','null','null','0','null','jumpParam','null');
nologonList[58]=new Loctionmap('PBL20072202','null','','0','');
loctionmapListourl[109]=new Loctionmap('PBL20072202','null','','0','','null','/icbc/newperbank/card/card_queryCard_cred_nosess.jsp','null','0','null','null','null');
loctionmapListourl[110]=new Loctionmap('PBL20076801','null','','0','','/icbc/newperbank/card/fund_peony_set_cardlistquery.jsp','null','null','0','null','null','null');
loctionmapListourl[111]=new Loctionmap('PBL20076802','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[112]=new Loctionmap('PBL20076803','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[113]=new Loctionmap('PBL201040','null','贷款','0','','null','null','null','0','null','null','null');
loctionmapListourl[114]=new Loctionmap('PBL201050','null','质押贷款','0','','null','null','null','0','null','null','null');
loctionmapListourl[115]=new Loctionmap('PBL201052','null','第三人质物质押贷款','1','','/icbc/newperbank/loan/loan_thirdperson_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20200101','171301'));
loctionmapListourl[116]=new Loctionmap('PBL20200101','171301','','0','','/icbc/newperbank/stock/derivative/derivative_bank2stock_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20200102','171302'));
loctionmapListourl[117]=new Loctionmap('PBL20200102','171302','','0','','/icbc/newperbank/stock/derivative/derivative_stock2bank_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20200103','171303'));
loctionmapListourl[118]=new Loctionmap('PBL20200103','171303','','0','','/icbc/newperbank/stock/derivative/derivative_query_lsmx_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20074401','020119'));
loctionmapListourl[119]=new Loctionmap('PBL20074401','020119','','0','','/icbc/newperbank/account/fova_addtofova_app_info.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20074402','020120'));
loctionmapListourl[120]=new Loctionmap('PBL20074402','020120','','0','','/icbc/newperbank/account/fova_addtofova_qry_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20074403','020121'));
loctionmapListourl[121]=new Loctionmap('PBL20074403','020121','','0','','/icbc/newperbank/account/fova_addtoicbc_con_index.jsp','null','null','0','null','null','null');
loctionmapListourl[122]=new Loctionmap('PBL20074404','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[123]=new Loctionmap('PBL201060','null','抵押贷款','0','','null','null','null','0','null','null','null');
loctionmapListourl[124]=new Loctionmap('PBL201062','null','房产价值评估','0','','null','null','null','0','null','null','null');
loctionmapListourl[125]=new Loctionmap('PBL203001','null','投资理财','0','','null','null','null','0','null','null','null');
nologonList[59]=new Loctionmap('PBL20102101','0310','','0','1、转出账户为理财金账户卡、e时代卡或灵通卡的卡内活期账户时，转入账户可以是同一注册卡的基本账户，也可以是其他网上银行注册卡。<br/>2、贷记卡、信用卡、国际卡不支持透支转账。<br/>3、我行为您提供定期存款到期自动转存服务，在您设定定期存款约定转存期限后，在定期存款到期日将税后利息并入本金自动转存。本服务一直有效，在到期日及约转到期日自动进行转存。到期自动转存后，如您需要支取定期存款，除到期日和约转到期日外，均为提前支取。<br/>4、存入账户与付款账户如为同一地区的账户，不收取手续费。如不为同一地区的账户，手续费从付款账户中直接扣收；手续费请参考我行门户网站公布的收费标准及相关优惠活动。<br/>5、本功能不支持自助添加的网银注册卡作为活期转定期功能的转出方。<br/>6、定期存款年利率根据挂牌利率浮动，以浮动后实际利率为准。<br/>7、上海自贸区客户执行市场化浮动利率，浮动利率=挂牌利率±市场化浮动利率。实际执行利率见交易结果。<br/>8、支取教育储蓄时，需要到柜面出具相关证明才能享受优惠利率。');
loctionmapList.add(new Loctionmap('PBL20102101','0310'));
loctionmapListourl[126]=new Loctionmap('PBL20102101','0310','','0','','/icbc/newperbank/account/account_currtransfix_submit.jsp','/icbc/newperbank/account/account_currtransfix_submit_out.jsp','null','0','null','IN_APPID','IN_SAVETYPE');
loctionmapList.add(new Loctionmap('PBL20102102','0311'));
loctionmapList.add(new Loctionmap('PBL20102103','0310'));
loctionmapListourl[127]=new Loctionmap('PBL20102103','0310','','0','','/icbc/newperbank/account/account_fix_frame.jsp','null','null','0','null','IN_APPID','IN_SAVETYPE');
loctionmapList.add(new Loctionmap('PBL20102104','0313'));
nologonList[60]=new Loctionmap('PBL20102106','null','','0','1、转出账户为理财金账户卡、e时代卡或灵通卡的卡内活期账户时，转入账户可以是同一注册卡的基本账户，也可以是其他网上银行注册卡。<br/>2、贷记卡、信用卡、国际卡不支持透支转账。<br/>3、我行为您提供定期存款到期自动转存服务，在您设定定期存款约定转存期限后，在定期存款到期日将税后利息并入本金自动转存。本服务一直有效，在到期日及约转到期日自动进行转存。到期自动转存后，如您需要支取定期存款，除到期日和约转到期日外，均为提前支取。<br/>4、存入账户与付款账户如为同一地区的账户，不收取手续费。如不为同一地区的账户，手续费从付款账户中直接扣收；手续费请参考我行门户网站公布的收费标准及相关优惠活动。<br/>5、本功能不支持自助添加的网银注册卡作为活期转定期功能的转出方。<br/>6、定期存款年利率根据挂牌利率浮动，以浮动后实际利率为准。<br/>7、上海自贸区客户执行市场化浮动利率，浮动利率=挂牌利率±市场化浮动利率。实际执行利率见交易结果。<br/>8、支取教育储蓄时，需要到柜面出具相关证明才能享受优惠利率。');
loctionmapListourl[128]=new Loctionmap('PBL20102106','null','','0','','/icbc/newperbank/account/account_currtransfix_submit.jsp','/icbc/newperbank/account/account_currtransfix_submit_out.jsp','null','0','null','null','null');
loctionmapListourl[129]=new Loctionmap('PBL201070','null','存贷通','0','','null','null','null','0','null','null','null');
loctionmapListourl[130]=new Loctionmap('PBL201071','null','存贷通','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20103201','031201'));
loctionmapListourl[131]=new Loctionmap('PBL20103201','031201','','0','','/icbc/newperbank/account/account_fixcurrlink_pro.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20103202','031202'));
loctionmapList.add(new Loctionmap('PBL20202301','190302'));
loctionmapListourl[132]=new Loctionmap('PBL20202301','190302','','0','','/icbc/newperbank/stock/futurepreopen/futurePreopen_preopen_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20202302','190303'));
loctionmapListourl[133]=new Loctionmap('PBL20202302','190303','','0','','/icbc/newperbank/stock/futurepreopen/futurePreopen_resultquery_index.jsp','null','null','0','null','null','null');
loctionmapListourl[134]=new Loctionmap('PBL20171101','null','','','','/icbc/Emall/main/forward.jsp','/icbc/Emall/main/forward.jsp','1','0','null','turnUrl','null');
loctionmapListourl[135]=new Loctionmap('PBL20076601','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[136]=new Loctionmap('PBL20171102','null','','','','/icbc/Emall/main/forward.jsp','/icbc/Emall/main/forward.jsp','1','0','null','turnUrl','null');
loctionmapListourl[137]=new Loctionmap('PBL20076602','null','','0','','null','null','null','0','null','null','null');
nologonList[61]=new Loctionmap('PBL201080','null','其他贷款','1','储蓄国债');
loctionmapListourl[138]=new Loctionmap('PBL201080','null','其他贷款','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','/icbc/newperbank/perbank3/includes/menu_all_out.jsp','null','0','null','null','null');
loctionmapListourl[139]=new Loctionmap('PBL201081','null','其他贷款申请','1','','/icbc/newperbank/loan/loan_apply_index.jsp','null','null','0','null','null','null');
loctionmapListourl[140]=new Loctionmap('PBL20077701','null','','0','','null','null','null','0','null','creditCardNo','PROVINCE');
loctionmapListourl[141]=new Loctionmap('PBL20077702','null','','0','','null','/icbc/newperbank/card/card_queryCard_cred_nosess.jsp','null','0','null','null','null');
loctionmapListourl[142]=new Loctionmap('PBL201090','null','贷款查询','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201091','0802'));
loctionmapList.add(new Loctionmap('PBL201092','0803'));
loctionmapListourl[143]=new Loctionmap('PBL201095','null','贷款测算','0','','null','null','null','0','0','null','null');
loctionmapListourl[144]=new Loctionmap('PBL201096','null','还款测算','1','','/icbc/newperbank/finance/finance_calculate_loan.jsp','null','null','0','0','null','null');
nologonList[62]=new Loctionmap('PBL201097','null','贷款','0','');
nologonList[63]=new Loctionmap('PBL201098','0801','','0','');
loctionmapList.add(new Loctionmap('PBL201098','0801'));
loctionmapListourl[145]=new Loctionmap('PBL201098','0801','','0','','/icbc/newperbank/loan/loan_myLoan_index_mid2.jsp','/icbc/newperbank/loan/loan_HomePage_nosession.jsp','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20074201','022001'));
loctionmapListourl[146]=new Loctionmap('PBL20074201','022001','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20074202','022002'));
loctionmapListourl[147]=new Loctionmap('PBL20074202','022002','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20074203','022003'));
loctionmapListourl[148]=new Loctionmap('PBL20074203','022003','','0','','/icbc/newperbank/account/account_query_comacct_detail.jsp','null','null','0','null','null','null');
loctionmapListourl[149]=new Loctionmap('PBL20300101','null','理财产品','0','','null','null','null','0','null','null','null');
loctionmapListourl[150]=new Loctionmap('PBL500101','null','','0','','null','null','null','0','null','tranType','protocolCode');
loctionmapListourl[151]=new Loctionmap('PBL500102','null','','0','','null','null','null','0','null','orderId','roleType');
loctionmapListourl[152]=new Loctionmap('PBL500103','null','二手住房购置贷款申请','0','','null','null','null','0','null','source','backUrl');
nologonList[64]=new Loctionmap('PBL500104','null','按订单列表查询二手房按揭贷款进度','0','');
loctionmapListourl[153]=new Loctionmap('PBL500104','null','按订单列表查询二手房按揭贷款进度','0','','null','null','null','0','null','orderId','roleType');
loctionmapListourl[154]=new Loctionmap('PBL20137001','null','','0','','/icbc/newperbank/perbank3/financialproducts/finance_myAcctproduct.jsp','null','null','0','null','null','null');
loctionmapListourl[155]=new Loctionmap('PBL20076401','null','','0','','/icbc/newperbank/card/card_applyCashInstall_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20161101','240302'));
loctionmapListourl[156]=new Loctionmap('PBL20161101','240302','','0','','/icbc/newperbank/payment/payment_build_agreement1.jsp','null','null','0','null','null','null');
loctionmapListourl[157]=new Loctionmap('PBL20076402','null','','0','','/icbc/newperbank/card/card_query_applyCashIntallment_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20161102','240303'));
loctionmapListourl[158]=new Loctionmap('PBL20161102','240303','','0','','/icbc/newperbank/payment/payment_query_agreement1.jsp','null','null','0','null','null','null');
loctionmapListourl[159]=new Loctionmap('PBL20076403','null','','0','','/icbc/newperbank/card/card_query_cashInstallment_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20161103','240305'));
loctionmapListourl[160]=new Loctionmap('PBL20161103','240305','','0','','/icbc/newperbank/payment/agreementConfirm/payment_confirm_agreement_index.jsp','null','null','0','null','null','null');
loctionmapListourl[161]=new Loctionmap('PBL20076404','null','','0','','/icbc/newperbank/card/card_query_cashInstallmentList_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20161104','240304'));
loctionmapListourl[162]=new Loctionmap('PBL20161104','240304','','0','','/icbc/newperbank/payment/payment_query_agreements_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20104101','080801'));
loctionmapList.add(new Loctionmap('PBL20104102','080803'));
loctionmapList.add(new Loctionmap('PBL20203201','3802'));
loctionmapListourl[163]=new Loctionmap('PBL20203201','3802','','0','','/icbc/newperbank/exchange/MyMarket_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20104103','080802'));
loctionmapListourl[164]=new Loctionmap('PBL20203202','null','','0','','/icbc/newperbank/exchange/MyMarket_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20162201','0402'));
loctionmapListourl[165]=new Loctionmap('PBL20162201','0402','','0','','/icbc/newperbank/donation/donation_index.jsp','null','null','0','null','payname','paycode');
loctionmapList.add(new Loctionmap('PBL20077501','2502'));
loctionmapListourl[166]=new Loctionmap('PBL20077501','2502','','0','','/icbc/newperbank/card/card_forward.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20162202','0403'));
loctionmapListourl[167]=new Loctionmap('PBL20162202','0403','','0','','/icbc/newperbank/donation/donation_query_forward.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20163301','3214'));
loctionmapListourl[168]=new Loctionmap('PBL20163301','3214','','0','','/icbc/newperbank/service/myStarLevel/service_mystarlevel_query_index.jsp','null','null','0','null','null','null');
loctionmapListourl[169]=new Loctionmap('PBL200800','null','汇款','0','','null','null','null','0','null','null','null');
loctionmapListourl[170]=new Loctionmap('PBL200809','null','转账汇款','0','','null','null','null','0','null','null','null');
nologonList[65]=new Loctionmap('PBL20031301','null','点金组合','0','');
nologonList[66]=new Loctionmap('PBL201900','null','汇款','0','');
loctionmapListourl[171]=new Loctionmap('PBL201901','null','','0','','/icbc/newperbank/perbank3/myprivilege/myprivilege_mind.jsp','null','null','0','null','null','null');
loctionmapListourl[172]=new Loctionmap('PBL20086001','null','','0','','/icbc/newperbank/account/account_submit_batch_index.jsp','null','null','0','null','null','null');
loctionmapListourl[173]=new Loctionmap('PBL20086002','null','','0','','/icbc/newperbank/account/account_submit_batch_index.jsp','null','null','0','null','parentServiceId','null');
loctionmapListourl[174]=new Loctionmap('PBL20076201','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[175]=new Loctionmap('PBL20076202','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[176]=new Loctionmap('PBL20086003','null','','0','','/icbc/newperbank/account/account_submit_batch_query.jsp','null','null','0','null','null','null');
loctionmapListourl[177]=new Loctionmap('PBL200820','null','跨境汇款','0','','null','null','null','0','null','null','null');
loctionmapListourl[178]=new Loctionmap('PBL20086004','null','','0','','/icbc/newperbank/account/account_submit_batch_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20111901','PB111901'));
loctionmapListourl[179]=new Loctionmap('PBL20111901','PB111901','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20111902','PB111902'));
loctionmapListourl[180]=new Loctionmap('PBL20111902','PB111902','','0','','null','null','null','0','null','null','null');
loctionmapListourl[181]=new Loctionmap('PBL200824','null','西联汇款（解付）','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20076211','250301'));
loctionmapListourl[182]=new Loctionmap('PBL20076211','250301','','0','','/icbc/newperbank/card/card_partRepaySetting_sub.jsp','null','null','0','null','CardNum','null');
loctionmapList.add(new Loctionmap('PBL20076212','250307'));
loctionmapListourl[183]=new Loctionmap('PBL20076212','250307','','0','','/icbc/newperbank/card/card_colletPartSetting_sub.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20077301','310601'));
loctionmapListourl[184]=new Loctionmap('PBL20077301','310601','注册账户挂失','0','','null','null','null','0','null','cardNum','null');
loctionmapList.add(new Loctionmap('PBL20076213','250302'));
loctionmapListourl[185]=new Loctionmap('PBL20076213','250302','','0','','/icbc/newperbank/card/card_debtpay.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20077302','310603'));
loctionmapListourl[186]=new Loctionmap('PBL20077302','310603','非注册账户挂失','0','','/icbc/newperbank/service/service_lossregcard_othercard.jsp','null','null','0','null','null','null');
loctionmapListourl[187]=new Loctionmap('PBL200830','null','收款绑定','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20076214','250303'));
loctionmapListourl[188]=new Loctionmap('PBL20076214','250303','','0','','/icbc/newperbank/card/card_detail_sub.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20077303','310603'));
loctionmapListourl[189]=new Loctionmap('PBL20077303','310603','闪酷卡挂失','0','','/icbc/newperbank/service/service_lossregcard_othercard.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20077304','310604'));
loctionmapListourl[190]=new Loctionmap('PBL20077304','310604','安全介质挂失','0','','/icbc/newperbank/service/service_MediumLossreg_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20076215','250304'));
loctionmapListourl[191]=new Loctionmap('PBL20076215','250304','','0','','/icbc/newperbank/loan/loan_apply_credConsume_mid.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20076216','250305'));
loctionmapListourl[192]=new Loctionmap('PBL20076216','250305','','0','','/icbc/newperbank/card/card_instalment_custom_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20076217','250306'));
loctionmapListourl[193]=new Loctionmap('PBL20076217','250306','','0','','/icbc/newperbank/card/card_instalment_custom_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20076221','080701'));
loctionmapListourl[194]=new Loctionmap('PBL20076221','080701','','0','','/icbc/newperbank/loan/loan_fast_protocol_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20076222','080702'));
loctionmapListourl[195]=new Loctionmap('PBL20076222','080702','','0','','/icbc/newperbank/loan/loan_fast_conductindex.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20076223','080703'));
loctionmapListourl[196]=new Loctionmap('PBL20076223','080703','','0','','null','null','null','0','null','null','null');
loctionmapListourl[197]=new Loctionmap('PBL200840','null','投标保证金','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20076224','080704'));
loctionmapListourl[198]=new Loctionmap('PBL20076224','080704','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20076225','080705'));
loctionmapListourl[199]=new Loctionmap('PBL20076225','080705','','0','','null','null','null','0','null','null','null');
nologonList[67]=new Loctionmap('PBL200601','null','账户贵金属','1','');
loctionmapList.add(new Loctionmap('PBL20076226','080706'));
loctionmapListourl[200]=new Loctionmap('PBL20076226','080706','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL200602','160102'));
nologonList[68]=new Loctionmap('PBL200603','null','贵金属','0','');
loctionmapListourl[201]=new Loctionmap('PBL200603','null','贵金属','0','','/icbc/newperbank/perbank3/gold/frame_acgold_index_in.jsp','/icbc/newperbank/perbank3/gold/frame_acgold_index_out.jsp','null','0','null','null','null');
loctionmapListourl[202]=new Loctionmap('PBL200850','null','工银e支付绑定','0','','null','null','null','0','null','null','null');
loctionmapListourl[203]=new Loctionmap('PBL201710','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[204]=new Loctionmap('PBL201711','null','','1','','null','null','null','0','null','null','null');
loctionmapListourl[205]=new Loctionmap('PBL201712','null','','1','','null','null','null','0','null','null','null');
loctionmapListourl[206]=new Loctionmap('PBL201714','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[207]=new Loctionmap('PBL201715','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[208]=new Loctionmap('PBL201716','null','','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapListourl[209]=new Loctionmap('PBL201717','null','资产','','','null','null','null','null','null','null','null');
loctionmapListourl[210]=new Loctionmap('PBL201718','null','负债','','','null','null','null','null','null','null','null');
loctionmapListourl[211]=new Loctionmap('PBL201719','null','','','','null','null','null','null','null','null','null');
loctionmapListourl[212]=new Loctionmap('PBL20076010','null','信用卡账户','0','','null','null','null','0','null','null','null');
loctionmapListourl[213]=new Loctionmap('PBL20076011','null','卡片管理','0','','null','null','null','0','null','null','null');
loctionmapListourl[214]=new Loctionmap('PBL200870','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[215]=new Loctionmap('PBL20076012','null','卡片操作','0','','null','null','null','0','null','null','null');
nologonList[69]=new Loctionmap('PBL100200','null','体验评价','1','');
loctionmapListourl[216]=new Loctionmap('PBL100200','null','体验评价','1','','/icbc/newperbank/includes/idea_submit.jsp','/icbc/newperbank/includes/idea_submit_nologon.jsp','1','1','null','null','null');
loctionmapListourl[217]=new Loctionmap('PBL20076013','null','服务','0','','null','null','null','0','null','null','null');
loctionmapListourl[218]=new Loctionmap('PBL201721','null','','0','','/icbc/newperbank/perbank3/finance/financial_position_menu.jsp','null','null','0','null','null','null');
loctionmapListourl[219]=new Loctionmap('PBL201725','null','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201726','2304'));
loctionmapListourl[220]=new Loctionmap('PBL201726','2304','','0','','/icbc/newperbank/precontract/precontract_detail_submit.jsp','null','null','0','null','preType','null');
loctionmapListourl[221]=new Loctionmap('PBL201727','null','','0','','/icbc/newperbank/perbank3/myprivilege/privilege_frame.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201728','020104'));
loctionmapListourl[222]=new Loctionmap('PBL201728','020104','下挂卡转注册卡','1','','/icbc/newperbank/account/account_acctTransCard_submit.jsp','null','null','0','null','cardNum','null');
loctionmapList.add(new Loctionmap('PBL201729','020106'));
loctionmapListourl[223]=new Loctionmap('PBL200880','null','财务管理','0','','/icbc/newperbank/account/account_guiji_frame.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201730','020123'));
loctionmapListourl[224]=new Loctionmap('PBL201730','020123','调整账户属性','1','','/icbc/newperbank/account/account_adjustattr_submit.jsp','null','null','0','null','cardNum','null');
loctionmapList.add(new Loctionmap('PBL201731','020124'));
loctionmapListourl[225]=new Loctionmap('PBL201731','020124','账户欠费补缴','1','','/icbc/newperbank/account/account_arrearpay_index.jsp','null','null','0','null','cardNum','acctNum');
loctionmapList.add(new Loctionmap('PBL201732','3114'));
loctionmapListourl[226]=new Loctionmap('PBL201732','3114','','0','','null','null','0','0','null','null','null');
nologonList[70]=new Loctionmap('PBL200401','null','','0','');
nologonList[71]=new Loctionmap('PBL200402','null','','0','');
loctionmapList.add(new Loctionmap('PBL200404','120104'));
loctionmapListourl[227]=new Loctionmap('PBL200890','null','工银e支付','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201500','43'));
loctionmapListourl[228]=new Loctionmap('PBL201500','43','私人银行','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201501','4301'));
loctionmapListourl[229]=new Loctionmap('PBL201501','4301','金融服务','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201502','4302'));
loctionmapListourl[230]=new Loctionmap('PBL201502','4302','非金融服务','0','','null','null','null','0','null','null','null');
loctionmapListourl[231]=new Loctionmap('PBL300601','null','投资理财协议','0','','null','null','null','0','null','null','null');
nologonList[72]=new Loctionmap('PBL201503','430201','专属理财服务','1','');
loctionmapList.add(new Loctionmap('PBL201503','430201'));
loctionmapListourl[232]=new Loctionmap('PBL201503','430201','专属理财服务','1','','null','/icbc/newperbank/perbank3/finance/frame_finance_index_private_out.jsp','null','0','null','null','null');
loctionmapListourl[233]=new Loctionmap('PBL300602','null','转账支付协议','0','','null','null','null','0','null','null','null');
loctionmapListourl[234]=new Loctionmap('PBL300603','null','工银e支付协议','0','','/icbc/newperbank/Epay/myEpay/index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201504','4305'));
loctionmapListourl[235]=new Loctionmap('PBL201504','4305','撮合平台','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201505','430501'));
loctionmapListourl[236]=new Loctionmap('PBL201505','430501','','0','','null','null','null','0','null','null','null');
loctionmapListourl[237]=new Loctionmap('PBL300604','null','工银信使协议','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201506','430502'));
loctionmapListourl[238]=new Loctionmap('PBL201506','430502','','0','','null','null','null','0','null','null','null');
loctionmapListourl[239]=new Loctionmap('PBL300605','null','其他','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201507','430503'));
loctionmapListourl[240]=new Loctionmap('PBL201507','430503','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201508','430205'));
loctionmapListourl[241]=new Loctionmap('PBL201510','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
nologonList[73]=new Loctionmap('PBL20131101','null','','0','1、产品定义。中国工商银行账户贵金属，是中国工商银行为个人客户提供的，采用账户记载形式，以人民币或美元买卖贵金属份额的投资交易产品。其中，账户黄金可根据客户需要，在柜面按照相关报价转换为品牌黄金并提取实物；其余账户贵金属产品，不得提取实物贵金属。<br>2、开办准备。<br>（1）客户办理账户贵金属交易应充分认识并完全理解可能遇到的各类风险，在通过风险能力评测和投资交易类产品适合度评估后方能办理账户贵金属开户及交易业务。建议您仔细阅读账户贵金属产品介绍、交易规则、交易协议及知识问答（详见网上银行右侧交易区下方“产品详情”），以更好地了解本产品。<br>（2）如您的资金账户不是多币种借记卡或结算账户，请您在办理前指定新的多币种借记卡或结算账户，或到网上银行“我的账户贵金属-交易账户管理-调整交易卡”栏目/营业网点柜面调整账户属性。<br>3、交易时间。网上银行账户贵金属交易时间一般为周一早07：00到周六早04：00。如遇节假日等特殊情况，请以我行网站公告为准。<br>4、界面指引。左侧实时行情区提供账户贵金属报价与走势图，该区域所有价格均为参考报价，不能凭此达成交易。右侧交易区提供了先买入后卖出、先卖出后买入两种交易类型，以及实时、挂单、定投三种交易方式。如您希望按照当前交易报价实时买卖账户贵金属，请选择实时交易，我行将在您提交交易指令后显示当前可成交价格，该价格有效期为10秒钟，请您尽快确认；如您希望未来一段时间内以您指定的条件成交，请选择挂单交易，各种挂单种类与挂单有效期介绍请参阅产品介绍（各地区挂单种类可能不同，请以实际情况为准），挂单成功后，如您需撤销挂单，请到“我的账户贵金属-挂单管理”中办理；如您希望在一段时间内定期买入账户贵金属，请选择定投交易，定投交易仅适用于先买入后卖出交易类型。<br>5、特别提示。<br>（1）价差调整说明。根据市场情况，我行可能会调整账户贵金属的银行买入价/卖出价和交易价差，请您在达成交易前注意。<br>（2）质押融资服务。您可以通过网银账户贵金属质押或网上贷款栏目，将持有的账户贵金属办理个人质押贷款业务。<br>6、如有其它疑问，请致电95588咨询。');
loctionmapListourl[242]=new Loctionmap('PBL20111500','null','','0','','/icbc/newperbank/finance/finance_new_custrisk_index.jsp','null','null','0','null','fundCode','null');
nologonList[74]=new Loctionmap('PBL20131102','null','','0','1、如需查询您在其他地区的挂单交易明细，请调整至相应地区的交易卡（账）号。<br/>2、挂单明细包括已成交和未成交的所有挂单指令，也包括手动撤销和自动撤销的挂单指令。<br/>3、您可以撤销有效期内未成交的挂单交易。<br/>4、您最长可查询3个月内的挂单交易明细。');
loctionmapListourl[243]=new Loctionmap('PBL201512','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[244]=new Loctionmap('PBL20111501','null','','0','','/icbc/newperbank/finance/finance_new_drmx_query.jsp','null','null','0','null','null','null');
nologonList[75]=new Loctionmap('PBL20131103','null','','0','1、如需对您在其他地区开立的的账户贵金属先卖出后买入交易保证金账户资金进行操作，请调整至相应地区的交易卡（账）号。<br/>2、您可查询保证金账户中的美元或人民币资金余额。<br/>3、您可将资金账户中的美元或人民币转入保证金账户，也可将保证金账户中的可用资金转出。<br/><font color=red>4、美元保证金账户的钞汇类型与上一次转入美元资金的钞汇类型一致，若调整保证金账户钞汇类型，请清空保证金账户余额并转入相应的美元钞或者美元汇。<br/></font>5、您最长可查询半年内的保证金账户明细。');
loctionmapListourl[245]=new Loctionmap('PBL201513','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[246]=new Loctionmap('PBL20111502','null','','0','','/icbc/newperbank/finance/finance_new_acct_query_index.jsp','null','null','0','null','null','null');
nologonList[76]=new Loctionmap('PBL20131104','null','','0','1、目前同一客户最多可签订30个有效定投计划。<br/>2、每日15：00至17：00为我行贵金属定投业务批量处理时间，客户无法终止或修改定投计划。<br/>3、客户通过定投交易买入的账户贵金属可通过账户贵金属实时交易、挂单交易等方式卖出。 ');
loctionmapListourl[247]=new Loctionmap('PBL201514','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[248]=new Loctionmap('PBL20111503','null','','0','','/icbc/newperbank/finance/finance_new_unitvalue_query.jsp','null','null','0','null','fundname2','fundno2');
nologonList[77]=new Loctionmap('PBL20131105','null','','0','1、如需查询您在其他地区开立的账户贵金属账户的交易明细，请调整至相应地区的交易卡（账）号。');
nologonList[78]=new Loctionmap('PBL20111504','12011102','','0','');
loctionmapList.add(new Loctionmap('PBL20111504','12011102'));
loctionmapListourl[249]=new Loctionmap('PBL20111504','12011102','','0','','/icbc/newperbank/perbank3/finance/frame_finance_productinfo_login.jsp','/icbc/newperbank/perbank3/finance/frame_finance_productinfo_unlogin.jsp','null','0','null','null','null');
loctionmapListourl[250]=new Loctionmap('PBL201515','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
nologonList[79]=new Loctionmap('PBL20131106','null','','0','1、您可注销交易账户或调整交易卡。注销交易账户前须清空持仓及保证金账户。<br/>2、注销贵金属账户后，历史交易记录等均无法查询。<br/>3、调整交易卡功能只能在柜面注册卡之间进行调整，网银添加的注册卡不能调整，如需办理可到我行营业网点办理。<br/>4、如果账户属性为单币种账户，请先调整为多币种账户后再进行该交易。如需调整请点击调整账户属性。');
loctionmapList.add(new Loctionmap('PBL20111505','12011107'));
loctionmapListourl[251]=new Loctionmap('PBL20111505','12011107','','0','','/icbc/newperbank/finance/finance_new_cancel_index.jsp','null','null','0','null','null','null');
loctionmapListourl[252]=new Loctionmap('PBL201517','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[253]=new Loctionmap('PBL201518','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[254]=new Loctionmap('PBL201519','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[255]=new Loctionmap('PBL20090102','null','','0','','/icbc/newperbank/remit/remit_queryremitpack_index.jsp','null','null','0','null','null','null');
loctionmapListourl[256]=new Loctionmap('PBL20090103','null','','0','','/icbc/newperbank/remit/remit_queryremitpack_index1.jsp','null','null','0','null','null','null');
loctionmapListourl[257]=new Loctionmap('PBL201760','null','','0','','/icbc/newperbank/perbank3/quickFuc/quickTrans.jsp','null','null','0','null','null','null');
loctionmapListourl[258]=new Loctionmap('PBL20176001','null','','0','','/icbc/newperbank/account/AccountQuery.jsp','null','null','0','null','null','null');
loctionmapListourl[259]=new Loctionmap('PBL201520','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[260]=new Loctionmap('PBL201521','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
nologonList[80]=new Loctionmap('PBL20132201','null','','0','1、客户可通过“查询份额调整信息”功能查询账户农产品连续产品的份额调整记录、历史份额调整价格、份额调整日期等信息，并可以修改接收份额调整短信的手机号码。<br>2、客户若查询其他地区账户农产品账户中的余额，请调整至相应地区的交易卡（账）号。');
nologonList[81]=new Loctionmap('PBL20132202','null','','0','1、客户若查询其他地区建立的挂单交易明细，请调整至相应地区的交易卡（账）号。<br />2、客户可查询半年内的挂单交易明细。');
loctionmapListourl[261]=new Loctionmap('PBL201522','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[262]=new Loctionmap('PBL201523','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
nologonList[82]=new Loctionmap('PBL20132203','null','','0','1、您可查询保证金账户中的美元或人民币资金余额。<br />2、您可将资金账户中的美元或人民币转入保证金账户，也可将保证金账户中的可用资金转出。<br />3、美元保证金账户的钞汇类型与上一次转入美元资金的钞汇类型一致，若调整保证金账户钞汇类型，请清空保证金账户余额并转入相应的美元钞或者美元汇。');
loctionmapListourl[263]=new Loctionmap('PBL201524','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
nologonList[83]=new Loctionmap('PBL20132204','null','','0','1、客户可实时提交产品转期指令，中国工商银行按照客户指定数量及实时转期价格自动平仓上期产品并开仓下期产品。<br>2、转期功能支持同一币种、同一交易类型账户农产品上期产品向下期产品的转换。<br>3、实时转期的办理时间一般为在上下两期产品同时在线期间（即下期产品交易起始日至上期产品交易结束日间）的账户农产品交易时间。<br><font color="red">4、实时转期中上期产品平仓价和下期产品开仓价一般情况下大幅好于同时点账户农产品客户卖出价/买入价（即银行买入价/卖出价）。</font><br>5、具体功能请查询账户农产品的产品介绍及交易规则。');
loctionmapListourl[264]=new Loctionmap('PBL201525','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapList.add(new Loctionmap('PBL20201901','171102'));
loctionmapListourl[265]=new Loctionmap('PBL20201901','171102','','0','','/icbc/newperbank/stock/stock_bank_fund_query_index.jsp','null','null','0','null','null','null');
nologonList[84]=new Loctionmap('PBL20132205','420505','','0','1、客户若查询其他地区开立的账户农产品交易账户交易明细，请调整至相应地区的交易卡（账）号。');
loctionmapList.add(new Loctionmap('PBL20132205','420505'));
loctionmapListourl[266]=new Loctionmap('PBL201526','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapList.add(new Loctionmap('PBL20201902','171103'));
loctionmapListourl[267]=new Loctionmap('PBL20201902','171103','','0','','/icbc/newperbank/stock/stock_fund_query_index.jsp','null','null','0','null','null','null');
nologonList[85]=new Loctionmap('PBL20132206','null','','0','1、客户可查询账户农产品的交易起始日、交易结束日、结算日信息和结算价格。<br />2、美元账户农产品产品的到期结算价为产品交易结束日相应农产品期货合约的国际市场结算价格。<br />3、人民币账户农产品产品的到期结算价分为先买入后卖出到期结算价和先卖出后买入到期结算价，以上两个到期结算价格分别根据美元账户农产品的到期结算价格和中国工商银行在结算日前一工作日23:30公布的人民币兑美元即期结售汇挂牌牌价的银行现汇买入价和银行现汇卖出价计算得出。');
loctionmapListourl[268]=new Loctionmap('PBL201527','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapList.add(new Loctionmap('PBL20201903','171104'));
loctionmapListourl[269]=new Loctionmap('PBL20201903','171104','','0','','/icbc/newperbank/stock/stock_success_detail_query_index.jsp','null','null','0','null','null','null');
nologonList[86]=new Loctionmap('PBL20132207','null','','0','1、客户可注销交易账户或调整交易卡。注销交易账户前客户须清空持仓及保证金账户。');
nologonList[87]=new Loctionmap('PBL20132208','null','','0','1、您可以通过“查询持仓的份额调整记录”功能了解所持有的账户农产品连续产品的份额调整情况。<br />2、您的账户农产品连续产品持仓资产规模在份额调整前后保持不变，即调整前持仓*份额调整前价格=调整后持仓*份额调整后价格+退还资金（释放保证金），其中份额调整过程中剩余不足开仓1蒲式耳的资金（或保证金）将退还至您的资金账户（或释放到保证金账户）。<br />3、您可以通过“查询历史份额调整价格”功能了解账户农产品连续产品历史份额调整价格。<br />4、您可以通过“份额调整短信提醒”功能订阅账户农产品连续产品份额调整结果通知，并修改接收短信的手机号码。');
loctionmapList.add(new Loctionmap('PBL20201904','171105'));
loctionmapListourl[270]=new Loctionmap('PBL20201904','171105','','0','','/icbc/newperbank/stock/stock_bank2stock_index.jsp','null','null','0','null','null','null');
loctionmapListourl[271]=new Loctionmap('PBL201528','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapList.add(new Loctionmap('PBL20201905','171106'));
loctionmapListourl[272]=new Loctionmap('PBL20201905','171106','','0','','/icbc/newperbank/stock/stock_stock2bank_index.jsp','null','null','0','null','null','null');
loctionmapListourl[273]=new Loctionmap('PBL201529','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapList.add(new Loctionmap('PBL20201906','171107'));
loctionmapListourl[274]=new Loctionmap('PBL20201906','171107','','0','','/icbc/newperbank/stock/stock_client_mess_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20201907','171108'));
loctionmapListourl[275]=new Loctionmap('PBL20201907','171108','','0','','/icbc/newperbank/stock/stock_online_help.jsp','null','null','0','null','null','null');
nologonList[88]=new Loctionmap('PBL200440','null','','0','');
nologonList[89]=new Loctionmap('PBL20132210','null','','0','1、客户设置到期转期类型后，中国工商银行在产品到期日按到期转期结算价格及客户选定的转期方式自动平仓上期产品并开仓下期产品，一般在次日的7:05起开始转期交易。<br>2、到期转期一经开启、长期有效，客户可在“管理自动转期”菜单下终止转期功能。<br>3、按金额转期（即固定金额转期）的方式是使用平仓全部上期产品数量所得资金，以最大可开仓数量同时开仓下期产品；按桶数转期（即固定数量转期）的方式是按客户持有的全部上期产品数量，尽可能开仓相同数量的下期产品。<br><font color="red">4、到期转期中上期产品平仓价和下期产品开仓价一般情况下大幅好于同时点账户客户卖出价/买入价（即银行买入价/卖出价）。</font><br>5、具体功能请查询账户农产品的产品介绍及交易规则。');
loctionmapListourl[276]=new Loctionmap('PBL201530','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[277]=new Loctionmap('PBL201531','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
nologonList[90]=new Loctionmap('PBL20132211','null','','0','1、客户可以通过点击“撤销”取消已经预约的转期计划。');
nologonList[91]=new Loctionmap('PBL200201','null','','0','');
loctionmapListourl[278]=new Loctionmap('PBL200201','null','','0','','/icbc/newperbank/perbank3/indexin.jsp','/icbc/newperbank/perbank3/indexout.jsp','null','0','null','null','null');
loctionmapListourl[279]=new Loctionmap('PBL201532','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
nologonList[92]=new Loctionmap('PBL20132212','null','','0','1、客户可以查询账户农产品实时转期和到期转期的交易明细。');
nologonList[93]=new Loctionmap('PBL200202','null','首页','0','');
loctionmapListourl[280]=new Loctionmap('PBL200202','null','首页','0','','/icbc/newperbank/1.html','/icbc/newperbank/1.html','null','0','null','null','null');
nologonList[94]=new Loctionmap('PBL20132213','null','','0','');
nologonList[95]=new Loctionmap('PBL200203','null','','0','');
loctionmapListourl[281]=new Loctionmap('PBL200203','null','','0','','/icbc/newperbank/perbank3/frame/huishenghuo.jsp','/icbc/newperbank/perbank3/frame/huishenghuo_ns.jsp','null','0','null','null','null');
loctionmapListourl[282]=new Loctionmap('PBL201534','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[283]=new Loctionmap('PBL201535','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
nologonList[96]=new Loctionmap('PBL200204','null','','0','');
loctionmapListourl[284]=new Loctionmap('PBL200204','null','','0','','/icbc/newperbank/perbank3/frame/all_products.jsp','/icbc/newperbank/perbank3/frame/all_products.jsp','null','0','null','isLogin','topServiceId');
loctionmapListourl[285]=new Loctionmap('PBL201536','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[286]=new Loctionmap('PBL201537','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[287]=new Loctionmap('PBL201538','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[288]=new Loctionmap('PBL201539','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[289]=new Loctionmap('PBL201540','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[290]=new Loctionmap('PBL201541','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[291]=new Loctionmap('PBL20178201','null','','0','','/icbc/newperbank/account/account_eChartsNew.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20133311','160301'));
loctionmapListourl[292]=new Loctionmap('PBL201542','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[293]=new Loctionmap('PBL20178202','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[294]=new Loctionmap('PBL201300','null','贵金属.外汇.账户商品','0','','null','null','null','0','null','null','null');
loctionmapListourl[295]=new Loctionmap('PBL201543','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapList.add(new Loctionmap('PBL20133312','160301'));
loctionmapListourl[296]=new Loctionmap('PBL20178203','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[297]=new Loctionmap('PBL201544','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[298]=new Loctionmap('PBL20178204','null','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20133313','160301'));
loctionmapList.add(new Loctionmap('PBL20133314','160301'));
loctionmapList.add(new Loctionmap('PBL201545','4301'));
loctionmapListourl[299]=new Loctionmap('PBL201545','4301','我的财富','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20133315','160301'));
loctionmapList.add(new Loctionmap('PBL201546','4311'));
loctionmapListourl[300]=new Loctionmap('PBL201546','4311','服务协议管理','0','','/icbc/newperbank/private/private_RemoteService_menu_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201547','4304'));
loctionmapListourl[301]=new Loctionmap('PBL201547','4304','资产管理','1','','/icbc/newperbank/private/private_report_menu_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20133316','160301'));
loctionmapList.add(new Loctionmap('PBL201548','4312'));
loctionmapListourl[302]=new Loctionmap('PBL201548','4312','增值服务','1','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20133317','160301'));
loctionmapList.add(new Loctionmap('PBL201549','4310'));
loctionmapListourl[303]=new Loctionmap('PBL201549','4310','对账单','0','','/icbc/newperbank/private/private_buildstatemente_menu_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20133318','160301'));
loctionmapList.add(new Loctionmap('PBL201550','4309'));
loctionmapListourl[304]=new Loctionmap('PBL201550','4309','委托确认','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201551','4306'));
loctionmapListourl[305]=new Loctionmap('PBL201551','4306','活动邀请','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapListourl[306]=new Loctionmap('PBL201310','null','账户贵金属','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201552','4307'));
loctionmapListourl[307]=new Loctionmap('PBL201552','4307','资讯平台','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
nologonList[97]=new Loctionmap('PBL201311','160101','账户贵金属','0','1、产品定义。中国工商银行账户贵金属，是中国工商银行为个人客户提供的，采用账户记载形式，以人民币或美元买卖贵金属份额的投资交易产品。其中，账户黄金可根据客户需要，在柜面按照相关报价转换为品牌黄金并提取实物；其余账户贵金属产品，不得提取实物贵金属。<br>2、开办准备。（1）客户办理账户贵金属交易应充分认识并完全理解可能遇到的各类风险，在通过风险能力评测和投资交易类产品适合度评估后方能办理账户贵金属开户及交易业务。建议您仔细阅读账户贵金属产品介绍、交易规则、交易协议及知识问答（详见网上银行右侧交易区下方“产品详情”），以更好地了解本产品。<br>（2）如您的资金账户不是多币种借记卡或结算账户，请您在办理前指定新的多币种借记卡或结算账户，或到网上银行“我的账户贵金属-交易账户管理-调整交易卡”栏目/营业网点柜面调整账户属性。<br>3、交易时间。网上银行账户贵金属交易时间一般为周一早07：00到周六早04：00。如遇节假日等特殊情况，请以我行网站公告为准。<br>4、界面指引。左侧实时行情区提供账户贵金属报价与走势图，该区域所有价格均为参考报价，不能凭此达成交易。右侧交易区提供了先买入后卖出、先卖出后买入两种交易类型，以及实时、挂单、定投三种交易方式。如您希望按照当前交易报价实时买卖账户贵金属，请选择实时交易，我行将在您提交交易指令后显示当前可成交价格，该价格有效期为10秒钟，请您尽快确认；如您希望未来一段时间内以您指定的条件成交，请选择挂单交易，各种挂单种类与挂单有效期介绍请参阅产品介绍（各地区挂单种类可能不同，请以实际情况为准），挂单成功后，如您需撤销挂单，请到“我的账户贵金属-挂单管理”中办理；如您希望在一段时间内定期买入账户贵金属，请选择定投交易，定投交易仅适用于先买入后卖出交易类型。<br>5、特别提示。<br>（1）价差调整说明。根据市场情况，我行可能会调整账户贵金属的银行买入价/卖出价和交易价差，请您在达成交易前注意。<br>（2）质押融资服务。您可以通过网银账户贵金属质押或网上贷款栏目，将持有的账户贵金属办理个人质押贷款业务。<br>6、如有其它疑问，请致电95588咨询。');
loctionmapList.add(new Loctionmap('PBL201311','160101'));
loctionmapList.add(new Loctionmap('PBL201553','4308'));
loctionmapListourl[308]=new Loctionmap('PBL201553','4308','财富顾问','1','','/icbc/newperbank/private/private_message_menu_index.jsp','null','null','0','null','null','null');
nologonList[98]=new Loctionmap('PBL201312','null','账户贵金属指数','0','1、产品定义。中国工商银行账户贵金属指数，是中国工商银行以工行账户黄金、账户白银、账户铂金和账户钯金产品作为指数成分，按照一定方法编制的，综合反映工行账户贵金属各品种价格涨跌的相对数，分为人民币账户贵金属指数和美元账户贵金属指数。<br/>2、开办准备。<br/>（1）客户办理账户贵金属指数交易应充分认识并完全理解可能遇到的各类风险，在通过风险能力评测和投资交易类产品适合度评估后方能办理账户贵金属指数开户及交易业务。建议您仔细阅读账户贵金属指数产品介绍、交易规则及知识问答（详见网上银行右侧交易区下方“产品详情”），以更好地了解本产品。<br/>（2）如您的资金账户不是多币种借记卡或结算账户，请您在办理前指定新的多币种借记卡或结算账户，或到网上银行“我的账户贵金属指数-交易账户管理-调整交易卡”栏目/营业网点柜面调整账户属性。<br/>3、交易时间。网上银行账户贵金属指数交易时间一般为周一早07:00到周六早04:00。如遇节假日等特殊情况，请以我行网站公告为准。<br/>4、界面指引。左侧实时行情区提供账户贵金属指数报价与走势图，该区域所有价格均为参考报价，不能凭此达成交易。右侧交易区提供了先买入后卖出、先卖出后买入两种交易类型，以及实时、挂单两种交易方式。如您希望按照当前交易报价实时买卖账户贵金属指数，请选择实时交易，我行将在您提交交易指令后显示当前可成交价格，该价格有效期为10秒钟，请您尽快确认；如您希望未来一段时间内以您指定的条件成交，请选择挂单交易，各种挂单种类与挂单有效期介绍请参阅产品介绍（各地区挂单种类可能不同，请以实际情况为准），挂单成功后，如您需撤销挂单，请到“我的账户贵金属指数-挂单管理”中办理。<br/>5、特别提示。<br/>（1）价差调整说明。根据市场情况，我行可能会调整账户贵金属指数的银行买入价/卖出价和交易价差，请您在达成交易前注意。<br/>（2）账户贵金属指数以2016年10月1日为基期，选取当日工行各品种账户贵金属凌晨4:00的中间价作为基期价格，基期指数值设定为100。<br/>（3）账户贵金属指数再平衡是中国工商银行定期使账户贵金属指数涉及的各品种账户贵金属金额权重回归账户黄金60%、账户白银30%、账户铂金5%、账户钯金5%的一种处理方法，再平衡前后客户持有指数份额和指数价值不变。中国工商银行于每年1月份的第二个星期日进行再平衡操作。<br/>6、如有其它疑问，请致电95588咨询。');
loctionmapList.add(new Loctionmap('PBL201554','430101'));
loctionmapListourl[309]=new Loctionmap('PBL201554','430101','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201555','430102'));
loctionmapListourl[310]=new Loctionmap('PBL201555','430102','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201556','430103'));
loctionmapListourl[311]=new Loctionmap('PBL201556','430103','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201557','430104'));
loctionmapListourl[312]=new Loctionmap('PBL201557','430104','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201558','431101'));
loctionmapListourl[313]=new Loctionmap('PBL201558','431101','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201559','430901'));
loctionmapListourl[314]=new Loctionmap('PBL201559','430901','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201560','430902'));
loctionmapListourl[315]=new Loctionmap('PBL201560','430902','','0','','null','null','null','0','null','null','null');
nologonList[99]=new Loctionmap('PBL20132241','420502','','0','1、账户农产品产品的交易起始日、交易结束日和结算日等信息可在账户农产品“查询产品信息”栏目下查询，账户大豆1蒲式耳约合27.2千克。<br />2、账户农产品交易时间一般为周一9：30到20：30与22：30到24：00，周二至周五每日0：00到2：00、9：30到20：30与22：30到24：00，周六0：00到2：00。<br />3、客户通过我行风险能力评测和投资交易类产品适合度评估后方能办理账户农产品开户及交易业务。<br />4、挂单交易的有效期包括24小时、48小时、72小时、96小时、120小时，客户可通过挂单有效期下拉选项选择。<br />5、在账户农产品行情报价，您看到的报价为参考报价，仅供您参考，不能凭此达成交易；如您需要达成交易，请联动到交易区获取可成交报价后完成交易。<br />6、根据市场情况，我行可能调整账户农产品的银行买入价/卖出价和交易价差，请客户在达成交易前注意。<br />7、因国家监管政策等原因，我行对所有客户人民币账户农产品产品总持仓净额设定上、下限。当客户持仓触及上、下限时，客户将不能进行新开仓操作，平仓操作不受影响。<br />8、某期账户农产品产品到期后，客户若没有参与转期而仍持有该期产品，我行将按照该期产品到期结算价为客户进行结算，客户资金在该期产品结算日到账。<br />9、为便于客户更好地了解该业务，我行在门户网站-个人业务-金融市场投资交易-热点问答中增加了账户农产品交易业务知识问答。');
loctionmapList.add(new Loctionmap('PBL20132241','420502'));
loctionmapListourl[316]=new Loctionmap('PBL20132241','420502','','0','','null','null','null','null','0','prodcode','cashsign');
loctionmapList.add(new Loctionmap('PBL201561','430401'));
loctionmapListourl[317]=new Loctionmap('PBL201561','430401','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201562','430601'));
loctionmapListourl[318]=new Loctionmap('PBL201562','430601','','0','','null','null','null','0','null','null','null');
loctionmapListourl[319]=new Loctionmap('PBL201320','null','账户商品','0','','null','null','null','0','null','null','null');
nologonList[100]=new Loctionmap('PBL201321','420101','账户能源','0','1、产品定义。中国工商银行账户能源，是中国工商银行为个人客户提供的，采取只计份额、不提取实物能源的方式，以人民币或美元买卖能源份额的投资交易产品。<br>2、开办准备。（1）客户办理账户能源交易应充分认识并完全理解可能遇到的各类风险，在通过风险能力评测和投资交易类产品适合度评估后方能办理账户能源开户及交易业务。建议您仔细阅读账户能源产品介绍、交易规则、交易协议及知识问答（详见网上银行右侧交易区下方“产品详情”），以更好地了解本产品。（2）如您的资金账户不是多币种借记卡或结算账户，请您在办理前指定新的多币种借记卡或结算账户，或到网上银行“我的账户能源-交易账户管理-调整交易卡”栏目/营业网点柜面调整账户属性。<br>3、交易时间。网上银行账户能源交易时间一般为周一9：00到24：00，周二至周五每日0：00到4：00与9：00到24：00，周六0：00到4：00。如遇节假日等特殊情况，请以我行网站公告为准。<br>4、界面指引。左侧实时行情区提供账户能源报价与走势图，该区域所有价格均为参考报价，不能凭此达成交易。右侧交易区提供了先买入后卖出、先卖出后买入两种交易类型，以及实时、挂单两种交易方式。如您希望按照当前交易报价实时买卖账户能源，请选择实时交易，我行将在您提交交易指令后显示当前可成交价格，该价格有效期为10秒钟，请您尽快确认；如您希望未来一段时间内以您指定的条件成交，请选择挂单交易，各种挂单种类与挂单有效期介绍请参阅产品介绍（各地区挂单种类可能不同，请以实际情况为准），挂单成功后，如您需撤销挂单，请到“我的账户能源-挂单管理”中办理。<br>5、特别提示。<br>（1）我行账户天然气为连续产品，账户原油分为期次产品与连续产品。期次产品按期次发行，每期产品到期后客户将不能继续交易。连续产品没有到期日，客户可持续交易。（2）期次产品到期自动结算。在某期次产品到期后，客户若没有参与转期而仍持有该期产品，我行将按照该期产品到期结算价为客户进行结算，客户资金在该期产品结算日到账；期次产品的交易起始日、交易结束日和结算日等信息可在“我的账户能源-产品信息和结算价格”栏目查询。（3）期次产品转期功能。客户持有的期次产品可通过转期功能转换为下一期产品（限同一币种、同一交易类型）。我行提供实时转期、自选转期和到期转期三种转期类型。其中，对于实时转期，我行按照实时转期价格为客户办理转期（即平仓上期产品同时开仓下期产品）；对于自选转期，我行根据客户选定的转期时点，按照相应时点的自选转期价格为客户办理转期；对于到期转期，我行按照上期产品的到期转期结算价格和下期产品的当日转期结算价格于到期日次日为客户办理转期；无论选择哪种转期类型，转期前后客户的资产总值不变。具体转期功能设置及转期明细查询可在“我的账户能源-转期管理”栏目进行。（4）连续产品份额调整。连续产品存续期间会根据参考的交易所能源合约期次调整情况同步调整客户持有的份额；份额调整前价格、份额调整后价格参考交易所对应期次合约的份额调整日结算价以及我行当日结售汇牌价。我行不收取份额调整费用，份额调整前后客户的资产总值不变；连续产品份额调整的有关信息（包括调整日、调整价格、份额调整记录等），可在“我的账户能源-查询份额调整信息”栏目查询。（5）总持仓限额。因国家监管政策等原因，我行对所有客户人民币账户能源产品总持仓净额设定上、下限。当所有客户持仓触及上、下限时，您将不能进行新开仓操作，平仓操作不受影响。（6）产品报价时段差异。根据国际市场流动性差异，我行账户能源产品在不同时段报价价差有可能不同。根据市场情况，我行可能会调整账户能源的银行买入价/卖出价和交易价差，请您在达成交易前注意。<br>6、如有其它疑问，请致电95588咨询。<br>7、如您需要查看账户原油客户文档，请点击<a href=');
loctionmapList.add(new Loctionmap('PBL201321','420101'));
loctionmapList.add(new Loctionmap('PBL201563','430602'));
loctionmapListourl[320]=new Loctionmap('PBL201563','430602','','0','','null','null','null','0','null','null','null');
nologonList[101]=new Loctionmap('PBL201322','420501','账户农产品 ','0','1、产品定义。中国工商银行账户农产品，是中国工商银行为个人客户提供的，采取只计份额、不提取实物农产品的方式，以人民币或美元交易农产品份额的投资交易产品。<br>2、开办准备。（1）客户办理账户农产品交易应充分认识并完全理解可能遇到的各类风险，在通过风险能力评测和投资交易类产品适合度评估后方能办理账户农产品开户及交易业务。建议您仔细阅读账户农产品产品介绍、交易规则、交易协议及知识问答（详见网上银行右侧交易区下方“产品详情”），以更好地了解本产品。<br>（2）如您的资金账户不是多币种借记卡或结算账户，请您在办理前指定新的多币种借记卡或结算账户，或到网上银行“我的账户农产品-交易账户管理-调整交易卡”栏目/营业网点柜面调整账户属性。<br>3、交易时间。网上银行账户农产品交易时间一般为周一9：30到20：30与22：30到24：00，周二至周五每日0：00到2：00、9：30到20：30与22：30到24：00，周六0：00到2：00。如遇节假日等特殊情况，请以我行网站公告为准。<br> 4、界面指引。左侧实时行情区提供账户农产品报价与走势图，该区域所有价格均为参考报价，不能凭此达成交易。右侧交易区提供了先买入后卖出、先卖出后买入两种交易类型，以及实时、挂单两种交易方式。如您希望按照当前交易报价实时买卖账户农产品，请选择实时交易，我行将在您提交交易指令后显示当前可成交价格，该价格有效期为10秒钟，请您尽快确认；如您希望未来一段时间内以您指定的条件成交，请选择挂单交易，各种挂单种类与挂单有效期介绍请参阅产品介绍（各地区挂单种类可能不同，请以实际情况为准），挂单成功后，如您需撤销挂单，请到“我的账户农产品-挂单管理”中办理。<br>5、特别提示。<br>（1）我行账户农产品分为期次产品与连续产品。期次产品按期次发行，每期产品到期后客户将不能继续交易。连续产品没有到期日，客户可持续交易。<br>（2）期次产品到期自动结算。在某期次产品到期后，客户若没有参与转期而仍持有该期产品，我行将按照该期产品到期结算价为客户进行结算，客户资金在该期产品结算日到账；期次产品的交易起始日、交易结束日和结算日等信息可在“我的账户农产品-产品信息和结算价格”栏目查询。<br>（3）期次产品转期功能。客户持有的账户农产品可通过转期功能转换为下一期产品（限同一币种、同一交易类型）。我行提供实时转期和到期转期两种转期类型。其中，对于实时转期，我行按照实时转期价格为客户办理转期（即平仓上期产品同时开仓下期产品）；对于到期转期，我行按照上期产品的到期转期结算价格和下期产品的当日转期结算价格于到期日次日为客户办理转期；无论选择哪种转期类型，转期前后客户的资产总值不变。具体转期功能设置及转期明细查询可在“我的账户农产品-转期管理”栏目进行。<br>（4）连续产品份额调整。连续产品存续期间会根据参考的交易所农产品合约期次调整情况同步调整客户持有的份额；份额调整前价格、份额调整后价格参考交易所对应期次合约的份额调整日结算价以及我行当日结售汇牌价。我行不收取份额调整费用，份额调整前后客户的资产总值不变；连续产品份额调整的有关信息（包括调整日、调整价格、份额调整记录等），可在“我的账户农产品-查询份额调整信息”栏目查询。<br>（5）总持仓限额。因国家监管政策等原因，我行对所有客户人民币账户农产品总持仓净额设定上、下限。当所有客户持仓触及上、下限时，您将不能进行新开仓操作，平仓操作不受影响。<br>（6）价差调整说明。根据市场情况，我行可能会调整账户农产品的银行买入价/卖出价和交易价差，请您在达成交易前注意。<br>6、如有其它疑问，请致电95588咨询。');
loctionmapList.add(new Loctionmap('PBL201322','420501'));
loctionmapList.add(new Loctionmap('PBL201564','431001'));
loctionmapListourl[321]=new Loctionmap('PBL201564','431001','','0','','null','null','null','0','null','null','null');
nologonList[102]=new Loctionmap('PBL201323','420601','账户基本金属','0','1、产品定义。中国工商银行账户基本金属，是中国工商银行为个人客户提供的，采取只计份额、不提取实物基本金属的方式，以人民币或美元交易基本金属份额的投资交易产品。<br>2、开办准备。（1）客户办理账户基本金属交易应充分认识并完全理解可能遇到的各类风险，在通过风险能力评测和投资交易类产品适合度评估后方能办理账户基本金属开户及交易业务。建议您仔细阅读账户基本金属产品介绍、交易规则、交易协议及知识问答（详见网上银行右侧交易区下方“产品详情”），以更好地了解本产品。<br>（2）如您的资金账户不是多币种借记卡或结算账户，请您在办理前指定新的多币种借记卡或结算账户，或到网上银行“我的账户基本金属-交易账户管理-调整交易卡”栏目/营业网点柜面调整账户属性。<br> 3、交易时间。网上银行账户基本金属交易时间一般为周一9：00到24：00，周二至周五每日0：00到2：00与9：00到24：00，周六0：00到2：00。如遇节假日等特殊情况，请以我行网站公告为准。<br>4、界面指引。左侧实时行情区提供账户基本金属报价与走势图，该区域所有价格均为参考报价，不能凭此达成交易。右侧交易区提供了先买入后卖出、先卖出后买入两种交易类型，以及实时、挂单两种交易方式。如您希望按照当前交易报价实时买卖账户基本金属，请选择实时交易，我行将在您提交交易指令后显示当前可成交价格，该价格有效期为10秒钟，请您尽快确认；如您希望未来一段时间内以您指定的条件成交，请选择挂单交易，各种挂单种类与挂单有效期介绍请参阅产品介绍（各地区挂单种类可能不同，请以实际情况为准），挂单成功后，如您需撤销挂单，请到“我的账户基本金属-挂单管理”中办理。<br> 5、特别提示。<br>（1）我行账户基本金属分为期次产品与连续产品。期次产品按期次发行，每期产品到期后客户将不能继续交易。连续产品没有到期日，客户可持续交易。<br>（2）期次产品到期自动结算。在某期次产品到期后，客户若没有参与转期而仍持有该期产品，我行将按照该期产品到期结算价为客户进行结算，客户资金在该期产品结算日到账；期次产品的交易起始日、交易结束日和结算日等信息可在“我的账户基本金属-产品信息和结算价格”栏目查询。<br>（3）期次产品转期功能。客户持有的账户基本金属可通过转期功能转换为下一期产品（限同一币种、同一交易类型）。我行提供实时转期和到期转期两种转期类型。其中，对于实时转期，我行按照实时转期价格为客户办理转期（即平仓上期产品同时开仓下期产品）；对于到期转期，我行按照上期产品的到期转期结算价格和下期产品的当日转期结算价格于到期日次日为客户办理转期；无论选择哪种转期类型，转期前后客户的资产总值不变。具体转期功能设置及转期明细查询可在“我的账户基本金属-转期管理”栏目进行。<br>（4）连续产品份额调整。连续产品存续期间会根据参考的交易所基本金属合约期次调整情况同步调整客户持有的份额；份额调整前价格、份额调整后价格参考交易所对应期次合约的份额调整日结算价以及我行当日结售汇牌价。我行不收取份额调整费用，份额调整前后客户的资产总值不变；连续产品份额调整的有关信息（包括调整日、调整价格、份额调整记录等），可在“我的账户基本金属-查询份额调整信息”栏目查询。<br>（5）总持仓限额。因国家监管政策等原因，我行对所有客户人民币账户基本金属产品总持仓净额设定上、下限。当所有客户持仓触及上、下限时，您将不能进行新开仓操作，平仓操作不受影响。<br>（6）价差调整说明。根据市场情况，我行可能会调整账户基本金属的银行买入价/卖出价和交易价差，请您在达成交易前注意。<br>6、如有其它疑问，请致电95588咨询。');
loctionmapList.add(new Loctionmap('PBL201323','420601'));
loctionmapList.add(new Loctionmap('PBL201565','431002'));
loctionmapListourl[322]=new Loctionmap('PBL201565','431002','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201566','430701'));
loctionmapListourl[323]=new Loctionmap('PBL201566','430701','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20201701','170302'));
loctionmapList.add(new Loctionmap('PBL201567','430702'));
loctionmapListourl[324]=new Loctionmap('PBL201567','430702','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20201702','170303'));
loctionmapList.add(new Loctionmap('PBL201568','430703'));
loctionmapListourl[325]=new Loctionmap('PBL201568','430703','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201569','430704'));
loctionmapListourl[326]=new Loctionmap('PBL201569','430704','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20201703','170305'));
loctionmapListourl[327]=new Loctionmap('PBL20201703','170305','','0','','/icbc/newperbank/stock/Bstock/bstock_query_lsmx_index.jsp','null','null','0','null','protserno','stockcode');
loctionmapList.add(new Loctionmap('PBL20201704','170301'));
loctionmapListourl[328]=new Loctionmap('PBL20201704','170301','','0','','/icbc/newperbank/stock/Bstock/bstock_list_index.jsp','null','null','0','null','null','null');
loctionmapListourl[329]=new Loctionmap('PBL20201705','null','','0','','/icbc/newperbank/stock/3fcg_queryMoney_index.jsp','null','null','0','null','transData','null');
loctionmapListourl[330]=new Loctionmap('PBL20081201','null','','0','','/icbc/newperbank/account/account_currtranscurr_index.jsp','null','null','0','null','parentServiceId','null');
loctionmapList.add(new Loctionmap('PBL20071401','020213'));
loctionmapListourl[331]=new Loctionmap('PBL20071401','020213','','0','','/icbc/newperbank/account/account_query_Ebill_sub.jsp','null','null','0','null','null','null');
loctionmapListourl[332]=new Loctionmap('PBL20081202','null','','0','','/icbc/newperbank/account/account_quick_currtranscurr_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20071402','021301'));
loctionmapListourl[333]=new Loctionmap('PBL20071402','021301','','0','','/icbc/newperbank/e_bill/ebill_verify_query.jsp','null','null','0','null','null','null');
nologonList[103]=new Loctionmap('PBL20109001','null','个人住房贷款','1','');
loctionmapList.add(new Loctionmap('PBL201570','430801'));
loctionmapListourl[334]=new Loctionmap('PBL201570','430801','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201571','4303'));
loctionmapListourl[335]=new Loctionmap('PBL201571','4303','新产品意向征集','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201572','430301'));
loctionmapListourl[336]=new Loctionmap('PBL201572','430301','','0','','null','null','null','0','null','null','null');
loctionmapListourl[337]=new Loctionmap('PBL201330','null','实物贵金属','0','','null','null','null','0','null','null','null');
nologonList[104]=new Loctionmap('PBL201331','160601','积存金','1','');
loctionmapList.add(new Loctionmap('PBL201331','160601'));
loctionmapList.add(new Loctionmap('PBL201573','430302'));
loctionmapListourl[338]=new Loctionmap('PBL201573','430302','','0','','null','null','null','0','null','null','null');
loctionmapListourl[339]=new Loctionmap('PBL201574','null','','0','','null','null','null','0','null','productId4Finance','null');
nologonList[105]=new Loctionmap('PBL201332','160201','代理贵金属现货','0','1、委托交易请在金交所系统服务时间办理，交易时间详见：《上海黄金交易所交易时间明细表》，如有变动，以交易所开市时间为准。委托仅在当前交易日有效。<br />2、请选择交易品种，输入委托价格及委托数量，并点击“提交”。<br />3、委托价格可输入两位小数，委托数量必须大于最低交易数量，并且要求为整数“手”。<br />4、点击“重置”后，可重新选择并输入买金委托。<br />5、买金委托交易前，请确认您的实物黄金交易资金可用余额是否足够，否则委托可能不成功。<br />6、根据上海黄金交易所的安排，目前可以办理提金的地区包括北京、上海、辽宁、江苏、浙江、福建、山东、河南、湖北、湖南、广东、四川、云南、陕西、新疆、深圳，如发生变更请按提金申请时实际可选择地区为准。<br />7、您可以点击价量区的买一至买五、卖一至卖五，按照对应价格进行快速下单。<br />8、客户在进行提金操作时，我行会代理上海黄金交易所收取个人黄金现货仓储费、运保费和溢短费等费用，具体费率详见上海黄金交易所网站《上海黄金交易所现货交易交割细则》。<a target=\"_blank\" href=\"http://www.icbc.com.cn/pv_obj_cache/pv_obj_id_9F348B1A2785E9AC37EB7B557BBC1A9CE3DC0000/filename/fujianjiaoyishijianmingxibiao.pdf\">《上海黄金交易所交易时间明细表》链接</a><br />9、我行代理竞价业务协议内容将于2018年1月更新，具体参见贵金属“<a target="_blank" href="http://www.icbc.com.cn/ICBC/%E7%BD%91%E4%B8%8A%E9%BB%84%E9%87%91/%E4%BA%A4%E6%98%93%E6%8F%90%E7%A4%BA/default.htm">交易提示</a>”栏目相关公告。');
loctionmapList.add(new Loctionmap('PBL201332','160201'));
loctionmapList.add(new Loctionmap('PBL201575','431301'));
loctionmapListourl[340]=new Loctionmap('PBL201575','431301','','0','','null','null','null','0','null','null','null');
nologonList[106]=new Loctionmap('PBL201333','160301','代理贵金属递延','0','1、通过实时行情可以查询各黄金递延品种的实时曲线图、日K线图、周K线图和月K线图。<br />2、委托交易请在金交所系统服务时间办理，交易时间详见：《上海黄金交易所交易时间明细表》，如有变动，以交易所开市时间为准。委托仅在当前交易日有效。<br />3、委托价格可输入两位小数，委托数量必须大于最低交易数量，并且要求为整数“手”。<br />4、委托交易前，请确认您的交易资金可用余额以及合约头寸是否足够，否则委托可能不成功。<br />5、您可以点击价量区的买一至买五、卖一至卖五，按照对应价格进行快速下单。<br />6、最大可交易手数受交易所规则和我行风险管理要求限制。<a target="_blank" href="http://www.icbc.com.cn/pv_obj_cache/pv_obj_id_9F348B1A2785E9AC37EB7B557BBC1A9CE3DC0000/filename/fujianjiaoyishijianmingxibiao.pdf">《上海黄金交易所交易时间明细表》链接</a><br />7、我行代理竞价业务协议内容将于2018年1月更新，具体参见贵金属“<a target="_blank" href="http://www.icbc.com.cn/ICBC/%E7%BD%91%E4%B8%8A%E9%BB%84%E9%87%91/%E4%BA%A4%E6%98%93%E6%8F%90%E7%A4%BA/default.htm">交易提示</a>”栏目相关公告。');
loctionmapList.add(new Loctionmap('PBL201333','160301'));
loctionmapList.add(new Loctionmap('PBL201576','431302'));
loctionmapListourl[341]=new Loctionmap('PBL201576','431302','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201334','160602'));
loctionmapListourl[342]=new Loctionmap('PBL201334','160602','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201577','4313'));
loctionmapListourl[343]=new Loctionmap('PBL201577','4313','投资账户','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapListourl[344]=new Loctionmap('PBL201335','null','','0','','null','null','null','0','null','prodcode','Goldtype');
nologonList[107]=new Loctionmap('PBL201578','null','专属基金','0','');
loctionmapListourl[345]=new Loctionmap('PBL201336','null','','0','','null','null','null','0','null','prodcode','Goldtype');
nologonList[108]=new Loctionmap('PBL201337','null','品牌贵金属购买','1','1、个人网上银行实物贵金属销售时间一般为周一至周日，每日09：00至22：30，特殊情况请以中国工商银行网站公告为准，或可咨询95588；<br/>2、通过输入产品名称、材质、价格范围、规格等查询条件，可缩小产品选择范围。更多贵金属产品展示及优惠活动，欢迎登陆http://mall.icbc.com.cn工行旗舰店查看；<br/>3、图片展示仅供参考，具体产品规格及样式以提取时的实物为准；<br/>4、部分热销产品可能会出现库存不足的现象，我行会尽快补充库存，敬请谅解！欢迎您致电贵金属旗舰店了解产品情况：http://www.icbc.com.cn/ICBC/网上黄金/贵金属旗舰店/default.htm；<br/>5、成功支付前，所选择产品的库存可能会发生变化，当网点库存不足时，会导致购金失败；<br/>6、实际支付价格以支付时点的网上实时报价为准。<br/>7、成功支付前，所选择产品的库存可能会发生变化，当网点库存不足时，会导致购金失败；<br/>8、手机号码为接收提金密码的唯一渠道，请确保手机号码正确，并妥善保管提金密码。如提金密码丢失，可登录个人网银，通过“品牌贵金属在线购买＞订单明细管理”栏目，使用“重发提金短信”获得提金密码”。<br/>9、当选择保存订单方式购金时，所保存的订单有效期为24小时，超期订单将失效。<br/>10、完成付款后，请在7天内至所选提金网点领取实物，若超期未提，我们无法保证您随到随提，需要您提前致电网点进行预约。请在网点营业时间内至网点提金。<br/>11、为了您的提金安全，目前我行仅限购金本人自行提金操作，感谢您的配合。');
loctionmapListourl[346]=new Loctionmap('PBL201579','null','我的预留产品','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20092101','06010801'));
loctionmapListourl[347]=new Loctionmap('PBL20092101','06010801','','0','','/icbc/newperbank/remit_bidbond/remit_bidbond_pay_index.jsp','null','null','0','null','null','null');
loctionmapListourl[348]=new Loctionmap('PBL20082301','null','','0','','/icbc/newperbank/WURemit/WUSendIndex.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20092102','06010802'));
loctionmapListourl[349]=new Loctionmap('PBL20092102','06010802','','0','','/icbc/newperbank/remit_bidbond/remit_bidbond_query.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20092103','06010803'));
loctionmapListourl[350]=new Loctionmap('PBL20092103','06010803','','0','','/icbc/newperbank/remit_bidbond/remit_bidbond_refund_query.jsp','null','null','0','null','null','null');
loctionmapListourl[351]=new Loctionmap('PBL20082302','null','','0','','/icbc/newperbank/WURemit/WUReceiveIndex.jsp','null','null','0','null','parentServiceId','null');
loctionmapListourl[352]=new Loctionmap('PBL20082303','null','','0','','/icbc/newperbank/WURemit/WURemitSendAndRcvDetail.jsp','null','null','0','null','null','null');
loctionmapListourl[353]=new Loctionmap('PBL20150915','null','','0','','/icbc/newperbank/gold/ACgold_apply_account.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201581','4314'));
loctionmapListourl[354]=new Loctionmap('PBL201581','4314','境外账户','1','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201582','4315'));
loctionmapListourl[355]=new Loctionmap('PBL201582','4315','投资资讯','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
nologonList[109]=new Loctionmap('PBL201340','null','外汇','0','');
loctionmapListourl[356]=new Loctionmap('PBL201340','null','外汇','0','','null','null','null','0','null','null','null');
nologonList[110]=new Loctionmap('PBL201341','null','外汇买卖','1','1、个人网上银行外汇买卖交易时间一般为周一早07：00到周六早04：00，如遇节假日等特殊情况，请以中国工商银行网站公告为准，或可咨询95588。<br/>2、在左侧行情报价区，您看到的报价为参考报价，仅供您参考，不能凭此达成交易；如您需要达成交易，请联动到交易区获取可成交报价后完成交易。您可以根据自己的需要，在此设置常用货币对的报价。直接点击银行买入价或银行卖出价，可联动到页面右侧外汇交易区，办理外汇实时交易。<br/>3、在右侧交易区，提供了实时交易、获利挂单、止损挂单、双向挂单、追加挂单、循环挂单、一对多挂单及触发挂单等多种交易方式，交易起点一般不低于等值50美元。各挂单介绍见《中国工商银行外汇买卖产品介绍》。在提交交易指令后，请尽快完成确认。各地区挂单种类可能有所不同，以实际情况为准。<br/>4、挂单有效期包括24小时、48小时、72小时、96小时、120小时、当周有效和30天，其中当周有效的失效时间为当周六早4点，30天的有效期为720小时。<br/>5、挂单成功后，如您需撤销挂单，请到“管理挂单交易”或“挂单明细查询”中办理。<br/>6、循环挂单、一对多及触发挂单暂不支持当周有效和30天两种挂单有效期。<br/>7、根据《中国工商银行外汇买卖交易协议》，我行可能会调整买入/卖出价格与参考中间价间价差，请您在交易前注意确认。 ');
loctionmapList.add(new Loctionmap('PBL201583','4315'));
loctionmapListourl[357]=new Loctionmap('PBL201583','4315','私行境外资讯','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapListourl[358]=new Loctionmap('PBL201100','null','理财.债券','0','','null','null','null','0','null','null','null');
nologonList[111]=new Loctionmap('PBL201342','null','结售汇','1','1、只有证件类型为身份证的客户可在网上办理该业务。<br/>2、请注意选择钞、汇标志，选择汇户将在您进行结汇时享受优于钞户的结算汇率，在汇款时，将免去钞汇账户转换手续费用，避免您自行操作后，因没有选择钞、汇，可能产生后续的纠纷。<br/>3、网上银行年度售汇限额为等值5万美元的外币。<br/>4、在您选择购汇币种前，建议您电话咨询当地工行营业网点是否可以提供该货币的兑换服务，避免您购汇后不能及时兑换。<br/>5、由于汇率实时变动，以最多可购买金额进行交易时可能无法成功。<br/>6、如果账户属性为单币种账户，请先调整为多币种账户后再进行该交易。如需调整请点击调整账户属性。');
nologonList[112]=new Loctionmap('PBL201343','null','账户外汇','1','1、产品定义。中国工商银行账户外汇，是中国工商银行为个人客户提供的，采取只计份额、不支取实际外汇的方式，以人民币买卖多种外汇的投资交易产品。<br>2、开办准备。客户办理账户外汇交易应充分认识并完全理解可能遇到的各类风险，在通过风险能力评测和投资交易类产品适合度评估后方能办理账户外汇开户及交易业务。建议您仔细阅读账户外汇产品介绍、交易规则、交易协议及知识问答（详见网上银行右侧交易区下方“产品详情”），以更好地了解本产品。<br>3、交易时间。网上银行账户外汇交易时间一般为周一早07：00到周六早04：00。如遇节假日等特殊情况，请以中国工商银行网站公告为准。<br> 4、界面指引。左侧实时行情区提供账户外汇报价与走势图，该区域所有价格均为参考报价，不能凭此达成交易。右侧交易区提供了先买入后卖出、先卖出后买入两种交易类型，以及实时、挂单两种交易方式。如您希望按照当前交易报价实时买卖账户外汇，请选择实时交易，我行将在您提交交易指令后显示当前可成交价格，该价格有效期为10秒钟，请您尽快确认；如您希望未来一段时间内以您指定的条件成交，请选择挂单交易，各种挂单种类与挂单有效期介绍请参阅产品介绍（各地区挂单种类可能不同，请以实际情况为准），挂单成功后，如您需撤销挂单，请到“我的账户外汇-挂单管理”中办理。<br>5、特别提示。<br>（1）总持仓限额。因国家监管政策等原因，我行对所有客户账户外汇产品总持仓净额设定上、下限。当所有客户持仓触及上、下限时，您将不能进行新开仓操作，平仓操作不受影响。<br>（2）价差调整说明。根据市场情况，我行可能会调整账户外汇的银行买入价/卖出价和交易价差，请您在达成交易前注意。<br>（3）质押融资服务。您可以通过网银账户外汇质押或网上贷款栏目，将持有的账户外汇办理个人质押贷款业务。<br>6、如有其它疑问，请致电95588咨询。');
loctionmapList.add(new Loctionmap('PBL20134201','1802'));
loctionmapListourl[359]=new Loctionmap('PBL20134201','1802','','0','','/icbc/newperbank/account/account_smallPurchaseFE_prior.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20134202','1803'));
loctionmapListourl[360]=new Loctionmap('PBL20134202','1803','','0','','/icbc/newperbank/account/account_smallSellFE_prior.jsp','null','null','0','null','null','null');
nologonList[113]=new Loctionmap('PBL201344','null','外汇','0','');
nologonList[114]=new Loctionmap('PBL201345','4501','账户外汇指数','1','1、工银人民币账户外汇指数交易时间一般为周一早07：00到周六早04：00，如遇节假日等特殊情况，请以中国工商银行网站公告为准，或可咨询95588。<br/>2、在左侧实时行情区，您看到的报价为参考报价，仅供您参考，不能凭此达成交易；如您需要达成交易，请联动到交易区获取可成交报价后完成交易。直接点击银行买入价或银行卖出价，可联动到右侧交易区的实时交易，办理实时工银人民币账户外汇指数买卖交易。<br/>3、在右侧交易区，提供了实时交易、获利挂单、止损挂单、双向挂单等多种交易方式。各种挂单介绍见《中国工商银行账户外汇指数产品介绍》。在提交交易指令后，请尽快完成确认。各地区挂单种类可能不同，请以实际情况为准。<br/>4、挂单有效期包括24小时、48小时、72小时、96小时、120小时等。<br/>5、挂单成功后，如您需撤销挂单，请到“管理挂单”中办理。<br/>6、根据《中国工商银行指数产品交易协议》和《中国工商银行账户外汇指数产品介绍》，我行可能会调整买入/卖出价格与中间价间价差，请您在交易前注意确认。');
loctionmapList.add(new Loctionmap('PBL201345','4501'));
loctionmapListourl[361]=new Loctionmap('PBL20134203','null','','0','','/icbc/newperbank/account/account_smallPurchaseFEQuery_submit.jsp','null','null','0','null','null','null');
loctionmapListourl[362]=new Loctionmap('PBL201350','null','品种转换','0','','null','null','null','0','null','null','null');
nologonList[115]=new Loctionmap('PBL201351','null','账户贵金属转换','1','');
nologonList[116]=new Loctionmap('PBL201110','null','理财','0','');
loctionmapListourl[363]=new Loctionmap('PBL201110','null','理财','0','','null','null','null','0','null','null','null');
nologonList[117]=new Loctionmap('PBL201111','null','推荐产品','0','');
loctionmapListourl[364]=new Loctionmap('PBL201111','null','推荐产品','0','','/icbc/newperbank/perbank3/includes/menu_all.jsp','/icbc/newperbank/perbank3/includes/menu_all_out.jsp','null','0','null','null','null');
nologonList[118]=new Loctionmap('PBL201112','null','现金管理','0','');
loctionmapListourl[365]=new Loctionmap('PBL201112','null','现金管理','0','','/icbc/newperbank/perbank3/includes/menu_all.jsp','/icbc/newperbank/perbank3/includes/menu_all_out.jsp','null','0','null','null','null');
nologonList[119]=new Loctionmap('PBL201113','null','精品主题','0','');
loctionmapListourl[366]=new Loctionmap('PBL201113','null','精品主题','0','','/icbc/newperbank/perbank3/includes/menu_all.jsp','/icbc/newperbank/perbank3/includes/menu_all_out.jsp','null','0','null','null','null');
nologonList[120]=new Loctionmap('PBL201114','null','外币类','0','');
loctionmapListourl[367]=new Loctionmap('PBL201114','null','外币类','0','','/icbc/newperbank/perbank3/includes/menu_all.jsp','/icbc/newperbank/perbank3/includes/menu_all_out.jsp','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20200401','171401'));
nologonList[121]=new Loctionmap('PBL201115','null','新型理财','1','');
loctionmapList.add(new Loctionmap('PBL20200402','171402'));
loctionmapListourl[368]=new Loctionmap('PBL20200402','171402','','0','','null','null','null','0','null','null','null');
nologonList[122]=new Loctionmap('PBL201116','null','理财定投','0','');
loctionmapListourl[369]=new Loctionmap('PBL201116','null','理财定投','0','','/icbc/newperbank/finance/finance_curpropub_mid.jsp','null','null','0','null','null','null');
nologonList[123]=new Loctionmap('PBL201117','null','优选净值','0','');
loctionmapListourl[370]=new Loctionmap('PBL201117','null','优选净值','0','','/icbc/newperbank/perbank3/includes/menu_all.jsp','/icbc/newperbank/perbank3/includes/menu_all_out.jsp','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201118','120105'));
loctionmapList.add(new Loctionmap('PBL201119','PB201119'));
loctionmapListourl[371]=new Loctionmap('PBL201120','null','债券','0','','null','null','null','0','null','null','null');
nologonList[124]=new Loctionmap('PBL201121','null','柜台记账式债券','1','');
nologonList[125]=new Loctionmap('PBL20122001','null','','0','');
loctionmapListourl[372]=new Loctionmap('PBL20122001','null','','0','','null','/icbc/newperbank/perbank3/assurance/frame_assurance_index_out.jsp','null','0','null','protype','null');
nologonList[126]=new Loctionmap('PBL201122','null','储蓄国债','0','储蓄国债');
loctionmapListourl[373]=new Loctionmap('PBL20112201','null','','0','','/icbc/newperbank/perbank3/nationaldebt/Mynationaldebt.jsp','null','null','0','null','null','null');
nologonList[127]=new Loctionmap('PBL201123','null','储蓄国债','1','');
loctionmapList.add(new Loctionmap('PBL20112202','150801'));
loctionmapListourl[374]=new Loctionmap('PBL20112202','150801','','0','','null','/icbc/newperbank/perbank3/nationaldebt/nationaldebt_CertBond_infoquery_product_nosession.jsp','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20201501','170103'));
loctionmapListourl[375]=new Loctionmap('PBL20112203','null','','0','','/icbc/newperbank/nationaldebt/save_nationaldebt_accquery_balance.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20201502','170104'));
loctionmapListourl[376]=new Loctionmap('PBL20112204','null','','0','','/icbc/newperbank/nationaldebt/save_nationaldebt_accquery_current_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20201503','170105'));
loctionmapListourl[377]=new Loctionmap('PBL20112205','null','','0','','/icbc/newperbank/nationaldebt/nationaldebt_subscribe_status_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20201504','170106'));
loctionmapListourl[378]=new Loctionmap('PBL20201504','170106','','0','','/icbc/newperbank/stock/3fcg/3fcg_tradequery_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20201505','170102'));
loctionmapListourl[379]=new Loctionmap('PBL20201505','170102','','0','','/icbc/newperbank/stock/3fcg/3fcg_list_index.jsp','null','null','0','null','null','null');
loctionmapListourl[380]=new Loctionmap('PBL20081001','null','','0','','/icbc/newperbank/remit/remittance_DomesticTransfer_Payee_Block.jsp','null','null','0','境内汇款-收款人信息快','null','null');
loctionmapListourl[381]=new Loctionmap('PBL20201506','null','','0','','/icbc/newperbank/stock/3fcg_queryMoney_index.jsp','null','null','0','null','transData','null');
loctionmapListourl[382]=new Loctionmap('PBL20081002','null','','0','','null','null','null','0','境内汇款-快照信息块','null','null');
loctionmapListourl[383]=new Loctionmap('PBL20201507','null','','0','','/icbc/newperbank/stock/3fcg/3fcg_change_accno_index.jsp','null','null','0','null','transData','null');
loctionmapList.add(new Loctionmap('PBL20081003','020402'));
loctionmapListourl[384]=new Loctionmap('PBL20081003','020402','','0','','/icbc/newperbank/remit/remittance_DomesticTransfer_submit.jsp','null','null','0','境内汇款-汇款提交页面','payeeMsg','NormalOrBooking');
loctionmapList.add(new Loctionmap('PBL20081004','060301'));
loctionmapListourl[385]=new Loctionmap('PBL20081004','060301','','0','','null','null','null','0','境内汇款-我的收款人','injectType','injectData');
loctionmapList.add(new Loctionmap('PBL20081005','060298'));
loctionmapListourl[386]=new Loctionmap('PBL20081005','060298','','0','','null','null','null','0','境内汇款-明细查询','queryMode','injectType');
loctionmapListourl[387]=new Loctionmap('PBL20081006','null','','0','','/icbc/newperbank/remit/remitexc_verify_query_sub.jsp','null','null','0','境内汇款-明细查询-电话核实交易查询','null','null');
loctionmapList.add(new Loctionmap('PBL20081007','020302'));
loctionmapListourl[388]=new Loctionmap('PBL20081007','020302','','0','','/icbc/newperbank/account/account_currtranscurr_index.jsp','null','null','0','境内汇款-转本人','null','null');
loctionmapList.add(new Loctionmap('PBL20081008','081008'));
loctionmapListourl[389]=new Loctionmap('PBL20081008','081008','','0','','/icbc/newperbank/precontract/precontract_myprecontract_submit.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20081009','081008'));
loctionmapListourl[390]=new Loctionmap('PBL20081009','081008','','0','','/icbc/newperbank/precontract/precontract_myprecontract_submit.jsp','null','null','0','null','null','null');
nologonList[128]=new Loctionmap('PBL201370','null','账户商品','0','');
nologonList[129]=new Loctionmap('PBL201131','null','','0','');
loctionmapListourl[391]=new Loctionmap('PBL201134','null','','0','','/icbc/newperbank/finance/finance_new_acct_query_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201135','120106'));
loctionmapListourl[392]=new Loctionmap('PBL201135','120106','','0','','null','null','null','null','null','null','null');
loctionmapListourl[393]=new Loctionmap('PBL201136','null','','0','','/icbc/newperbank/perbank3/finance/agency_goto_index.jsp','null','null','null','null','null','null');
loctionmapListourl[394]=new Loctionmap('PBL201137','null','','0','','/icbc/newperbank/perbank3/finance/agency_goto_index.jsp','null','null','null','null','null','null');
nologonList[130]=new Loctionmap('PBL201139','null','理财','0','');
loctionmapList.add(new Loctionmap('PBL20082101','020602'));
loctionmapListourl[395]=new Loctionmap('PBL20082101','020602','','0','','/icbc/newperbank/remit/remit_foreignsample_query.jsp','null','null','0','null','fovaAcct','parentServiceId');
loctionmapList.add(new Loctionmap('PBL20082102','060297'));
loctionmapListourl[396]=new Loctionmap('PBL20082102','060297','','0','','/icbc/newperbank/remit/remit_toforeignicbc_result.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20181201','3703'));
loctionmapListourl[397]=new Loctionmap('PBL20082103','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[398]=new Loctionmap('PBL201140','null','理财服务','0','','null','null','null','0','null','null','null');
loctionmapListourl[399]=new Loctionmap('PBL201141','null','申请理财服务','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201142','120202'));
loctionmapList.add(new Loctionmap('PBL20158201','431501'));
loctionmapListourl[400]=new Loctionmap('PBL20158201','431501','','1','','null','null','null','0','null','null','null');
loctionmapListourl[401]=new Loctionmap('PBL201143','null','查询执行明细','1','','/icbc/newperbank/finance/finance_agreement_resultquery.jsp','null','null','0','null','null','null');
loctionmapListourl[402]=new Loctionmap('PBL201144','null','利添利','0','','/icbc/newperbank/finance/finance_sign_negotiateFundtransferAgreement_intro.jsp','null','null','null','null','null','null');
loctionmapList.add(new Loctionmap('PBL750001','320301'));
loctionmapListourl[403]=new Loctionmap('PBL750001','320301','','0','','/icbc/newperbank/service/service_integral_query_mid.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL750002','320305'));
loctionmapListourl[404]=new Loctionmap('PBL750002','320305','','0','','/icbc/newperbank/service/service_integral_history_sub.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL750003','320306'));
loctionmapListourl[405]=new Loctionmap('PBL750003','320306','','0','','/icbc/newperbank/card/card_integral_query_unitePoint_select.jsp','null','null','0','null','null','null');
loctionmapListourl[406]=new Loctionmap('PBL750004','null','','0','','null','null','null','0','null','null','null');
nologonList[131]=new Loctionmap('PBL750005','null','','0','');
loctionmapListourl[407]=new Loctionmap('PBL750005','null','','0','','/icbc/Emall/main/forward.jsp','/icbc/Emall/main/forward.jsp','1','0','null','turnUrl','null');
nologonList[132]=new Loctionmap('PBL750006','null','','0','');
loctionmapListourl[408]=new Loctionmap('PBL750006','null','','0','','/icbc/Emall/main/forward.jsp','/icbc/Emall/main/forward.jsp','1','0','null','turnUrl','null');
nologonList[133]=new Loctionmap('PBL750007','null','融e购','0','');
loctionmapListourl[409]=new Loctionmap('PBL750007','null','融e购','0','','/icbc/Emall/main/forward.jsp','/icbc/Emall/main/forward.jsp','1','0','null','turnUrl','data');
loctionmapListourl[410]=new Loctionmap('PBL20083202','null','','0','','/icbc/newperbank/binding/bindingEmail_resend_submit.jsp','null','null','0','null','null','null');
loctionmapListourl[411]=new Loctionmap('PBL202000','null','保险.养老金.社保.公积金','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL202001','1713'));
loctionmapListourl[412]=new Loctionmap('PBL202001','1713','银衍转账','0','','/icbc/newperbank/perbank3/stock/derivative_index.jsp','null','null','0','null','null','null');
nologonList[134]=new Loctionmap('PBL20101101','3601','','0','1、通知存款按照确定通知时间的不同，分为1天通知存款和7天通知存款两种类型。<br/>2、人民币通知存款的最低存款金额为5万元（含），外币通知存款的最低存款金额各地区略有不同，约为等值人民币5万元（含）。<br/>3、通知存款一次存入，可一次或多次支取，部分提取通知存款时，每次提取的金额应大于通知存款的最低起存金额。<br/>4、通知存款按照支取日银行挂牌公告的相应利率和实际存期计息，利随本清。<br/>5、如果您未按照存款时确定的通知时间支取通知存款，通知存款将按照活期存款利率计算利息。');
loctionmapList.add(new Loctionmap('PBL20101101','3601'));
loctionmapListourl[413]=new Loctionmap('PBL20101101','3601','','0','','/icbc/newperbank/account/account_tzck_index.jsp','/icbc/newperbank/account/account_tzck_index_out.jsp','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL202002','1705'));
loctionmapListourl[414]=new Loctionmap('PBL202002','1705','银证期三通','0','','/icbc/newperbank/perbank3/stock/BSF_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL202003','1712'));
loctionmapListourl[415]=new Loctionmap('PBL202003','1712','网下新股申购转账','0','','/icbc/newperbank/perbank3/stock/offlineIPO_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20200201','170501'));
loctionmapListourl[416]=new Loctionmap('PBL20200201','170501','','0','','/icbc/newperbank/stock/BSFLinks/BSF_futures2stock_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20101102','3602'));
loctionmapList.add(new Loctionmap('PBL202004','1714'));
loctionmapList.add(new Loctionmap('PBL20200202','170502'));
loctionmapListourl[417]=new Loctionmap('PBL20200202','170502','','0','','/icbc/newperbank/stock/BSFLinks/BSF_stock2futures_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20101103','3601'));
loctionmapListourl[418]=new Loctionmap('PBL20101103','3601','','0','','/icbc/newperbank/account/account_tzck_frame.jsp','null','null','0','null','IN_TERM1','null');
loctionmapListourl[419]=new Loctionmap('PBL202005','null','银证转账预约设置','0','','/icbc/newperbank/perbank3/stock/preOrder_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20101104','3603'));
loctionmapListourl[420]=new Loctionmap('PBL20060101','null','','0','','null','null','null','0','null','prodcode','tradeflag');
loctionmapList.add(new Loctionmap('PBL20074501','410501'));
loctionmapListourl[421]=new Loctionmap('PBL20074501','410501','注册e支付','0','','/icbc/newperbank/Epay/open/index.jsp','null','null','0','null','INFLAG','CNO');
loctionmapList.add(new Loctionmap('PBL20074502','410502'));
loctionmapListourl[422]=new Loctionmap('PBL20074502','410502','我的e支付','0','','/icbc/newperbank/Epay/myEpay/index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20074503','410503'));
loctionmapListourl[423]=new Loctionmap('PBL20074503','410503','查询交易明细','0','','/icbc/newperbank/Epay/detail/Epay_detail.jsp','null','null','0','null','null','null');
nologonList[135]=new Loctionmap('PBL20074504','410504','查询操作记录','0','');
loctionmapList.add(new Loctionmap('PBL20074504','410504'));
loctionmapListourl[424]=new Loctionmap('PBL20074504','410504','查询操作记录','0','','/icbc/newperbank/Epay/detail/Epay_operateDetail.jsp','/icbc/newperbank/perbank3/Epay/Epay_outswitch.jsp','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20074505','2803'));
loctionmapListourl[425]=new Loctionmap('PBL20074506','null','','0','','/icbc/newperbank/Epay/Epay_menu_safe_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL2007461','3004'));
loctionmapListourl[426]=new Loctionmap('PBL20134020','null','','0','','/icbc/newperbank/perbank3/financialproducts/finance_foreign.jsp','null','null','0','null','null','null');
loctionmapListourl[427]=new Loctionmap('PBL202010','null','银证','0','','null','null','null','0','null','null','null');
loctionmapListourl[428]=new Loctionmap('PBL202011','null','开户预约','0','','/icbc/newperbank/perbank3/stock/preOpen_index.jsp','null','null','0','null','null','null');
loctionmapListourl[429]=new Loctionmap('PBL202012','null','快捷开户','1','','/icbc/newperbank/stock/bankstockCar/bankstockcard_quickopen_index.jsp','null','null','0','null','null','null');
loctionmapListourl[430]=new Loctionmap('PBL202013','null','自助注册','0','','/icbc/newperbank/perbank3/stock/selOpen_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL202014','170102'));
loctionmapListourl[431]=new Loctionmap('PBL202014','170102','我的第三方存管','0','','/icbc/newperbank/perbank3/stock/goto_index.jsp','null','null','0','null','tradeflag','null');
loctionmapListourl[432]=new Loctionmap('PBL20201301','null','','0','','/icbc/newperbank/stock/3fcg/3FCGselOpenAccount_index.jsp','null','null','0','null','null','null');
loctionmapListourl[433]=new Loctionmap('PBL20201302','null','','0','','/icbc/newperbank/stock/3fcg/3FCGselOpenAccount_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL202015','1701'));
loctionmapList.add(new Loctionmap('PBL202016','1704'));
loctionmapList.add(new Loctionmap('PBL202017','1703'));
loctionmapList.add(new Loctionmap('PBL202018','1710'));
loctionmapListourl[434]=new Loctionmap('PBL202018','1710','B股证券业务','0','','/icbc/newperbank/perbank3/stock/fakeexchange_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL202019','1711'));
loctionmapListourl[435]=new Loctionmap('PBL202019','1711','B股证券转账（深圳、上海）','0','','/icbc/newperbank/perbank3/stock/stock_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL2007471','3003'));
loctionmapListourl[436]=new Loctionmap('PBL2007471','3003','','0','','null','null','null','0','null','null','null');
loctionmapListourl[437]=new Loctionmap('PBL202020','null','期货','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL202021','190207'));
loctionmapListourl[438]=new Loctionmap('PBL202021','190207','集中式银期注册','1','','/icbc/newperbank/stock/cenFuture_selopen_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL202022','1902'));
nologonList[136]=new Loctionmap('PBL20113101','120103','','0','');
loctionmapList.add(new Loctionmap('PBL20113101','120103'));
loctionmapListourl[439]=new Loctionmap('PBL20113101','120103','','0','','/icbc/newperbank/perbank3/finance/finance_sub_index_in.jsp','/icbc/newperbank/perbank3/finance/finance_sub_index_out.jsp','null','null','null','null','null');
loctionmapList.add(new Loctionmap('PBL202023','1903'));
nologonList[137]=new Loctionmap('PBL20113102','null','','0','');
loctionmapListourl[440]=new Loctionmap('PBL20103301','null','','0','','/icbc/newperbank/account/account_xjy_index.jsp','null','null','0','null','null','null');
loctionmapListourl[441]=new Loctionmap('PBL20103302','null','','0','','/icbc/newperbank/account/account_myXJYList.jsp','null','null','0','null','null','null');
loctionmapListourl[442]=new Loctionmap('PBL20076701','null','','0','','/icbc/newperbank/card/card_chip_query_sub.jsp','null','null','0','null','null','null');
loctionmapListourl[443]=new Loctionmap('PBL20076702','null','','0','','/icbc/newperbank/card/card_chip_define_sub.jsp','null','null','0','null','null','null');
loctionmapListourl[444]=new Loctionmap('PBL20076703','null','','0','','/icbc/newperbank/card/card_chip_save_link.jsp','null','null','0','null','null','null');
loctionmapListourl[445]=new Loctionmap('PBL20076704','null','','0','','/icbc/newperbank/card/card_chip_fetch_sub.jsp','null','null','0','null','null','null');
loctionmapListourl[446]=new Loctionmap('PBL20076705','null','','0','','/icbc/newperbank/card/card_chip_autosave_link.jsp','null','null','0','null','null','null');
loctionmapListourl[447]=new Loctionmap('PBL20076706','null','','0','','/icbc/newperbank/card/card_chip_manage_link.jsp','null','null','0','null','null','null');
loctionmapListourl[448]=new Loctionmap('PBL202030','null','银商银权','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL202033','3803'));
loctionmapListourl[449]=new Loctionmap('PBL202033','3803','查询出入金状态','1','','/icbc/newperbank/exchange/ExchangeTransStat_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL740001','2902'));
loctionmapListourl[450]=new Loctionmap('PBL740001','2902','','0','','/icbc/newperbank/guarantee/guarantee_query_submit.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL740002','2903'));
loctionmapListourl[451]=new Loctionmap('PBL740002','2903','','0','','/icbc/newperbank/guarantee/guarantee_myagr_submit.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL740003','2904'));
loctionmapListourl[452]=new Loctionmap('PBL740003','2904','','0','','/icbc/newperbank/guarantee/guarantee_hisagr_prior.jsp','null','null','0','null','null','null');
loctionmapListourl[453]=new Loctionmap('PBL202040','null','养老金·社保·公积金','0','','null','null','null','0','null','null','null');
loctionmapListourl[454]=new Loctionmap('PBL400001','null','','0','','/icbc/newperbank/perbank3/includes/emallTip.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20074301','020115'));
loctionmapListourl[455]=new Loctionmap('PBL20074301','020115','','0','','/icbc/newperbank/perbank3/account/IbpQueryAccount_frame.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20074302','020116'));
loctionmapList.add(new Loctionmap('PBL20074303','020118'));
loctionmapListourl[456]=new Loctionmap('PBL20201101','null','','0','','/icbc/newperbank/stock/bankstockCar/preOpenAccount_index.jsp','null','null','0','null','null','null');
loctionmapListourl[457]=new Loctionmap('PBL20201102','null','','0','','/icbc/newperbank/stock/bankstockCar/stockfast_query_openresult_index.jsp','null','null','0','null','null','null');
loctionmapListourl[458]=new Loctionmap('PBL20201103','null','','0','','/icbc/newperbank/stock/bankstockCar/preOpenAccount_index.jsp','null','null','0','null','null','null');
nologonList[138]=new Loctionmap('PBL20103101','031303','','0','');
loctionmapList.add(new Loctionmap('PBL20103101','031303'));
loctionmapListourl[459]=new Loctionmap('PBL20103101','031303','','0','','/icbc/newperbank/account/account_currtransfix_submit.jsp','/icbc/newperbank/account/account_currtransfix_submit_out.jsp','null','0','null','JJGFLAG','null');
loctionmapList.add(new Loctionmap('PBL20202201','190202'));
loctionmapListourl[460]=new Loctionmap('PBL20202201','190202','','0','','/icbc/newperbank/stock/cenFuture_regModify_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20103102','031304'));
loctionmapList.add(new Loctionmap('PBL20202202','190203'));
loctionmapListourl[461]=new Loctionmap('PBL20202202','190203','','0','','/icbc/newperbank/stock/futures_centralize_bank2futures_forward.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20103103','031303'));
loctionmapListourl[462]=new Loctionmap('PBL20103103','031303','','0','','/icbc/newperbank/account/account_fixfixlink_frame.jsp','null','null','0','null','JJGFLAG','null');
loctionmapList.add(new Loctionmap('PBL20202203','190204'));
loctionmapListourl[463]=new Loctionmap('PBL20202203','190204','','0','','/icbc/newperbank/stock/futures_centralize_futures2bank_forward.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20202204','190206'));
loctionmapListourl[464]=new Loctionmap('PBL20202204','190206','','0','','/icbc/newperbank/stock/cenFuture_queryHis_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20161201','240202'));
loctionmapListourl[465]=new Loctionmap('PBL20161201','240202','','0','','/icbc/newperbank/payment/payment_submit_schooling_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20161202','240203'));
loctionmapListourl[466]=new Loctionmap('PBL20161202','240203','','0','','/icbc/newperbank/payment/payment_query_schooling1.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20104201','080701'));
loctionmapListourl[467]=new Loctionmap('PBL20104202','null','','0','','/icbc/newperbank/loan/loan_fast_conductindex.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL730001','1001'));
loctionmapListourl[468]=new Loctionmap('PBL730001','1001','','0','','/icbc/newperbank/annuity/pension_prod_list_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL730002','1002'));
loctionmapListourl[469]=new Loctionmap('PBL730002','1002','','0','','/icbc/newperbank/annuity/annuity_querydetail_queryType_sel.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL730003','1004'));
loctionmapListourl[470]=new Loctionmap('PBL730003','1004','','0','','/icbc/newperbank/annuity/annuity_reportdownload_hid.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20104204','080708'));
loctionmapListourl[471]=new Loctionmap('PBL20104204','080708','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL730004','1003'));
loctionmapListourl[472]=new Loctionmap('PBL730004','1003','','0','','/icbc/newperbank/annuity/annuity_modifybasicinfo1.jsp','null','null','0','null','null','null');
loctionmapListourl[473]=new Loctionmap('PBL700601','null','','0','','/icbc/newperbank/housefund/housefund_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL730005','1005'));
loctionmapListourl[474]=new Loctionmap('PBL730005','1005','','0','','/icbc/newperbank/annuity/pension_qry_notice_index.jsp','null','null','0','null','null','null');
loctionmapListourl[475]=new Loctionmap('PBL700602','null','','0','','/icbc/newperbank/housefund/housefund_queryplan_index.jsp','null','null','0','null','null','null');
nologonList[139]=new Loctionmap('PBL10011501','321301','','0','');
loctionmapList.add(new Loctionmap('PBL10011501','321301'));
loctionmapListourl[476]=new Loctionmap('PBL200900','null','结算套餐','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20104221','080702'));
loctionmapListourl[477]=new Loctionmap('PBL20104221','080702','','0','','/icbc/newperbank/loan/loan_fast_conductindex.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20104222','080704'));
loctionmapListourl[478]=new Loctionmap('PBL20104222','080704','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20104223','080706'));
loctionmapListourl[479]=new Loctionmap('PBL20104223','080706','','0','','null','null','null','0','null','null','null');
loctionmapListourl[480]=new Loctionmap('PBL20075201','null','','0','','null','null','null','0','null','CardNum','myregmode');
loctionmapListourl[481]=new Loctionmap('PBL200910','null','收付款账单','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20104231','080703'));
loctionmapList.add(new Loctionmap('PBL20104232','080705'));
loctionmapListourl[482]=new Loctionmap('PBL20104232','080705','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20104233','080707'));
loctionmapListourl[483]=new Loctionmap('PBL20104233','080707','','0','','/icbc/newperbank/loan/loan_fast_changeaccount_index.jsp','null','null','0','null','null','null');
loctionmapListourl[484]=new Loctionmap('PBL200921','null','投标保证金','0','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapListourl[485]=new Loctionmap('PBL20203101','null','','1','','null','null','null','0','null','CZMarketID','CZMarketName');
loctionmapList.add(new Loctionmap('PBL20203102','3801'));
loctionmapListourl[486]=new Loctionmap('PBL20203102','3801','','0','','/icbc/newperbank/exchange/Product_List.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL720001','022101'));
loctionmapListourl[487]=new Loctionmap('PBL720001','022101','','0','','/icbc/newperbank/socialinsurance/socialinsurance_myinfo.jsp','null','null','0','null','null','null');
loctionmapListourl[488]=new Loctionmap('PBL20203103','null','','0','','/icbc/newperbank/exchange/Product_List.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL720002','022102'));
loctionmapListourl[489]=new Loctionmap('PBL720002','022102','','0','','/icbc/newperbank/socialinsurance/socialinsurance_prodlist_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL720003','022106'));
loctionmapListourl[490]=new Loctionmap('PBL720003','022106','','0','','/icbc/newperbank/socialinsurance/socialinsurance_myagreement_index.jsp','null','null','0','null','null','null');
nologonList[140]=new Loctionmap('PBL20162101','2101','','0','1、可预约号源时间，以医院预约挂号相关规定为准。<br/>2、预约号源是否可退号，以医院相关规定为准。');
loctionmapList.add(new Loctionmap('PBL20162101','2101'));
loctionmapListourl[491]=new Loctionmap('PBL20162101','2101','','0','','null','/icbc/newperbank/hospital/hospital_out_index.jsp','null','0','null','null','null');
nologonList[141]=new Loctionmap('PBL20077401','null','','0','');
loctionmapListourl[492]=new Loctionmap('PBL20077401','null','','0','','null','/icbc/newperbank/card/card_queryCard_cred_nosess.jsp','null','0','null','null','null');
nologonList[142]=new Loctionmap('PBL20162102','2102','','0','1、点击“预约挂号”，将转至预约挂号页面。<br/>2、点击“我的挂号”，将显示有效的未就诊号源及历史号源记录。<br/>3、点击“更多”，您可进行银医协议变更、银医协议解约、查询诊疗费用明细操作。<br/>4、是否可退号、是否可与协议医院解约需遵照医院方相关规定，由医院方确认。');
loctionmapList.add(new Loctionmap('PBL20162102','2102'));
loctionmapListourl[493]=new Loctionmap('PBL20162102','2102','','0','','/icbc/newperbank/hospital/hospital_mycontract_index.jsp','/icbc/newperbank/hospital/hospital_mycontractlist_out_index.jsp','null','0','null','null','null');
loctionmapListourl[494]=new Loctionmap('PBL20077402','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[495]=new Loctionmap('PBL100501','null','','0','','/icbc/newperbank/perbank3/includes/changeFrame_service.jsp','null','null','0','null','formAction','inputString');
loctionmapList.add(new Loctionmap('PBL20162103','2106'));
loctionmapListourl[496]=new Loctionmap('PBL20162103','2106','','0','','null','null','null','0','null','null','null');
nologonList[143]=new Loctionmap('PBL20162104','2103','','0','1、您最长可查询1年内的银医明细。<br/>2、暂无法查询结算方式为诊疗账户模式的银医交易明细。');
loctionmapList.add(new Loctionmap('PBL20162104','2103'));
loctionmapListourl[497]=new Loctionmap('PBL20162104','2103','','0','','/icbc/newperbank/hospital/hospital_tranhis_index.jsp','/icbc/newperbank/hospital/hospital_tranhis_index_unlogin.jsp','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20162105','2104'));
loctionmapListourl[498]=new Loctionmap('PBL20162105','2104','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20162106','2105'));
loctionmapListourl[499]=new Loctionmap('PBL20162106','2105','','0','','/icbc/newperbank/hospital/hospital_mycontract_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20162107','2107'));
loctionmapListourl[500]=new Loctionmap('PBL20162107','2107','','0','','/icbc/newperbank/hospital/hospital_tranhis_index.jsp','null','null','0','null','null','null');
nologonList[144]=new Loctionmap('PBL20030101','null','','1','');
loctionmapListourl[501]=new Loctionmap('PBL20030101','null','','1','','null','/icbc/newperbank/perbank3/fund/frame_fund_index_out.jsp','null','0','null','menuFlag','null');
loctionmapList.add(new Loctionmap('PBL20163201','321701'));
loctionmapListourl[502]=new Loctionmap('PBL20163201','321701','','0','','/icbc/newperbank/service/service_lotteryinfo_activities_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20163202','321702'));
loctionmapListourl[503]=new Loctionmap('PBL20163202','321702','','0','','/icbc/newperbank/service/service_lotteryinfo_myinfo_index.jsp','null','null','0','null','null','null');
loctionmapListourl[504]=new Loctionmap('PBL200700','null','银行卡.账户','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20031201','140202'));
loctionmapListourl[505]=new Loctionmap('PBL200710','null','账户服务','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL200711','020205'));
nologonList[145]=new Loctionmap('PBL201800','null','业务申请','0','');
loctionmapListourl[506]=new Loctionmap('PBL201800','null','业务申请','0','','/icbc/newperbank/perbank3/includes/busiapply_index.jsp','/icbc/newperbank/perbank3/includes/busiapply_index_nologin.jsp','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL200712','020203'));
loctionmapList.add(new Loctionmap('PBL201805','3222'));
loctionmapListourl[507]=new Loctionmap('PBL201805','3222','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL200716','410503'));
loctionmapListourl[508]=new Loctionmap('PBL201806','null','','1','','null','null','null','null','null','null','null');
loctionmapList.add(new Loctionmap('PBL20076101','250401'));
loctionmapListourl[509]=new Loctionmap('PBL20076101','250401','','0','','/icbc/newperbank/card/card_myRepay_index.jsp','null','null','0','null','cardType','currType');
loctionmapList.add(new Loctionmap('PBL20076102','250402'));
loctionmapListourl[510]=new Loctionmap('PBL20076102','250402','','0','','/icbc/newperbank/card/card_autoRepay_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20076103','250403'));
loctionmapListourl[511]=new Loctionmap('PBL20076103','250403','','0','','null','null','null','0','null','null','null');
loctionmapListourl[512]=new Loctionmap('PBL200720','null','借记卡服务','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201810','3101'));
loctionmapListourl[513]=new Loctionmap('PBL201810','3101','','0','','null','null','null','0','null','null','null');
nologonList[146]=new Loctionmap('PBL200721','null','借记卡申请','1','');
loctionmapList.add(new Loctionmap('PBL201811','3102'));
loctionmapListourl[514]=new Loctionmap('PBL201811','3102','','0','','/icbc/newperbank/service/safe_modifycustmessage_sub.jsp','null','null','0','null','null','null');
nologonList[147]=new Loctionmap('PBL200722','null','申请及进度','1','1、请申请人认真阅读《中国工商银行牡丹信用卡章程》、《牡丹信用卡领用合约》、《安全用卡须知》、《自动还款业务协议书》。<br/>2、如您申请副卡，领卡时须主卡人和副卡人同时持各自有效证件办领卡手续。<br/>3、请确保您所填写的联系方式的准确性，收到申请后我行将与您联系。<br/>');
loctionmapList.add(new Loctionmap('PBL201812','3703'));
loctionmapListourl[515]=new Loctionmap('PBL201812','3703','','0','','/icbc/newperbank/perbank3/eleacc/eleacc_beforechangephone_judge.jsp','null','null','0','null','null','null');
nologonList[148]=new Loctionmap('PBL200723','null','电子账户申请','1','');
loctionmapListourl[516]=new Loctionmap('PBL200723','null','电子账户申请','1','','null','null','3','1','https://epass.icbc.com.cn/regist/regist_index.jsp','null','null');
loctionmapList.add(new Loctionmap('PBL201813','3109'));
loctionmapListourl[517]=new Loctionmap('PBL201813','3109','','0','','/icbc/newperbank/service/signMyPayeeAgreementSub.jsp','null','null','0','null','null','null');
loctionmapListourl[518]=new Loctionmap('PBL200725','null','申请副卡','1','','/icbc/newperbank/card/card_applySubCard_index.jsp','null','null','0','null','null','null');
loctionmapListourl[519]=new Loctionmap('PBL201814','null','','0','','/icbc/newperbank/perbank3/featureset/feature_setting_BePriIn_frame.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201815','320201'));
loctionmapListourl[520]=new Loctionmap('PBL201815','320201','','0','','/icbc/newperbank/service/service_updatealias_sub.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201816','3209'));
loctionmapListourl[521]=new Loctionmap('PBL201816','3209','','0','','/icbc/newperbank/service/service_unreg_mid.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201817','3226'));
loctionmapList.add(new Loctionmap('PBL201818','3111'));
loctionmapListourl[522]=new Loctionmap('PBL201818','3111','','0','','/icbc/newperbank/service/service_logonoff_history_index.jsp','null','null','0','null','null','null');
loctionmapListourl[523]=new Loctionmap('PBL201819','null','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL710001','021402'));
loctionmapListourl[524]=new Loctionmap('PBL710001','021402','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL710002','021403'));
loctionmapListourl[525]=new Loctionmap('PBL710002','021403','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL710003','021404'));
loctionmapListourl[526]=new Loctionmap('PBL710003','021404','','0','','/icbc/newperbank/net_tax/tax_query_sub.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL2013321','160201'));
loctionmapList.add(new Loctionmap('PBL710004','021405'));
loctionmapListourl[527]=new Loctionmap('PBL710004','021405','','0','','/icbc/newperbank/net_tax/taxInfo.jsp','null','null','0','null','null','null');
loctionmapListourl[528]=new Loctionmap('PBL200730','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[529]=new Loctionmap('PBL201820','null','','0','','/icbc/newperbank/perbank3/featureset/feature_setting_cert_frame.jsp','null','null','0','null','cert_tempflag','null');
loctionmapListourl[530]=new Loctionmap('PBL100301','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[531]=new Loctionmap('PBL201821','null','','0','','/icbc/newperbank/perbank3/featureset/feature_setting_pwdInstrument_frame.jsp','null','null','0','null','null','null');
loctionmapListourl[532]=new Loctionmap('PBL201822','null','','0','','/icbc/newperbank/perbank3/featureset/feature_setting_dynamicCardAdmin_frame.jsp','null','null','0','null','cert_tempflag','null');
loctionmapList.add(new Loctionmap('PBL200733','020221'));
loctionmapListourl[533]=new Loctionmap('PBL200733','020221','工资明细','1','','/icbc/newperbank/account/account_query_salarydetail.jsp','null','null','null','1、您最长可查询一年内的工资明细。<br/>2、本项服务查询的工资明细仅限于您的工资发放部门发放用途为“工资”的账户明细。 ','null','null');
loctionmapList.add(new Loctionmap('PBL201823','3113'));
loctionmapListourl[534]=new Loctionmap('PBL201823','3113','','0','','null','null','null','0','null','null','null');
loctionmapListourl[535]=new Loctionmap('PBL201824','null','','0','','null','null','null','null','null','null','null');
loctionmapListourl[536]=new Loctionmap('PBL201825','null','','0','','/icbc/newperbank/Epay/ajust/Epay_menu_ajustLimit_index.jsp','null','null','0','null','null','null');
loctionmapListourl[537]=new Loctionmap('PBL201826','null','','0','','/icbc/newperbank/Epay/ajust/Epay_menu_modifyPhoneNo_index.jsp','null','null','0','null','null','null');
loctionmapListourl[538]=new Loctionmap('PBL201828','null','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL2013331','160301'));
loctionmapList.add(new Loctionmap('PBL20088101','088101'));
loctionmapListourl[539]=new Loctionmap('PBL20088101','088101','','0','','/icbc/newperbank/account/account_currtranscurr_index.jsp','null','null','0','null','null','null');
loctionmapListourl[540]=new Loctionmap('PBL200740','null','账户协议','0','','null','null','null','0','null','null','null');
loctionmapListourl[541]=new Loctionmap('PBL200741','null','托管账户','0','','/icbc/newperbank/account/account_list_managedacct_0.jsp','null','null','0','null','null','null');
loctionmapListourl[542]=new Loctionmap('PBL20088103','null','','0','','null','null','null','0','null','payerAcct','payeeMsg');
loctionmapList.add(new Loctionmap('PBL201830','3103'));
loctionmapListourl[543]=new Loctionmap('PBL201830','3103','','0','','/icbc/newperbank/service/service_tfec_sub.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201831','3114'));
loctionmapListourl[544]=new Loctionmap('PBL201831','3114','','0','','null','null','null','0','null','null','null');
nologonList[149]=new Loctionmap('PBL200501','200101','','0','');
loctionmapList.add(new Loctionmap('PBL200501','200101'));
nologonList[150]=new Loctionmap('PBL200502','null','','0','');
loctionmapListourl[545]=new Loctionmap('PBL200744','null','工行全球账户','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL200745','41'));
loctionmapListourl[546]=new Loctionmap('PBL200503','null','','1','','null','null','null','0','null','insurecorporno','insurekindno');
loctionmapList.add(new Loctionmap('PBL200746','3002'));
loctionmapList.add(new Loctionmap('PBL200504','200201'));
loctionmapListourl[547]=new Loctionmap('PBL200504','200201','','0','','/icbc/newperbank/assurance/assurance_myown_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL200747','3001'));
nologonList[151]=new Loctionmap('PBL200505','null','','0','');
loctionmapListourl[548]=new Loctionmap('PBL200505','null','','0','','null','/icbc/newperbank/perbank3/assurance/frame_assurance_list_nosess.jsp','null','0','null','injectFlag','setType');
loctionmapListourl[549]=new Loctionmap('PBL200748','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[550]=new Loctionmap('PBL200506','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[551]=new Loctionmap('PBL200749','null','','0','','null','null','null','0','null','isOrder','MsgItemNofld');
nologonList[152]=new Loctionmap('PBL200507','null','','0','');
loctionmapListourl[552]=new Loctionmap('PBL200507','null','','0','','null','/icbc/newperbank/perbank3/assurance/frame_assurance_list_nosess.jsp','null','null','null','injectFlag','setType');
nologonList[153]=new Loctionmap('PBL200508','null','','0','');
loctionmapListourl[553]=new Loctionmap('PBL200508','null','','0','','null','/icbc/newperbank/perbank3/assurance/frame_assurance_list_nosess.jsp','null','null','null','injectFlag','setType');
loctionmapListourl[554]=new Loctionmap('PBL200509','null','','1','','null','null','null','0','null','insurecorporno','insurekindno');
loctionmapListourl[555]=new Loctionmap('PBL200750','null','借记卡服务','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201840','320101'));
loctionmapListourl[556]=new Loctionmap('PBL200510','null','','1','','null','null','null','0','null','insurecorporno','insurekindno');
loctionmapListourl[557]=new Loctionmap('PBL201600','null','生活缴费.本地特色','0','','null','null','null','0','null','null','null');
nologonList[154]=new Loctionmap('PBL200511','200102','保险','0','');
loctionmapList.add(new Loctionmap('PBL200511','200102'));
loctionmapListourl[558]=new Loctionmap('PBL201843','null','','0','','/icbc/newperbank/fund/fund_group_risktest_index.jsp','null','null','0','null','cmbcode','null');
nologonList[155]=new Loctionmap('PBL201601','null','预约取号','1','');
loctionmapListourl[559]=new Loctionmap('PBL300701','null','新建归集','0','','/icbc/newperbank/account/account_guiji_tran.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201844','140308'));
loctionmapListourl[560]=new Loctionmap('PBL201844','140308','','0','','/icbc/newperbank/fund/fund_trade_risktest_index.jsp','null','null','0','null','null','null');
loctionmapListourl[561]=new Loctionmap('PBL201845','null','','0','','/icbc/newperbank/perbank3/featureset/feature_setting_contact_frame.jsp','null','null','0','null','contact_tempflag','null');
loctionmapListourl[562]=new Loctionmap('PBL201846','null','','0','','/icbc/newperbank/perbank3/featureset/feature_setting_custInfoModiDetail.jsp','null','null','0','null','null','null');
nologonList[156]=new Loctionmap('PBL201604','null','','1','');
loctionmapListourl[563]=new Loctionmap('PBL300703','null','查询明细','0','','/icbc/newperbank/account/account_guiji_qrylist_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20107102','080602'));
loctionmapListourl[564]=new Loctionmap('PBL20107102','080602','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20107103','080603'));
loctionmapListourl[565]=new Loctionmap('PBL20107103','080603','','0','','null','null','null','0','null','null','null');
loctionmapListourl[566]=new Loctionmap('PBL200760','null','信用卡','0','','null','null','null','0','null','null','null');
loctionmapListourl[567]=new Loctionmap('PBL201850','null','电子银行管理','0','','/icbc/newperbank/ebankreg/ebankreg_reg_query_submit.jsp','null','null','0','null','null','null');
nologonList[157]=new Loctionmap('PBL20131201','null','','0','1、个人网上银行账户贵金属指数交易时间一般为周一早07:00到周六早04:00。如遇节假日等特殊情况，请以中国工商银行网站公告为准，或可咨询95588。<br/>2、在左侧实时行情区，您看到的报价为参考报价，仅供您参考，不能凭此达成交易；如您需要达成交易，请联动到交易区获取可成交报价后完成交易。直接点击银行买入价或银行卖出价，可联动到右侧交易区的即时交易，办理即时账户贵金属指数买卖交易。<br/>3、在右侧交易区，提供了实时交易、获利挂单、止损挂单及双向挂单等多种交易方式。各种挂单介绍见《中国工商银行账户贵金属指数产品介绍》。在提交交易指令后，请尽快完成确认。各地区挂单种类可能不同，请以实际情况为准。<br/>4、挂单有效期包括24小时、48小时、72小时、96小时、120小时。<br/>5、挂单成功后，如您需撤销挂单，请到“我的账户贵金属指数-挂单管理”中办理。<br/>6、根据《中国工商银行指数产品交易协议》，我行可能会调整买入/卖出价格与中间价间价差，请您在交易前注意确认。<br/>7、如您的资金账户不是多币种借记卡或结算账户，在办理美元账户贵金属指数和人民币账户贵金属指数先卖出后买入交易前，请您指定新的多币种借记卡或结算账户，或到网上银行“我的账户贵金属指数-交易账户管理-调整交易卡”栏目/营业网点柜面调整账户属性。如有疑问，请致电咨询95588。');
loctionmapList.add(new Loctionmap('PBL201610','2401'));
loctionmapListourl[568]=new Loctionmap('PBL201610','2401','缴费','0','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL201611','2403'));
loctionmapListourl[569]=new Loctionmap('PBL201611','2403','委托代扣','0','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapListourl[570]=new Loctionmap('PBL200765','null','贵宾厅服务 ','1','','/icbc/newperbank/service/service_viprooms_using_req.jsp','null','null','0','null','null','null');
loctionmapListourl[571]=new Loctionmap('PBL20111601','null','','0','','/icbc/newperbank/finance/finance_curfixedpur_index.jsp','null','null','0','null','RMBFinanceId','null');
loctionmapList.add(new Loctionmap('PBL201612','2402'));
loctionmapListourl[572]=new Loctionmap('PBL20111602','null','','0','','/icbc/newperbank/finance/finance_curpropub_mid.jsp','null','null','0','null','null','null');
loctionmapListourl[573]=new Loctionmap('PBL200768','null','牡丹基金卡服务','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL200769','250104'));
loctionmapListourl[574]=new Loctionmap('PBL20090202','null','','0','','/icbc/newperbank/remit/remit_queryremitpack_index.jsp','null','null','0','null','null','null');
loctionmapListourl[575]=new Loctionmap('PBL20090203','null','','0','','/icbc/newperbank/remit/remit_queryremitpack_index1.jsp','null','null','0','null','null','null');
loctionmapListourl[576]=new Loctionmap('PBL200770','null','其他服务','0','','null','null','null','0','null','null','null');
loctionmapListourl[577]=new Loctionmap('PBL200771','null','开户网点查询','1','','/icbc/newperbank/account/account_query_openaccnet_submit.jsp','null','null','0','null','null','null');
loctionmapListourl[578]=new Loctionmap('PBL200772','null','小额账户销户','1','','null','null','null','0','null','null','null');
nologonList[158]=new Loctionmap('PBL100101','null','','0','');
loctionmapListourl[579]=new Loctionmap('PBL100101','null','','0','','null','null','null','0','null','searchkey','searchWay');
loctionmapListourl[580]=new Loctionmap('PBL201620','null','生活服务','0','','null','null','null','0','null','null','null');
nologonList[159]=new Loctionmap('PBL201621','null','银医服务','1','');
loctionmapListourl[581]=new Loctionmap('PBL100102','null','','0','','null','null','null','0','null','null','null');
nologonList[160]=new Loctionmap('PBL20132301','null','','0','1、客户可通过“查询份额调整信息”功能查询账户基本金属连续产品的份额调整记录、历史份额调整价格、份额调整日期等信息，并可以修改接收份额调整短信的手机号码。<br>2、客户若查询其他地区账户基本金属账户中的余额，请调整至相应地区的交易卡（账）号。');
nologonList[161]=new Loctionmap('PBL200774','null','','0','');
loctionmapList.add(new Loctionmap('PBL201622','04'));
nologonList[162]=new Loctionmap('PBL20132302','null','','0','1、客户若查询其他地区建立的挂单交易明细，请调整至相应地区的交易卡（账）号。<br />2、客户可查询半年内的挂单交易明细。');
loctionmapListourl[582]=new Loctionmap('PBL100104','null','','0','','/icbc/newperbank/account/user_integrate_frame.jsp','null','null','0','null','null','null');
nologonList[163]=new Loctionmap('PBL20132303','null','','0','1、您可查询保证金账户中的美元或人民币资金余额。<br />2、您可将资金账户中的美元或人民币转入保证金账户，也可将保证金账户中的可用资金转出。<br />3、美元保证金账户的钞汇类型与上一次转入美元资金的钞汇类型一致，若调整保证金账户钞汇类型，请清空保证金账户余额并转入相应的美元钞或者美元汇。');
loctionmapListourl[583]=new Loctionmap('PBL201623','null','纳税 ','1','','/icbc/newperbank/perbank3/net_tax/tax_declare_index_info.jsp','null','null','0','null','null','null');
nologonList[164]=new Loctionmap('PBL200776','null','','0','');
loctionmapListourl[584]=new Loctionmap('PBL200776','null','','0','','/icbc/newperbank/card/card_applycard_index.jsp','/icbc/newperbank/bankbook/bankbook_onlineapply_mid.jsp','null','0','null','corpCode','groupid');
loctionmapListourl[585]=new Loctionmap('PBL100105','null','','0','','/icbc/newperbank/account/user_autoIntegrate_frame.jsp','null','null','0','null','null','null');
nologonList[165]=new Loctionmap('PBL20132304','null','','0','1、客户可实时提交产品转期指令，中国工商银行按照客户指定数量及实时转期价格自动平仓上期产品并开仓下期产品。<br>2、转期功能支持同一币种、同一交易类型账户基本金属上期产品向下期产品的转换。<br>3、实时转期的办理时间一般为在上下两期产品同时在线期间（即下期产品交易起始日至上期产品交易结束日间）的账户基本金属交易时间。<br><font color="red">4、实时转期中上期产品平仓价和下期产品开仓价一般情况下大幅好于同时点账户基本金属客户卖出价/买入价（即银行买入价/卖出价）。</font><br>5、具体功能请查询账户基本金属的产品介绍及交易规则。');
loctionmapListourl[586]=new Loctionmap('PBL201625','null','社保','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapListourl[587]=new Loctionmap('PBL100106','null','','0','','/icbc/newperbank/modify_initmm.jsp','null','null','0','null','null','null');
loctionmapListourl[588]=new Loctionmap('PBL200778','null','个人账户销户预处理','1','','null','null','null','0','null','null','null');
nologonList[166]=new Loctionmap('PBL20132305','420605','','0','1、客户若查询其他地区开立的账户基本金属交易账户交易明细，请调整至相应地区的交易卡（账）号。');
loctionmapList.add(new Loctionmap('PBL20132305','420605'));
loctionmapListourl[589]=new Loctionmap('PBL100107','null','','0','','null','null','null','0','null','null','null');
nologonList[167]=new Loctionmap('PBL20132306','null','','0','1、客户可查询账户基本金属产品的交易起始日、交易结束日和结算日信息。<br />2、客户可以查询账户基本金属产品的结算价格。<br />3、美元账户基本金属产品的到期结算价为产品交易结束日相应基本金属期货合约的国际市场结算价格。<br />4、人民币账户基本金属产品的到期结算价分为先买入后卖出到期结算价和先卖出后买入到期结算价，以上两个到期结算价格分别根据美元账户基本金属的到期结算价格和中国工商银行在结算日前一工作日23:30公布的人民币兑美元即期结售汇挂牌牌价的银行现汇买入价和银行现汇卖出价计算得出。');
loctionmapListourl[590]=new Loctionmap('PBL100108','null','','0','','null','null','null','0','null','tranFlag','iicardno');
loctionmapListourl[591]=new Loctionmap('PBL201627','null','资金托管','1','','/icbc/newperbank/perbank3/guarantee/guarantee_index_info.jsp','null','null','0','null','null','null');
nologonList[168]=new Loctionmap('PBL20132307','null','','0','1、客户可注销交易账户或调整交易卡。注销交易账户前客户须清空持仓及保证金账户。');
nologonList[169]=new Loctionmap('PBL20132308','null','','0','1、您可以通过“查询持仓的份额调整记录”功能了解所持有的账户基本金属连续产品的份额调整情况。<br />2、您的账户基本金属连续产品持仓资产规模在份额调整前后保持不变，即调整前持仓*份额调整前价格=调整后持仓*份额调整后价格+退还资金（释放保证金），其中份额调整过程中剩余不足开仓1磅的资金（或保证金）将退还至您的资金账户（或释放到保证金账户）。<br />3、您可以通过“查询历史份额调整价格”功能了解账户基本金属连续产品历史份额调整价格。<br />4、您可以通过“份额调整短信提醒”功能订阅账户基本金属连续产品份额调整结果通知，并修改接收短信的手机号码。');
loctionmapListourl[592]=new Loctionmap('PBL100109','null','','0','','/icbc/newperbank/perbank3/includes/AntiPhishing.jsp','null','null','0','null','null','null');
loctionmapListourl[593]=new Loctionmap('PBL201628','null','公益捐款注入','0','','null','null','null','0','null','payname','paycode');
loctionmapList.add(new Loctionmap('PBL201870','3117'));
loctionmapListourl[594]=new Loctionmap('PBL201870','3117','','0','','null','null','null','0','null','null','null');
loctionmapListourl[595]=new Loctionmap('PBL201871','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[596]=new Loctionmap('PBL100110','null','','0','','/icbc/newperbank/perbank3/includes/USTip.jsp','null','null','0','null','null','null');
loctionmapListourl[597]=new Loctionmap('PBL201630','null','专属权益','1','','null','null','null','0','优惠活动','null','null');
loctionmapListourl[598]=new Loctionmap('PBL100111','null','','0','','/icbc/newperbank/perbank3/includes/Ebankptop_US_alert.jsp','null','null','0','null','judgeUSBLevel','null');
nologonList[170]=new Loctionmap('PBL20132310','null','','0','1、客户设置到期转期类型后，中国工商银行在产品到期日按到期转期结算价格及客户选定的转期方式自动平仓上期产品并开仓下期产品，一般在次日的7:05起开始转期交易。<br>2、到期转期一经开启、长期有效，客户可在“管理自动转期”菜单下终止转期功能。<br>3、按金额转期（即固定金额转期）的方式是使用平仓全部上期产品数量所得资金，以最大可开仓数量同时开仓下期产品；按桶数转期（即固定数量转期）的方式是按客户持有的全部上期产品数量，尽可能开仓相同数量的下期产品。<br><font color="red">4、到期转期中上期产品平仓价和下期产品开仓价一般情况下大幅好于同时点账户客户卖出价/买入价（即银行买入价/卖出价）。</font><br>5、具体功能请查询账户基本金属的产品介绍及交易规则。');
loctionmapListourl[599]=new Loctionmap('PBL100112','null','','0','','/icbc/newperbank/perbank3/test/test.jsp','null','null','0','null','null','null');
nologonList[171]=new Loctionmap('PBL20132311','null','','0','1、客户可以通过点击“撤销”取消已经预约的转期计划。');
loctionmapListourl[600]=new Loctionmap('PBL100113','null','','0','','/icbc/newperbank/perbank3/includes/signTaxDocTips.jsp','null','null','0','null','null','null');
nologonList[172]=new Loctionmap('PBL20132312','null','','0','1、客户可以查询账户基本金属实时转期和到期转期的交易明细。');
nologonList[173]=new Loctionmap('PBL200301','140202','','0','');
loctionmapList.add(new Loctionmap('PBL200301','140202'));
loctionmapListourl[601]=new Loctionmap('PBL100114','null','','0','','/icbc/newperbank/perbank3/includes/integrityCheckTip.jsp','null','null','0','null','null','null');
nologonList[174]=new Loctionmap('PBL20132313','null','','0','');
nologonList[175]=new Loctionmap('PBL200302','null','','0','');
loctionmapListourl[602]=new Loctionmap('PBL100116','null','','0','','/icbc/newperbank/perbank3/includes/accountCheck.jsp','null','null','0','null','checkflag','null');
loctionmapListourl[603]=new Loctionmap('PBL200304','null','','0','','/icbc/newperbank/fund/fund_acct_query_index.jsp','null','null','0','null','null','null');
loctionmapListourl[604]=new Loctionmap('PBL201635','null','优惠券','0','','/icbc/Emall/main/forward.jsp','/icbc/Emall/main/forward.jsp','1','0','null','turnUrl','null');
loctionmapListourl[605]=new Loctionmap('PBL100117','null','','0','','/icbc/newperbank/perbank3/includes/setSecInfoTip.jsp','null','null','0','null','null','null');
nologonList[176]=new Loctionmap('PBL200305','null','','0','');
loctionmapListourl[606]=new Loctionmap('PBL200305','null','','0','','null','/icbc/newperbank/perbank3/fund/frame_fund_income_nologin.jsp','null','0','null','null','null');
loctionmapListourl[607]=new Loctionmap('PBL100118','null','','0','','/icbc/newperbank/perbank3/includes/mobileModify_tips.jsp','null','null','0','null','null','null');
nologonList[177]=new Loctionmap('PBL200306','null','','0','');
loctionmapListourl[608]=new Loctionmap('PBL200306','null','','0','','null','/icbc/newperbank/perbank3/fund/frame_fund_hot_nologin.jsp','null','0','null','null','null');
loctionmapListourl[609]=new Loctionmap('PBL100119','null','','0','','/icbc/newperbank/perbank3/includes/setAddrInfoTips.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL200308','140305'));
loctionmapListourl[610]=new Loctionmap('PBL200308','140305','','0','','/icbc/newperbank/fund/fund_fixedcancel_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL200309','140402'));
nologonList[178]=new Loctionmap('PBL20170816','null','','1','');
loctionmapListourl[611]=new Loctionmap('PBL100120','null','','0','','/icbc/newperbank/includes/drawgiftnew/DrawGiftNew_frame.jsp','null','null','0','null','null','null');
loctionmapListourl[612]=new Loctionmap('PBL201640','null','本地特色','0','','null','null','null','0','null','null','null');
loctionmapListourl[613]=new Loctionmap('PBL100121','null','','0','','/icbc/newperbank/perbank3/includes/browserDownload.jsp','null','null','0','null','null','null');
loctionmapListourl[614]=new Loctionmap('PBL20178301','null','','0','','null','null','null','0','null','null','null');
loctionmapListourl[615]=new Loctionmap('PBL20178302','null','','0','','null','null','null','0','null','null','null');
nologonList[179]=new Loctionmap('PBL200311','140201','','0','');
loctionmapList.add(new Loctionmap('PBL200311','140201'));
loctionmapListourl[616]=new Loctionmap('PBL201400','null','信使.预约','0','','null','null','null','0','null','null','null');
loctionmapListourl[617]=new Loctionmap('PBL20178303','null','','0','','null','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL200312','140401'));
nologonList[180]=new Loctionmap('PBL200313','null','','0','');
nologonList[181]=new Loctionmap('PBL200317','null','基金','0','');
nologonList[182]=new Loctionmap('PBL20134508','null','','0','1、工银人民币账户外汇指数交易时间一般为周一早07：00到周六早04：00，如遇节假日等特殊情况，请以中国工商银行网站公告为准，或可咨询95588。<br/>2、在左侧实时行情区，您看到的报价为参考报价，仅供您参考，不能凭此达成交易；如您需要达成交易，请联动到交易区获取可成交报价后完成交易。直接点击银行买入价或银行卖出价，可联动到右侧交易区的实时交易，办理实时工银人民币账户外汇指数买卖交易。<br/>3、在右侧交易区，提供了实时交易、获利挂单、止损挂单、双向挂单等多种交易方式。各种挂单介绍见《中国工商银行账户外汇指数产品介绍》。在提交交易指令后，请尽快完成确认。各地区挂单种类可能不同，请以实际情况为准。<br/>4、挂单有效期包括24小时、48小时、72小时、96小时、120小时等。<br/>5、挂单成功后，如您需撤销挂单，请到“管理挂单”中办理。<br/>6、根据《中国工商银行指数产品交易协议》和《中国工商银行账户外汇指数产品介绍》，我行可能会调整买入/卖出价格与中间价间价差，请您在交易前注意确认。');
loctionmapListourl[618]=new Loctionmap('PBL20134508','null','','0','','null','null','null','0','0','null','null');
nologonList[183]=new Loctionmap('PBL20134509','null','','0','');
nologonList[184]=new Loctionmap('PBL201410','null','工银信使','0','');
loctionmapListourl[619]=new Loctionmap('PBL201410','null','工银信使','0','','null','null','null','0','null','null','null');
loctionmapListourl[620]=new Loctionmap('PBL201411','null','余额变动提醒','1','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[621]=new Loctionmap('PBL201412','null','贵金属到价提醒','1','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[622]=new Loctionmap('PBL201413','null','重要事项提醒','1','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[623]=new Loctionmap('PBL201414','null','新品通知','1','','null','null','null','0','null','isOrder','MsgItemNofld');
loctionmapListourl[624]=new Loctionmap('PBL201660','null','增值服务','1','','null','null','null','0','null','null','null');
nologonList[185]=new Loctionmap('PBL20132342','420602','','0','1、账户基本金属产品的交易起始日、交易结束日和结算日等信息可在账户基本金属“查询产品信息”栏目下查询，账户北美铜1磅约合0.4536千克。<br />2、账户基本金属交易时间一般为周一9：00到24：00，周二至周五每日0：00到2：00与9：00到24：00，周六0：00到2：00。<br />3、客户通过我行风险能力评测和投资交易类产品适合度评估后方能办理账户基本金属开户及交易业务。<br />4、挂单交易的有效期包括24小时、48小时、72小时、96小时、120小时，客户可通过挂单有效期下拉选项选择。<br />5、在账户基本金属行情报价，您看到的报价为参考报价，仅供您参考，不能凭此达成交易；如您需要达成交易，请联动到交易区获取可成交报价后完成交易。<br />6、根据市场情况，我行可能调整账户基本金属的银行买入价/卖出价和交易价差，请客户在达成交易前注意。<br />7、因国家监管政策等原因，我行对所有客户人民币账户基本金属产品总持仓净额设定上、下限。当客户持仓触及上、下限时，客户将不能进行新开仓操作，平仓操作不受影响。<br />8、某期账户基本金属产品到期后，客户若没有参与转期而仍持有该期产品，我行将按照该期产品到期结算价为客户进行结算，客户资金在该期产品结算日到账。<br />9、为便于客户更好地了解该业务，我行在门户网站-个人业务-金融市场投资交易-热点问答中增加了账户基本金属交易业务知识问答。');
loctionmapList.add(new Loctionmap('PBL20132342','420602'));
loctionmapListourl[625]=new Loctionmap('PBL20132342','420602','','0','','null','null','null','null','0','prodcode','cashsign');
loctionmapList.add(new Loctionmap('PBL201420','230502'));
loctionmapList.add(new Loctionmap('PBL20166101','322001'));
loctionmapListourl[626]=new Loctionmap('PBL20166101','322001','','0','','null','null','null','0','null','null','null');
loctionmapListourl[627]=new Loctionmap('PBL201421','null','','1','','/icbc/newperbank/perbank3/includes/menu_all.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20166102','322002'));
loctionmapListourl[628]=new Loctionmap('PBL20166102','322002','','0','','null','null','null','0','null','null','null');
nologonList[186]=new Loctionmap('PBL20132101','null','','0','1、客户可通过“查询份额调整信息”功能查询账户原油连续产品和账户天然气的份额调整记录、历史份额调整价格、份额调整日期等信息，并可以修改接收份额调整短信的手机号码。<br>2、客户若查询其他地区账户能源账户中的余额，请调整至相应地区的交易卡（账）号。<br>');
loctionmapList.add(new Loctionmap('PBL20166103','322003'));
loctionmapListourl[629]=new Loctionmap('PBL20166103','322003','','0','','null','null','null','0','null','null','null');
nologonList[187]=new Loctionmap('PBL20132102','null','','0','1、客户若查询其他地区建立的挂单交易明细，请调整至相应地区的交易卡（账）号。<br />2、客户可查询半年内的挂单交易明细。');
nologonList[188]=new Loctionmap('PBL20132103','null','','0','1、您可查询保证金账户中的美元或人民币资金余额。<br />2、您可将资金账户中的美元或人民币转入保证金账户，也可将保证金账户中的可用资金转出。<br />3、美元保证金账户的钞汇类型与上一次转入美元资金的钞汇类型一致，若调整保证金账户钞汇类型，请清空保证金账户余额并转入相应的美元钞或者美元汇。');
nologonList[189]=new Loctionmap('PBL20132104','null','','0','1、客户可实时提交产品转期指令，中国工商银行按照客户指定数量及实时转期价格自动平仓上期产品并开仓下期产品。<br>2、转期功能支持同一币种、同一交易类型账户原油上期产品向下期产品的转换。<br>3、实时转期的办理时间一般为在上下两期产品同时在线期间（即下期产品交易起始日至上期产品交易结束日间）的账户原油交易时间。<br><font color="red">4、实时转期中上期产品平仓价和下期产品开仓价一般情况下大幅好于同时点账户原油客户卖出价/买入价（即银行买入价/卖出价）。</font><br>5、具体功能请查询账户能源的产品介绍及交易规则。');
loctionmapListourl[630]=new Loctionmap('PBL201424','null','','0','','/icbc/newperbank/precontract/precontract_myprecontract_submit.jsp','null','null','0','null','null','null');
nologonList[190]=new Loctionmap('PBL20132105','420105','','0','1、客户若查询其他地区开立的账户能源交易账户交易明细，请调整至相应地区的交易卡（账）号。');
loctionmapList.add(new Loctionmap('PBL20132105','420105'));
loctionmapList.add(new Loctionmap('PBL20201801','171002'));
loctionmapListourl[631]=new Loctionmap('PBL20201801','171002','','0','','/icbc/newperbank/fakeexchange/stock_fake_balance_query.jsp','null','null','0','null','null','null');
loctionmapListourl[632]=new Loctionmap('PBL201425','null','','0','','/icbc/newperbank/precontract/precontract_myprecontract_submit.jsp','null','null','0','null','null','null');
nologonList[191]=new Loctionmap('PBL20132106','null','','0','1、客户可以查询账户原油期次产品的交易起始日、交易结束日、结算日信息和结算价格。<br />2、美元账户原油期次产品的到期结算价为产品交易结束日相应原油期货合约的国际市场结算价格。<br />3、人民币账户原油期次产品的到期结算价分为先买入后卖出到期结算价和先卖出后买入到期结算价，以上两个到期结算价格分别根据美元账户原油期次产品的到期结算价格和中国工商银行在结算日前一工作日23:30公布的人民币兑美元即期结售汇挂牌牌价的银行现汇买入价和银行现汇卖出价计算得出。');
loctionmapList.add(new Loctionmap('PBL201426','022501'));
loctionmapListourl[633]=new Loctionmap('PBL201426','022501','','0','','/icbc/newperbank/account/account_creditcertificate_open_index.jsp','null','null','0','null','null','null');
loctionmapList.add(new Loctionmap('PBL20201802','171003'));
loctionmapListourl[634]=new Loctionmap('PBL20201802','171003','','0','','/icbc/newperbank/fakeexchange/stock_fake_transfer.jsp','null','null','0','null','null','null');
var localMapList_serviceIdNeedNotLogon='|PBL20132107|PBL201428|PBL20132108|PBL201429|PBL20132110|PBL201430|PBL201431|PBL20132111|PBL201432|PBL20132112|PBL201433|PBL20132113|PBL20132118|PBL201210|PBL201212|PBL201213|PBL201214|PBL201215|PBL201216|PBL201220|PBL201221|PBL20122101|PBL201222|PBL201223|PBL20112302|PBL201224|PBL201225|PBL201226|PBL201227|PBL201228|PBL201229|PBL201230|PBL20134101|PBL300101|PBL20134102|PBL20134103|PBL300103|PBL20134104|PBL20134105|PBL20134106|PBL20134107|PBL20134108|PBL20134109|PBL20134110|PBL201011|PBL20111001|PBL201012|PBL20111002|PBL20111004|PBL201021|PBL201022|PBL20112101|PBL201023|PBL201024|PBL201025|PBL20112105|PBL201031|PBL20072201|PBL20072202|PBL20102101|PBL20102106|PBL201080|PBL201097|PBL201098|PBL500104|PBL20031301|PBL201900|PBL200601|PBL200603|PBL100200|PBL200401|PBL200402|PBL201503|PBL20131101|PBL20131102|PBL20131103|PBL20131104|PBL20131105|PBL20111504|PBL20131106|PBL20132201|PBL20132202|PBL20132203|PBL20132204|PBL20132205|PBL20132206|PBL20132207|PBL20132208|PBL200440|PBL20132210|PBL20132211|PBL200201|PBL20132212|PBL200202|PBL20132213|PBL200203|PBL200204|PBL201311|PBL201312|PBL20132241|PBL201321|PBL201322|PBL201323|PBL20109001|PBL201331|PBL201332|PBL201333|PBL201578|PBL201337|PBL201340|PBL201341|PBL201342|PBL201343|PBL201344|PBL201345|PBL201351|PBL201110|PBL201111|PBL201112|PBL201113|PBL201114|PBL201115|PBL201116|PBL201117|PBL201121|PBL20122001|PBL201122|PBL201123|PBL201370|PBL201131|PBL201139|PBL750005|PBL750006|PBL750007|PBL20101101|PBL20074504|PBL20113101|PBL20113102|PBL20103101|PBL10011501|PBL20162101|PBL20077401|PBL20162102|PBL20162104|PBL20030101|PBL201800|PBL200721|PBL200722|PBL200723|PBL200501|PBL200502|PBL200505|PBL200507|PBL200508|PBL200511|PBL201601|PBL201604|PBL20131201|PBL100101|PBL201621|PBL20132301|PBL200774|PBL20132302|PBL20132303|PBL200776|PBL20132304|PBL20132305|PBL20132306|PBL20132307|PBL20132308|PBL20132310|PBL20132311|PBL20132312|PBL200301|PBL20132313|PBL200302|PBL200305|PBL200306|PBL20170816|PBL200311|PBL200313|PBL200317|PBL20134508|PBL20134509|PBL201410|PBL20132342|PBL20132101|PBL20132102|PBL20132103|PBL20132104|PBL20132105|PBL20132106|';

var localMapList_serviceIdMustInMainFrame='|PBL201427|PBL20201803|PBL20091101|PBL20091102|PBL20091103|PBL20091104|PBL201670|PBL20132118|PBL201200|PBL20091121|PBL20091122|PBL20091123|PBL201210|PBL201212|PBL201213|PBL20200501|PBL201214|PBL20200502|PBL201215|PBL201216|PBL201217|PBL201220|PBL201221|PBL20122101|PBL201222|PBL201223|PBL20122102|PBL20112302|PBL201224|PBL201225|PBL20122104|PBL20112303|PBL201226|PBL20122105|PBL20112304|PBL201227|PBL20201603|PBL20112305|PBL201228|PBL20112306|PBL20201604|PBL201229|PBL20201605|PBL20190001|PBL20190002|PBL20071301|PBL20071302|PBL20071303|PBL20071304|PBL201230|PBL201231|PBL20167001|PBL20167002|PBL20082201|PBL20072401|PBL20082202|PBL20171501|PBL20072402|PBL20082203|PBL20171502|PBL20171503|PBL20171504|PBL20171505|PBL20171506|PBL20171507|PBL20171508|PBL20171509|PBL201000|PBL20100101|PBL300101|PBL20134102|PBL20100102|PBL300102|PBL300103|PBL20100103|PBL20100104|PBL20134105|PBL20100105|PBL20134106|PBL20134107|PBL20134108|PBL20134109|PBL20171511|PBL201010|PBL20134110|PBL20134111|PBL20111001|PBL20200301|PBL20111004|PBL20060201|PBL201020|PBL20134122|PBL20112101|PBL20112102|PBL20112103|PBL20112104|PBL20112105|PBL20112106|PBL20112107|PBL20112108|PBL20112109|PBL201030|PBL20112110|PBL20112111|PBL20112112|PBL20112113|PBL20103401|PBL20072201|PBL20170212|PBL20072202|PBL20076801|PBL20076802|PBL20076803|PBL201040|PBL201050|PBL201052|PBL20200101|PBL20200102|PBL20200103|PBL20074401|PBL20074402|PBL20074403|PBL20074404|PBL201060|PBL201062|PBL203001|PBL20102101|PBL20102103|PBL20102106|PBL201070|PBL201071|PBL20103201|PBL20202301|PBL20202302|PBL20171101|PBL20076601|PBL20171102|PBL20076602|PBL201080|PBL201081|PBL20077701|PBL20077702|PBL201090|PBL201095|PBL201096|PBL201098|PBL20074201|PBL20074202|PBL20074203|PBL20300101|PBL500101|PBL500102|PBL500103|PBL500104|PBL20137001|PBL20076401|PBL20161101|PBL20076402|PBL20161102|PBL20076403|PBL20161103|PBL20076404|PBL20161104|PBL20203201|PBL20203202|PBL20162201|PBL20077501|PBL20162202|PBL20163301|PBL200800|PBL200809|PBL201901|PBL20086001|PBL20086002|PBL20076201|PBL20076202|PBL20086003|PBL200820|PBL20086004|PBL20111901|PBL20111902|PBL200824|PBL20076211|PBL20076212|PBL20077301|PBL20076213|PBL20077302|PBL200830|PBL20076214|PBL20077303|PBL20077304|PBL20076215|PBL20076216|PBL20076217|PBL20076221|PBL20076222|PBL20076223|PBL200840|PBL20076224|PBL20076225|PBL20076226|PBL200603|PBL200850|PBL201710|PBL201711|PBL201712|PBL201714|PBL201715|PBL201716|PBL201717|PBL201718|PBL201719|PBL20076010|PBL20076011|PBL200870|PBL20076012|PBL100200|PBL20076013|PBL201721|PBL201725|PBL201726|PBL201727|PBL201728|PBL200880|PBL201730|PBL201731|PBL201732|PBL200890|PBL201500|PBL201501|PBL201502|PBL300601|PBL201503|PBL300602|PBL300603|PBL201504|PBL201505|PBL300604|PBL201506|PBL300605|PBL201507|PBL201510|PBL20111500|PBL201512|PBL20111501|PBL201513|PBL20111502|PBL201514|PBL20111503|PBL20111504|PBL201515|PBL20111505|PBL201517|PBL201518|PBL201519|PBL20090102|PBL20090103|PBL201760|PBL20176001|PBL201520|PBL201521|PBL201522|PBL201523|PBL201524|PBL201525|PBL20201901|PBL201526|PBL20201902|PBL201527|PBL20201903|PBL20201904|PBL201528|PBL20201905|PBL201529|PBL20201906|PBL20201907|PBL201530|PBL201531|PBL200201|PBL201532|PBL200202|PBL200203|PBL201534|PBL201535|PBL200204|PBL201536|PBL201537|PBL201538|PBL201539|PBL201540|PBL201541|PBL20178201|PBL201542|PBL20178202|PBL201300|PBL201543|PBL20178203|PBL201544|PBL20178204|PBL201545|PBL201546|PBL201547|PBL201548|PBL201549|PBL201550|PBL201551|PBL201310|PBL201552|PBL201553|PBL201554|PBL201555|PBL201556|PBL201557|PBL201558|PBL201559|PBL201560|PBL20132241|PBL201561|PBL201562|PBL201320|PBL201563|PBL201564|PBL201565|PBL201566|PBL201567|PBL201568|PBL201569|PBL20201703|PBL20201704|PBL20201705|PBL20081201|PBL20071401|PBL20081202|PBL20071402|PBL201570|PBL201571|PBL201572|PBL201330|PBL201573|PBL201574|PBL201575|PBL201576|PBL201334|PBL201577|PBL201335|PBL201336|PBL201579|PBL20092101|PBL20082301|PBL20092102|PBL20092103|PBL20082302|PBL20082303|PBL20150915|PBL201581|PBL201582|PBL201340|PBL201583|PBL201100|PBL20134201|PBL20134202|PBL20134203|PBL201350|PBL201110|PBL201111|PBL201112|PBL201113|PBL201114|PBL20200402|PBL201116|PBL201117|PBL201120|PBL20122001|PBL20112201|PBL20112202|PBL20112203|PBL20112204|PBL20112205|PBL20201504|PBL20201505|PBL20081001|PBL20201506|PBL20081002|PBL20201507|PBL20081003|PBL20081004|PBL20081005|PBL20081006|PBL20081007|PBL20081008|PBL20081009|PBL201134|PBL201135|PBL201136|PBL201137|PBL20082101|PBL20082102|PBL20082103|PBL201140|PBL201141|PBL20158201|PBL201143|PBL201144|PBL750001|PBL750002|PBL750003|PBL750004|PBL750005|PBL750006|PBL750007|PBL20083202|PBL202000|PBL202001|PBL20101101|PBL202002|PBL202003|PBL20200201|PBL20200202|PBL20101103|PBL202005|PBL20060101|PBL20074501|PBL20074502|PBL20074503|PBL20074504|PBL20074506|PBL20134020|PBL202010|PBL202011|PBL202012|PBL202013|PBL202014|PBL20201301|PBL20201302|PBL202018|PBL202019|PBL2007471|PBL202020|PBL202021|PBL20113101|PBL20103301|PBL20103302|PBL20076701|PBL20076702|PBL20076703|PBL20076704|PBL20076705|PBL20076706|PBL202030|PBL202033|PBL740001|PBL740002|PBL740003|PBL202040|PBL400001|PBL20074301|PBL20201101|PBL20201102|PBL20201103|PBL20103101|PBL20202201|PBL20202202|PBL20103103|PBL20202203|PBL20202204|PBL20161201|PBL20161202|PBL20104202|PBL730001|PBL730002|PBL730003|PBL20104204|PBL730004|PBL700601|PBL730005|PBL700602|PBL200900|PBL20104221|PBL20104222|PBL20104223|PBL20075201|PBL200910|PBL20104232|PBL20104233|PBL200921|PBL20203101|PBL20203102|PBL720001|PBL20203103|PBL720002|PBL720003|PBL20162101|PBL20077401|PBL20162102|PBL20077402|PBL100501|PBL20162103|PBL20162104|PBL20162105|PBL20162106|PBL20162107|PBL20030101|PBL20163201|PBL20163202|PBL200700|PBL200710|PBL201800|PBL201805|PBL201806|PBL20076101|PBL20076102|PBL20076103|PBL200720|PBL201810|PBL201811|PBL201812|PBL200723|PBL201813|PBL200725|PBL201814|PBL201815|PBL201816|PBL201818|PBL201819|PBL710001|PBL710002|PBL710003|PBL710004|PBL200730|PBL201820|PBL100301|PBL201821|PBL201822|PBL200733|PBL201823|PBL201824|PBL201825|PBL201826|PBL201828|PBL20088101|PBL200740|PBL200741|PBL20088103|PBL201830|PBL201831|PBL200744|PBL200503|PBL200504|PBL200505|PBL200748|PBL200506|PBL200749|PBL200507|PBL200508|PBL200509|PBL200750|PBL200510|PBL201600|PBL201843|PBL300701|PBL201844|PBL201845|PBL201846|PBL300703|PBL20107102|PBL20107103|PBL200760|PBL201850|PBL201610|PBL201611|PBL200765|PBL20111601|PBL20111602|PBL200768|PBL20090202|PBL20090203|PBL200770|PBL200771|PBL200772|PBL100101|PBL201620|PBL100102|PBL100104|PBL201623|PBL200776|PBL100105|PBL201625|PBL100106|PBL200778|PBL100107|PBL100108|PBL201627|PBL100109|PBL201628|PBL201870|PBL201871|PBL100110|PBL201630|PBL100111|PBL100112|PBL100113|PBL100114|PBL100116|PBL200304|PBL201635|PBL100117|PBL200305|PBL100118|PBL200306|PBL100119|PBL200308|PBL100120|PBL201640|PBL100121|PBL20178301|PBL20178302|PBL201400|PBL20178303|PBL20134508|PBL201410|PBL201411|PBL201412|PBL201413|PBL201414|PBL201660|PBL20132342|PBL20166101|PBL201421|PBL20166102|PBL20166103|PBL201424|PBL20201801|PBL201425|PBL201426|PBL20201802|';

var localMapList_CommandStr='PBL300101|PBL201097|PBL200811|PBL200812|PBL100410|PBL200603|PBL20164001|PBL201786|PBL201139|PBL200745|PBL200779|PBL200317';

var localMapList_FavouriteStr='PBL201428|PBL201433|PBL201216|PBL300101|PBL201021|PBL201031|PBL201032|PBL201041|PBL201051|PBL201061|PBL201071|PBL201097|PBL201099|PBL200811|PBL200812|PBL200821|PBL200824|PBL100410|PBL200603|PBL200862|PBL200882|PBL20164001|PBL201503|PBL201508|PBL201786|PBL201311|PBL201312|PBL201321|PBL201322|PBL201323|PBL20109001|PBL201331|PBL201332|PBL201333|PBL201337|PBL201341|PBL201583|PBL201342|PBL201343|PBL201344|PBL201345|PBL201121|PBL201123|PBL201370|PBL201139|PBL750007|PBL202004|PBL202014|PBL202015|PBL202022|PBL200901|PBL200902|PBL200911|PBL200912|PBL200711|PBL200714|PBL200715|PBL200721|PBL200722|PBL200743|PBL200745|PBL200511|PBL200762|PBL200763|PBL200766|PBL200769|PBL200771|PBL200773|PBL201621|PBL201626|PBL200779|PBL201631|PBL200317|PBL201411';

var localMapList_IsMyBank='|PBL201700|PBL201720|PBL201724|PBL201786|';


</script>



	




	<!-- <script src="/icbc/newperbank/js/perbank3/tongji.js"></script> -->
	
	<script src="/icbc/newenperbank/js/perbank3/js0005.js?ver=2017122122"></script>

	<script>
	try{
	//--------------------------------------------------------
	var Perbank3PubData_pv = getFrameMidPubData();
	
	addPvValue(['uip',Perbank3PubData_pv.clientIP]);//访客ip
	addPvValue(['areacode',Perbank3PubData_pv.Area_code]);//地区号
	addPvValue(['stat_ss',Perbank3PubData_pv.stat_ss]);//访客标识
	addPvValue(['srcpageno',Perbank3PubData_pv.pageNoPre]);//来源页面编码
	addPvValue(['curpageno',Perbank3PubData_pv.pageNoCur]);//当前页面编码
	addPvValue(['noIdendifiedCusid',Perbank3PubData_pv.logId]);
	addPvValue(['TRANSDATE','20180113']);
	addPvValue(['TRANSTIME','141602']);
	addPvValue(['requestChannel',Perbank3PubData_pv.requestChannel]);
	addPvValue(['sessionId',Perbank3PubData_pv.dse_sessionId]);
	addPvValue(['pvModelElementId',Perbank3PubData_pv.pvModelElementId]);
	addPvValue(['filterWord',Perbank3PubData_pv.filterWord]);
	addPvValue(['labelname',Perbank3PubData_pv.labelname]);
	addPvValue(['cis',Perbank3PubData_pv.cis]);
	addPvValue(['url','/icbc/newenperbank/perbank3/frame/frame_index_ads.jsp']);
	
	//清理上一页面信息
	Perbank3PubData_pv.pvModelElementId = "";
	Perbank3PubData_pv.filterWord = "";
	Perbank3PubData_pv.labelname = "";
	}catch(e){}
</script>

<script src="/icbc/newenperbank/js/perbank3/js0014.js?ver=2017122122"></script>

</html>

/**###############################原子服务外层框架需要使用的方法#############################*/
/**
 * 网银最外层的框架方式
 * 注意：对于融e购和网银使用的方法，不能随便修改方法签名
 * 
 */

/**
 * 
 * @param event
 */
function messageHandler(event){
	var msg = JSON.parse(event.data);
	var a =functionList[msg.functionName]; 
	if(typeof a =="function"){//白名单判断		
		a.call(this,msg.functionParam);
	}
}

//父窗体回传参数的对象
var parentMessage = {
		type:"",
		content:{}
};

//白名单列表
var functionList = {
		"perbankLogin":perbankLogin,
		"callIframeMethod":callIframeMethod,
		"perbankOpenWindow":perbankOpenWindow,
		"perbankCloseWindow":perbankCloseWindow,
		"perbankAtomLocation":perbankAtomLocation,
		"perbankFreshFrameHeight":perbankFreshFrameHeight,
		"perbankRelocateByIdorUrl":perbankRelocateByIdorUrl,
		"getPerbankParams":getPerbankParams,
		"feeFreshFrameHeight":feeFreshFrameHeight,
		"backToFeeHome":backToFeeHome
};


/**
 * 设置perbank-content-frame高度不低于563（加上页头和页尾是768）
 * @param h
 * @param crrent
 */
function perbankFreshFrameHeight(h,crrent){
	var pcfMinHeight = $(window).height()-285;//390为页面不变区域总高度
	if(crrent!="undefined"&&crrent!=""){
		if(crrent=="perbank-content-frame" && h<pcfMinHeight){
			h=pcfMinHeight;
		}
		$("#"+crrent).height(h);
	}else{
		if(h<pcfMinHeight){
			h=pcfMinHeight;
		}
		$("#perbank-content-frame").height(h);
	}
	
}

/**
 * 唤起登录页面
 * 注意：融e购和网银使用
 * @param sid
 * @param transData
 */
function perbankLogin(sid,transData){
		var indexUrl = document.location.href.replace(/\?.*$/,"");
		var other = document.location.href.replace(/.*\?(.*)/,"$1").replace(/(serviceId=[^&$]*|transData=[^&$]*|lService=[^&$]*)/g,"");
		//var t =  perbankLoginUrl+"?"+"serviceId="+sid+"&transData="+transData+"&lService="+indexUrl+(other==""?"":("?"+other));
		//window.top.location = t;		
		//var t =  perbankLoginUrl+"?"+"serviceId="+sid+"&transData="+transData+"&lService="+indexUrl+(other==""?"":("?"+other));
		window.location="/icbc/newenperbank/main/login.jsp";
		showLogonDiv();
		
}

/**
 * 
 * @param funcName
 * @param callType 字典：0：在页面主体iframe执行 1:在弹出框的iframe执行。默认：0
 */
function callIframeMethod(funcName, callType){
	var frameName = CrossMsg.contentFrameName;
	if(callType!=undefined&&callType=="1")
		frameName = CrossMsg.popFrameName;
	CrossDomain.callIframe(frameName,{functionName:funcName,functionParam:[""]},CrossMsg.iframeDomain);
}

/**###############################原子服务外层框架需要使用的方法#############################*/


function perbankOpenWindow(obj){
	showAdDiv(obj);//在login_flot.jsp中定义
}

function perbankCloseWindow(){
	hideLogonDiv();
}

function perbankAtomLocation(sid,transData,sessionIdpara){
	var ssid = sessionIdpara||dse_sessionId;
	if(sid==""){
		alert("请求serviceid为空！请添加原子服务。");
		
	}
	var url  =window.top.location.href;
	if(url.indexOf("?")>-1){
		url=url.substr(0,url.indexOf("?"));
	}
	url = url + "?"+"serviceId="+sid;
	if(transData)
	url = url + "&transData="+transData;
	if(ssid)
		url = url +"&dse_sessionId="+ssid;
	window.top.location.href = url;
}

/**
 * 打开新窗口 
 * 注意：网银专用
 * @param sid
 * @param transData
 * @param dse_sessionId

function perbankAtomLocationNW(sid,transData,dse_sessionId){
	//判断是否需要登录，如果需要登录则中断
	if(!AtomSerivceSubmitPre(sid,transData,dse_sessionId,"1")){
		return ;
	}
	var url  =window.top.location.href;
	if(url.indexOf("?")>-1){
		url=url.substr(0,url.indexOf("?"));
	}
	url="/icbc/newperbank/perbank3/frame/frame_index.jsp";
	url = url + "?"+"serviceId="+sid+"&transData="+transData+"&dse_sessionId="+dse_sessionId;
	//window.top.location.href = url;
	window.open(url);
} */

/***
 * 打开url 
 * 3-原窗口
 * 1-新窗口
 * @param url
 * @param flag
 */
function windowOpen(url,flag){
	if("3"==flag){
		window.location.href = url;
	}else if("1"==flag){
		window.open(url);
	}else if("4"==flag){
		var url_new  =window.top.location.href;
		if(url_new.indexOf("/icbc")>-1){
			url_new=url_new.substr(0,url_new.indexOf("/icbc"))+url;
		}
		window.open(url_new);
	}
	
}



/**
 * 
 * @param serviceId
 * @param transData
 * @param checkflag
 * @param loginws
 */
function AtomSerivceSubmit(serviceId,transData,checkflag,loginws){
	perbankAtomLocationTW(serviceId,transData,'',loginws);
}
/**
 * 在perbank-content-frame中打开窗口
 * 注意：网银专用
 * @param sid
 * @param transData
 * @param dse_sessionId
 */
function perbankAtomLocationTW(sid,transData1,sessionIdpara,loginws,oratype){
	try{frames['perbank-content-frame'].AtomSerivceShowLoading();}catch(e){}
	jQuery("#menulist").hide();//隐藏浮动提示
	//如果是在欢送页则进入首页
	/*if("PBL100107"==sid){
		sid="PBL200202";
	}*/
	try{
	UserBrowseSidStack.clearUserBrowseSidStack();//框架外先清空栈
	UserBrowseSidStack.setBrowseSid(sid,transData1);//记录原子服务到返回栈中
	}catch(e){}
	var serviceIdInto=sid;
	if(sid.indexOf(">")>0){
		serviceIdInto=sid;
		sid=serviceIdInto.substring(0,sid.indexOf(">"));
		
	}
	try{
	if(loctionmapList.getLoctionmapListourl(sid).addurl_type=="1"){
		if(loctionmapList.getLoctionmapListourl(sid).menu_type=="1"){//外联菜单
			var url=loctionmapList.getLoctionmapListourl(sid).addurl;
			url=url+"?dse_sessionId="+Perbank3PubData.dse_sessionId;
			//新开窗口只支持一个参数
			if(transData1 != null && transData1!=""){
				var transData1Array = transData1.split("\|");
				url=url+"&"+loctionmapList.getLoctionmapListourl(sid).field1+"="+encodeURIComponent(transData1Array[0]);
				if(transData1Array.length>1){
					url+="&"+loctionmapList.getLoctionmapListourl(sid).field2+"="+encodeURIComponent(transData1Array[1]);
				}
			}
			window.open(url);//完整路径
			
		}else{
			//网银菜单
			//未登录
			if(dse_sessionId==null||dse_sessionId==""){
				var url=loctionmapList.getLoctionmapListourl(sid).url_nosession;
				//新开窗口只支持一个参数
				if(transData1 != null && transData1!=""){
					var transData1Array = transData1.split("\|");
					url=url+"?"+loctionmapList.getLoctionmapListourl(sid).field1+"="+encodeURIComponent(transData1Array[0]);
					if(transData1Array.length>1){//搜索跳转e缴费关键字不加encodeURIComponent
						url+="&"+loctionmapList.getLoctionmapListourl(sid).field2+"="+transData1Array[1];
					}
				}
				window.open(url);//完整路径
			}else{
				//已登录
				var url=loctionmapList.getLoctionmapListourl(sid).url;
				url=url+"?dse_sessionId="+dse_sessionId;
				//新开窗口只支持一个参数
				if(transData1 != null && transData1!=""){
					var transData1Array = transData1.split("\|");
					url=url+"&"+loctionmapList.getLoctionmapListourl(sid).field1+"="+encodeURIComponent(transData1Array[0]);
					if(transData1Array.length>1){//搜索跳转e缴费关键字不加encodeURIComponent
						url+="&"+loctionmapList.getLoctionmapListourl(sid).field2+"="+transData1Array[1];
					}
				}
				window.open(url);//完整路径
			}
			
		}
		try{frames['perbank-content-frame'].AtomSerivceHideLoading();}catch(e){}
		return ;
	}
	}catch(e){}

	var ssid = sessionIdpara||dse_sessionId;
	
	//强制登录
	if(loginws){
		AtomSerivceSubmitPre(serviceIdInto,transData1,'',"1",loginws);
		return ;
	}
	
	//判断是否需要登录，如果需要登录则中断
	if(!AtomSerivceSubmitPre(serviceIdInto,transData1,ssid,"1")){
		return ;
	}
	
	//判断当前原子服务隶属于我的网银并且当前页面不是我的网银时刷新整个页面
	//判断当前原子服务不隶属于我的网银并且当前页面是我的网银时刷新整个页面
	var serviceIdFirst=serviceId;
	if(serviceId.indexOf(">")>0){
		serviceIdFirst=serviceId.substring(0,serviceId.indexOf(">"));
	}
	if((loctionmapList.isMyBank(sid) && !loctionmapList.isMyBank(serviceIdFirst))||(!loctionmapList.isMyBank(sid) && loctionmapList.isMyBank(serviceIdFirst))){
		perbankAtomLocationBW(serviceIdInto,transData1,ssid,'',oratype);
		return;
	}
	
	//最后一次点击 如果是退出进入的则记录为首页，其它情况记录具体交易页面
	try{
		if("PBL100107"==sid){
			serviceId="PBL200202";
			transData="";
		}else{
			serviceId=sid;
			transData=transData1;
		}
	}catch(e){}
	 
	if(serviceIdInto.indexOf(">")>0){
		document.topfameFrom.serviceIdInto.value=serviceIdInto;
	}else{
		document.topfameFrom.serviceIdInto.value="";
	}
	//首页才会显示
	setDisAd(sid,dse_sessionId);
	//if("PBL200202"!=sid){
	if(''!=zoneNo && null !=zoneNo){
		document.topfameFrom.zoneNo.value=zoneNo;
	}
	
		document.topfameFrom.action="/servlet/ICBCPERBANKLocationServiceServlet";
		document.topfameFrom.target="perbank-content-frame";
		document.topfameFrom.transData.value=transData1;
		document.topfameFrom.serviceId.value=sid;
		document.topfameFrom.dse_sessionId.value=ssid;
		document.topfameFrom.submit();
	//}
}

/**
 * 在ICBC_window_flot_frame浮动窗口中打开窗口
 * 注意：网银专用
 * @param sid
 * @param transData
 * @param dse_sessionId
 */
function perbankAtomLocationFW(sid,transData,dse_sessionId){
	//显示浮动视图window_flot.jsp
	perbankAtomLocationFWshow();//
	//document.topfameFrom1.target="ICBC_window_flot_frame";
	if(''!=zoneNo && null !=zoneNo){
		document.topfameFrom1.zoneNo.value=zoneNo;
	}
	document.topfameFrom1.transData.value=transData;
	document.topfameFrom1.serviceId.value=sid;
	document.topfameFrom1.dse_sessionId.value=dse_sessionId;
	document.topfameFrom1.submit();
	//setTimeout("goggogo()",1000);
}

function goggogo(){
	//提交隐藏的流程
	document.topfameFrom1.submit();
	
}
/**
 * 当前窗口中打开
 * 目前仅为登录、登出成功之后页面刷新使用
 * 注意：网银专用
 * @param sid
 * @param transData
 * @param dse_sessionId
 */
function perbankAtomLocationBW(sid,transData,dse_sessionId,zoneNo,oratype){
	//自动加载不启动清除session
	try{
		isAutoLoad=true;
	}catch(e){}
	try{
	UserBrowseSidStack.clearUserBrowseSidStack();//框架外先清空栈
	UserBrowseSidStack.setBrowseSid(sid,transData);//记录原子服务到返回栈中
	}catch(e){}
   var url  =window.top.location.href;
   var mn='guide_logon';
   var co=document.cookie;
   var b=co.indexOf(mn);
	if ( b < 0 && sid == 'PBL201700' && oratype == '1') {
		url="/icbc/newenperbank/perbank3/frame/frame_guide.jsp?dse_sessionId="+dse_sessionId;
		window.location.href=url;
		return;
	}
		
	if(url.indexOf("?")>-1){
		url=url.substr(0,url.indexOf("?"));
	}
	var serviceIdInto="";
	if(sid.indexOf(">")>0){
		serviceIdInto=sid;
		sid=serviceIdInto.substring(0,sid.indexOf(">"));
		
	}
	url="/icbc/newenperbank/perbank3/frame/frame_index.jsp";
	/*if(serviceIdInto.indexOf(">")>0){
		url = url + "?"+"serviceId="+sid+"&transData="+transData+"&dse_sessionId="+dse_sessionId+"&serviceIdInto="+serviceIdInto;
	}else{
		url = url + "?"+"serviceId="+sid+"&transData="+transData+"&dse_sessionId="+dse_sessionId;
	}
	window.location.href=url;
	*/
	
	//隐藏地址
	if(serviceIdInto.indexOf(">")>0){
		document.topfameFrom.serviceIdInto.value=serviceIdInto;
	}else{
		document.topfameFrom.serviceIdInto.value="";
	}
	//setDisAd(sid,dse_sessionId);
	document.topfameFrom.action=url;
	if(''!=zoneNo && null !=zoneNo){
	document.topfameFrom.zoneNo.value=zoneNo;
	}
	document.topfameFrom.target="";
	document.topfameFrom.transData.value=transData;
	document.topfameFrom.serviceId.value=sid;
	document.topfameFrom.dse_sessionId.value=dse_sessionId;
	document.topfameFrom.submit();
	
	
}

/**
 * 
 * @param sid
 * @param dse_sessionId
 */
function setDisAd(sid,dse_sessionId){
	//首页才会显示
	if("PBL200202"==sid){
		jQuery("#index_dd").show();
		jQuery("#atomService_content").hide();
		try{window.scroll(0, 0);}catch(e){}
		try{changeTzlcRight();pdzuiquan();}catch(e){}
	}else{
		jQuery(".choose-1").hide();
		jQuery(".choose-pop").hide();
		jQuery(".choose-box .zuiai").removeClass("active");
		jQuery(".choose-box .quanbu").removeClass("active");
		jQuery("#index_dd").hide();
		jQuery("#atomService_content").show();
		var pcfMinHeight = $(window).height()-285;//390为页面不变区域总高度
		if($("#perbank-content-frame").height()<pcfMinHeight){//设最小高度
			$("#perbank-content-frame").height(pcfMinHeight);
		}
		if(sid!="PBL201700"){//当前不是我的网银首页，隐藏踩你喜欢
			jQuery("#guessyoulike_div_outer").hide();
			jQuery("#atomService_content").css("margin-bottom","60px");//踩你喜欢隐藏时，页中与页脚相距60px
		}else{
			jQuery("#guessyoulike_div_outer").show();
			jQuery("#atomService_content").css("margin-bottom","0px");//踩你喜欢隐藏时，页中与猜你喜欢相距0px
			try{changeTzlcRight();}catch(e){}//投资理财样式重新计算
		}
	}
}
	




function perbankFreshFWFrameHeight(h){
	if(h>500){
		$("#ICBC_window_flot_frame").height(500);
	}else{
		$("#ICBC_window_flot_frame").height(h);
	}
	
}

function backToFeeHome (){
	window.location.href = realContextPath + "/fee/feeHome." + webType;
}

function feeFreshFrameHeight(h){
	$("#fee-content-frame").height(h);
}

function perbankRelocateByIdorUrl(serviceId,url){//自定义url，url地址可以使用getParams函数获取，参数请自行拼接serviceId和f1、f2等
	if(typeof url !="undefined"&&url !=""){
		try{
			window.top.document.location.href = url;
		}catch(e){}
	}else{
		var targetLocation = "";
		if(typeof serviceId !="undefined" && serviceId !=""){
			var upcaseName  = serviceId.toUpperCase();
			switch(upcaseName){
			case "PBL200404" :
				targetLocation = mallHttpsPath +"/member/memberFinance.jhtml?menuType=6_1&column=1";  
				break;
			case "PBL200304" :
				targetLocation = mallHttpsPath +"/member/memberFinance.jhtml?menuType=6_1&column=2";
				break;
			case "PBL200504" :
				targetLocation = mallHttpsPath + "/member/memberFinance.jhtml?menuType=6_1&column=3";
				break;
			}
		}
		if(targetLocation!=""){
			try{
				window.top.document.location.href = targetLocation;
			}catch(e){}
		}
	}
}
//返回父窗口的参数
function getPerbankParams(){
	parentMessage.type="param";
	parentMessage.content.perbankPath = mallHttpsPath+"/ebankfin/perbank.jhtml";
	this.postMessage(JSON.stringify(parentMessage),"*");
	return parentMessage;
}

jQuery(document).ready(function(){
	//$('#myModal').jqm({modal:true,setWh:true,width:100,height:500 });
	//$(this).bind("message",messageHandler);
});


/**
 * 统计菜单的点击事件
 * @param serviceid
 */
function logPV(serviceid,Prodid,ProdName,flag){
	addPvValue(['pvModelElementId','MainMenu']);//
	addPvValue(['serviceid',serviceid]);//记录原子服务id
	addPvValue(['uip',clientIP]);//记录访客ip
	addPvValue(['areacode',zoneNo]);//记录访客ip对应行政区划代码
	addPvValue(['requestChannel','302']);//记录交易渠道
	addPvValue(['cis',mainCIS]);//记录客户信息号
	if(typeof Prodid !="undefined"&& Prodid !=""){
		addPvValue(['prodcode',Prodid]);//记录产品代码
	}
	if(typeof ProdName !="undefined"&& ProdName !=""){
		addPvValue(['prodname',ProdName]);//记录产品名称
	}
	if(typeof flag !="undefined"&& flag !="" && flag =="1"){
		addPvValue(['srcpageno','20000000']);//来源页面编码
	}
	try{ar_main();}catch(e){}
	addPvValue(['pvModelElementId','']);//清空
	addPvValue(['serviceid','']);//清空
	addPvValue(['uip','']);//清空
	addPvValue(['areacode','']);//清空
	addPvValue(['requestChannel','']);//清空
	addPvValue(['prodcode','']);//清空
	addPvValue(['prodname','']);//清空
	addPvValue(['cis','']);//
	addPvValue(['srcpageno','']);//
	
}
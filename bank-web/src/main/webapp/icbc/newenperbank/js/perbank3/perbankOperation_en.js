
/**###############################ԭ�ӷ����������Ҫʹ�õķ���#############################*/
/**
 * ���������Ŀ�ܷ�ʽ
 * ע�⣺������e��������ʹ�õķ�������������޸ķ���ǩ��
 * 
 */

/**
 * 
 * @param event
 */
function messageHandler(event){
	var msg = JSON.parse(event.data);
	var a =functionList[msg.functionName]; 
	if(typeof a =="function"){//�������ж�		
		a.call(this,msg.functionParam);
	}
}

//������ش������Ķ���
var parentMessage = {
		type:"",
		content:{}
};

//�������б�
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
 * ����perbank-content-frame�߶Ȳ�����563������ҳͷ��ҳβ��768��
 * @param h
 * @param crrent
 */
function perbankFreshFrameHeight(h,crrent){
	var pcfMinHeight = $(window).height()-285;//390Ϊҳ�治�������ܸ߶�
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
 * �����¼ҳ��
 * ע�⣺��e��������ʹ��
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
 * @param callType �ֵ䣺0����ҳ������iframeִ�� 1:�ڵ������iframeִ�С�Ĭ�ϣ�0
 */
function callIframeMethod(funcName, callType){
	var frameName = CrossMsg.contentFrameName;
	if(callType!=undefined&&callType=="1")
		frameName = CrossMsg.popFrameName;
	CrossDomain.callIframe(frameName,{functionName:funcName,functionParam:[""]},CrossMsg.iframeDomain);
}

/**###############################ԭ�ӷ����������Ҫʹ�õķ���#############################*/


function perbankOpenWindow(obj){
	showAdDiv(obj);//��login_flot.jsp�ж���
}

function perbankCloseWindow(){
	hideLogonDiv();
}

function perbankAtomLocation(sid,transData,sessionIdpara){
	var ssid = sessionIdpara||dse_sessionId;
	if(sid==""){
		alert("����serviceidΪ�գ������ԭ�ӷ���");
		
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
 * ���´��� 
 * ע�⣺����ר��
 * @param sid
 * @param transData
 * @param dse_sessionId

function perbankAtomLocationNW(sid,transData,dse_sessionId){
	//�ж��Ƿ���Ҫ��¼�������Ҫ��¼���ж�
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
 * ��url 
 * 3-ԭ����
 * 1-�´���
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
 * ��perbank-content-frame�д򿪴���
 * ע�⣺����ר��
 * @param sid
 * @param transData
 * @param dse_sessionId
 */
function perbankAtomLocationTW(sid,transData1,sessionIdpara,loginws,oratype){
	try{frames['perbank-content-frame'].AtomSerivceShowLoading();}catch(e){}
	jQuery("#menulist").hide();//���ظ�����ʾ
	//������ڻ���ҳ�������ҳ
	/*if("PBL100107"==sid){
		sid="PBL200202";
	}*/
	try{
	UserBrowseSidStack.clearUserBrowseSidStack();//����������ջ
	UserBrowseSidStack.setBrowseSid(sid,transData1);//��¼ԭ�ӷ��񵽷���ջ��
	}catch(e){}
	var serviceIdInto=sid;
	if(sid.indexOf(">")>0){
		serviceIdInto=sid;
		sid=serviceIdInto.substring(0,sid.indexOf(">"));
		
	}
	try{
	if(loctionmapList.getLoctionmapListourl(sid).addurl_type=="1"){
		if(loctionmapList.getLoctionmapListourl(sid).menu_type=="1"){//�����˵�
			var url=loctionmapList.getLoctionmapListourl(sid).addurl;
			url=url+"?dse_sessionId="+Perbank3PubData.dse_sessionId;
			//�¿�����ֻ֧��һ������
			if(transData1 != null && transData1!=""){
				var transData1Array = transData1.split("\|");
				url=url+"&"+loctionmapList.getLoctionmapListourl(sid).field1+"="+encodeURIComponent(transData1Array[0]);
				if(transData1Array.length>1){
					url+="&"+loctionmapList.getLoctionmapListourl(sid).field2+"="+encodeURIComponent(transData1Array[1]);
				}
			}
			window.open(url);//����·��
			
		}else{
			//�����˵�
			//δ��¼
			if(dse_sessionId==null||dse_sessionId==""){
				var url=loctionmapList.getLoctionmapListourl(sid).url_nosession;
				//�¿�����ֻ֧��һ������
				if(transData1 != null && transData1!=""){
					var transData1Array = transData1.split("\|");
					url=url+"?"+loctionmapList.getLoctionmapListourl(sid).field1+"="+encodeURIComponent(transData1Array[0]);
					if(transData1Array.length>1){//������תe�ɷѹؼ��ֲ���encodeURIComponent
						url+="&"+loctionmapList.getLoctionmapListourl(sid).field2+"="+transData1Array[1];
					}
				}
				window.open(url);//����·��
			}else{
				//�ѵ�¼
				var url=loctionmapList.getLoctionmapListourl(sid).url;
				url=url+"?dse_sessionId="+dse_sessionId;
				//�¿�����ֻ֧��һ������
				if(transData1 != null && transData1!=""){
					var transData1Array = transData1.split("\|");
					url=url+"&"+loctionmapList.getLoctionmapListourl(sid).field1+"="+encodeURIComponent(transData1Array[0]);
					if(transData1Array.length>1){//������תe�ɷѹؼ��ֲ���encodeURIComponent
						url+="&"+loctionmapList.getLoctionmapListourl(sid).field2+"="+transData1Array[1];
					}
				}
				window.open(url);//����·��
			}
			
		}
		try{frames['perbank-content-frame'].AtomSerivceHideLoading();}catch(e){}
		return ;
	}
	}catch(e){}

	var ssid = sessionIdpara||dse_sessionId;
	
	//ǿ�Ƶ�¼
	if(loginws){
		AtomSerivceSubmitPre(serviceIdInto,transData1,'',"1",loginws);
		return ;
	}
	
	//�ж��Ƿ���Ҫ��¼�������Ҫ��¼���ж�
	if(!AtomSerivceSubmitPre(serviceIdInto,transData1,ssid,"1")){
		return ;
	}
	
	//�жϵ�ǰԭ�ӷ����������ҵ��������ҵ�ǰҳ�治���ҵ�����ʱˢ������ҳ��
	//�жϵ�ǰԭ�ӷ����������ҵ��������ҵ�ǰҳ�����ҵ�����ʱˢ������ҳ��
	var serviceIdFirst=serviceId;
	if(serviceId.indexOf(">")>0){
		serviceIdFirst=serviceId.substring(0,serviceId.indexOf(">"));
	}
	if((loctionmapList.isMyBank(sid) && !loctionmapList.isMyBank(serviceIdFirst))||(!loctionmapList.isMyBank(sid) && loctionmapList.isMyBank(serviceIdFirst))){
		perbankAtomLocationBW(serviceIdInto,transData1,ssid,'',oratype);
		return;
	}
	
	//���һ�ε�� ������˳���������¼Ϊ��ҳ�����������¼���彻��ҳ��
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
	//��ҳ�Ż���ʾ
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
 * ��ICBC_window_flot_frame���������д򿪴���
 * ע�⣺����ר��
 * @param sid
 * @param transData
 * @param dse_sessionId
 */
function perbankAtomLocationFW(sid,transData,dse_sessionId){
	//��ʾ������ͼwindow_flot.jsp
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
	//�ύ���ص�����
	document.topfameFrom1.submit();
	
}
/**
 * ��ǰ�����д�
 * Ŀǰ��Ϊ��¼���ǳ��ɹ�֮��ҳ��ˢ��ʹ��
 * ע�⣺����ר��
 * @param sid
 * @param transData
 * @param dse_sessionId
 */
function perbankAtomLocationBW(sid,transData,dse_sessionId,zoneNo,oratype){
	//�Զ����ز��������session
	try{
		isAutoLoad=true;
	}catch(e){}
	try{
	UserBrowseSidStack.clearUserBrowseSidStack();//����������ջ
	UserBrowseSidStack.setBrowseSid(sid,transData);//��¼ԭ�ӷ��񵽷���ջ��
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
	
	//���ص�ַ
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
	//��ҳ�Ż���ʾ
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
		var pcfMinHeight = $(window).height()-285;//390Ϊҳ�治�������ܸ߶�
		if($("#perbank-content-frame").height()<pcfMinHeight){//����С�߶�
			$("#perbank-content-frame").height(pcfMinHeight);
		}
		if(sid!="PBL201700"){//��ǰ�����ҵ�������ҳ�����ز���ϲ��
			jQuery("#guessyoulike_div_outer").hide();
			jQuery("#atomService_content").css("margin-bottom","60px");//����ϲ������ʱ��ҳ����ҳ�����60px
		}else{
			jQuery("#guessyoulike_div_outer").show();
			jQuery("#atomService_content").css("margin-bottom","0px");//����ϲ������ʱ��ҳ�������ϲ�����0px
			try{changeTzlcRight();}catch(e){}//Ͷ�������ʽ���¼���
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

function perbankRelocateByIdorUrl(serviceId,url){//�Զ���url��url��ַ����ʹ��getParams������ȡ������������ƴ��serviceId��f1��f2��
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
//���ظ����ڵĲ���
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
 * ͳ�Ʋ˵��ĵ���¼�
 * @param serviceid
 */
function logPV(serviceid,Prodid,ProdName,flag){
	addPvValue(['pvModelElementId','MainMenu']);//
	addPvValue(['serviceid',serviceid]);//��¼ԭ�ӷ���id
	addPvValue(['uip',clientIP]);//��¼�ÿ�ip
	addPvValue(['areacode',zoneNo]);//��¼�ÿ�ip��Ӧ������������
	addPvValue(['requestChannel','302']);//��¼��������
	addPvValue(['cis',mainCIS]);//��¼�ͻ���Ϣ��
	if(typeof Prodid !="undefined"&& Prodid !=""){
		addPvValue(['prodcode',Prodid]);//��¼��Ʒ����
	}
	if(typeof ProdName !="undefined"&& ProdName !=""){
		addPvValue(['prodname',ProdName]);//��¼��Ʒ����
	}
	if(typeof flag !="undefined"&& flag !="" && flag =="1"){
		addPvValue(['srcpageno','20000000']);//��Դҳ�����
	}
	try{ar_main();}catch(e){}
	addPvValue(['pvModelElementId','']);//���
	addPvValue(['serviceid','']);//���
	addPvValue(['uip','']);//���
	addPvValue(['areacode','']);//���
	addPvValue(['requestChannel','']);//���
	addPvValue(['prodcode','']);//���
	addPvValue(['prodname','']);//���
	addPvValue(['cis','']);//
	addPvValue(['srcpageno','']);//
	
}
/*licaitouzi-block广告宽度*/
$(function(){
	changeTzlcRight();
});
$(window).resize(function () { 
	changeTzlcRight();
});	

function changeTzlcRight(){
	var width=$(window).width();
	var oWidth=$(".licaitouzi-top-l").width();
	var Right=oWidth-(width-1000)/2;
	if(width>1000){
		$(".licaitouzi-top-l .licaitouzi-top-l-box").css("right",Right-600);
		}
}

//全选下拉菜单	scroll出现隐藏
$(function(){
	$(window).scroll(function(){
		if($(window).scrollTop()>80){
		    //最爱 全部隐藏
			$(".choose-box a").removeClass("active");
			$(".choose-pop").hide();
		$(".choose-box").mouseleave(function(){
			if($(window).scrollTop()>80){
			$(".choose-box a").removeClass("active");
		$(".choose-pop").hide();
			}else{
			}
		})	
		}/*else{
	
			if($("#atomService_content").is(":hidden")){
				pdzuiquan();
			}else{
				$(".choose-box .zuiai").removeClass("active");
				$(".choose-box .quanbu").removeClass("active");
				$(".choose-1").hide();
				$(".choose-pop").hide();
				$(".choose-2").hide();
			}
			}*/
		});
	})	
//非首页的时候隐藏 最爱和全部
$(function(){
	$("#choose-box").hover(function(){
		try{jQuery(".choose-box").focus();}catch(e){};//去除页面输入框的焦点
	},function(){
			$(".choose-box .zuiai").removeClass("active");
			$(".choose-box .quanbu").removeClass("active");
			$(".choose-1").hide();
			$(".choose-pop").hide();
			$(".choose-2").hide();
		 });
});
//首页时候 判读显示最爱还是全部
var valuenull="0";
/*function pdzuiquan(){
	var haveCookie=false;
	var arrStr =document.cookie;
	if(arrStr.indexOf("cookieCy")>0){
			haveCookie=true;
	}
	if(valuenull=="1"){
		xsqb();
	}
	else if(haveCookie){
		valuenull="0";
	$(".choose-box .zuiai").addClass("active");
	$(".choose-1").show();
	$(".choose-pop").show();
	$(".choose-box .quanbu").removeClass("active");
	$(".choose-2").hide();
	}else{
		
		if(localMapList_CommandStr==""||localMapList_CommandStr==null){
			valuenull="1";
		xsqb();
		}else{
			valuenull="0";
			$(".choose-pop").show();
			$(".choose-box .quanbu").removeClass("active");
			$(".choose-2").hide();
			//$(".choose-quanbu").show();
			$(".choose-box .zuiai").addClass("active");
			$(".choose-1").show();	
		}
	}
}*/
//客户设置最爱为空显示全部
/*function xsqb(){
	valuenull="1";
	$(".choose-box .zuiai").removeClass("active");
	$(".choose-1").hide();
	$(".choose-pop").show();
	$(".choose-box .quanbu").addClass("active");
	$(".choose-2").show();
}*/
//客户设置最爱为空显示全部登陆后切最爱为空
/*function xsqb1(){
	valuenull="1";
	$(".choose-box .zuiai").removeClass("active");
	$(".choose-1").hide();
	$(".choose-pop").show();
	$(".choose-box .quanbu").addClass("active");
	$(".choose-2").show();
}*/
/*function xsqb2(){
	valuenull="0";
	$(".choose-pop").show();
	$(".choose-box .quanbu").removeClass("active");
	$(".choose-2").hide();
	$(".choose-box .zuiai").addClass("active");
	$(".choose-1").show();	
}*/
/*理财投资*/		
$(function(){
	$(".licaitouzi-list-ul li").click(function(){
		var n=$(this).index();
		$(this).addClass("active");
		$(this).siblings().removeClass("active");
		$(".licaitouzi-centent-item-box").eq(n).addClass("active");
		$(".licaitouzi-centent-item-box").eq(n).siblings().removeClass("active");
		})
	})	
var isGetFootNow = false;	
//获取足迹 
function getFootPrint(SessionId_Ajax){
	if(isGetFootNow){return;}
	isGetFootNow = true;
	var sendParam = {};
	sendParam["SessionId"]=SessionId_Ajax;
    sendParam["tranCode"]="A00404";
	    EBDataStruct.sendAjax({
	    						data: sendParam,
	    						dataType: "json",
	    						url: "AsynGetDataServlet",
	    						failCallBack: function(result){getFootPrintError(result); },
	    						successCallBack: function(kc){getFootPrintSuccsed(kc,SessionId_Ajax);},
	    						isDisplay: false,
	    						displayArea: "pselected"
	    					});	
}
function getFootPrintError(result){
	$(".footprint-content").html("<div class=\"footprint-no-tips\">没有获取到您的浏览信息！</div>");
	isGetFootNow = false;
}
function getFootPrintSuccsed(kc,SessionId_Ajax){
	var TranErrorCode = kc.getValueAt("TranErrorCode");
	var TranErrorDisplayMsg = kc.getValueAt("TranErrorDisplayMsg");
	if(TranErrorCode=='0'){
		var namesStr = kc.getValueAt("namesStr");
		var linksStr = kc.getValueAt("linksStr");
		var linkNameStr = kc.getValueAt("linkNameStr");
		var footPrinterHtml = "";//alert(namesStr);alert(linksStr);
		if(namesStr!="" && linksStr!=""){
			var namesStrArray = namesStr.split("|");
			var linksStrArray = linksStr.split("|");
			var linkNameArray = linkNameStr.split("|");
			var footLen = namesStrArray.length;
			var nameTitle = "";
			for(var i=0;i<footLen;i++){
				//如果有名称相同的加上title,提示上级栏目名称			
				var nameTest=new RegExp(","+namesStrArray[footLen-1-i]+",","g");
				var mAt = (","+namesStr.replace(/(\|)/g, ",,")+",").match(nameTest);
				if(mAt.length>1){
					nameTitle = "title='"+linkNameArray[footLen-1-i]+"'";
				}else{
					nameTitle = "";
				}
				if(i%2==0){
					footPrinterHtml = "<div class=\"footprint-rightfoot-out\"><div class=\"footprint-rightfoot-bg\" "+nameTitle+" onclick=\"perbankAtomLocationTW('"+linksStrArray[footLen-1-i]+"','','"+SessionId_Ajax+"');\">"+namesStrArray[footLen-1-i]+"</div></div>"+footPrinterHtml;
				}else{
					footPrinterHtml = "<div class=\"footprint-leftfoot-out\"><div class=\"footprint-leftfoot-bg\" "+nameTitle+" onclick=\"perbankAtomLocationTW('"+linksStrArray[footLen-1-i]+"','','"+SessionId_Ajax+"');\">"+namesStrArray[footLen-1-i]+"</div></div>"+footPrinterHtml;
				}
			}
		}else{
			footPrinterHtml = "<div class=\"footprint-no-tips\">您暂时没有浏览信息！</div>";
		}
		$(".footprint-content").html(footPrinterHtml);
	}else{
		$(".footprint-content").html("<div class=\"footprint-no-tips\">没有获取到您的浏览信息！</div>");
		$("#getFootInfoError").val(TranErrorCode+"--"+TranErrorDisplayMsg);
	}
	isGetFootNow = false;
}

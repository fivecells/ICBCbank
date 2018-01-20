/**
 *jQuery选项卡插件（Tab）
 *@param tabNameClass：选项卡频道class名
 *@param tabConClass:选项卡频道内容class名
 *@param tabNameCur:当前选项卡频道class名
 *@param eventMod:绑定事件类型
 *@param execFn:切换执行的自定义函数
 */
$.fn.MTab=function(options){
	var settings={
		tabNameClass:'tabname',
		tabConClass:'tabcon',
		tabNameCur:'current',
		eventMod:'click',
		tabItemElmt:'li',
		execFn:null
	 }
	options&&$.extend(settings,options);
	var _this=$(this).selector;
	var _tabName=_this+'> .'+settings.tabNameClass;
	var _tabCon=_this+' .'+settings.tabConClass;
	var idx=$(_tabName+' .'+settings.tabNameCur).index(_tabName+' '+settings.tabItemElmt);
	$(_tabCon).eq(idx).show();
	$(_tabName+' '+settings.tabItemElmt).live(settings.eventMod,function(){
	var idx=$(this).index(_tabName+' '+settings.tabItemElmt);
	$(_tabName+' '+settings.tabItemElmt).removeClass(settings.tabNameCur);	
	$(this).addClass(settings.tabNameCur);	
	$(_tabCon).stop().hide();
	$(_tabCon).eq(idx).stop().show();	
	if(settings.execFn)settings.execFn(idx);
	});
}

//utils
/**
 * 
 */
var Utils = {
	
	setCookie : function(cookieName, cookieValue, date, domain) {
		var now = new Date();
		var expire = new Date();
		if (date == null || date == 0) {
			date = 1;
		}
		expire.setTime(now.getTime() + 3600000 * 24 * date);
		document.cookie = cookieName + '=' + encodeURI(cookieValue, "utf-8")
				+ ';expires=' + expire.toGMTString() + ';domain=' + domain
				+ ';path=/';
	},
	getCookie : function(cookieName) {
		var prefix = cookieName + "=";
		var start = document.cookie.indexOf(prefix);

		if (start == -1) {
			return null;
		}

		var end = document.cookie.indexOf(";", start + prefix.length);
		if (end == -1) {
			end = document.cookie.length;
		}

		var value = document.cookie.substring(start + prefix.length, end);
		return decodeURIComponent(value);
	},
	clearCookie : function(cookieName, domain) {
		if (Utils.getCookie(cookieName)) {
			var exp = new Date();
			exp.setTime(exp.getTime() - 3600000 * 24 * 1);
			document.cookie = cookieName + '=' + cookieName + '; domain='
					+ domain + '; expires=' + exp.toGMTString() + ';path=/';
		}
	}
};

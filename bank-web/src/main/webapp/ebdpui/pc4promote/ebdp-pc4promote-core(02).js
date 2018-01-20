//-----------------------------------定义Util类-------------------------------------------//
/**
 * 基础工具类，定义前端构件中常用的方法
 */
function Util() {
}
/**
 * 检测当前的操作系统是否为Windows
 */
Util.prototype.isWin = function() {
	var ua = navigator.userAgent;
	if (ua.indexOf('Window')>-1) {
		return true;
	}
	return false;
};
 
/**
 * 检测当前操作系统是否为Mac
 */
Util.prototype.isMac = function() {
	var ua = navigator.userAgent;
	if (ua.indexOf('Mac')>-1) {
		return true;
	}
	return false;
};

/**
 * 检测当前浏览器是否为iPad
 */
Util.prototype.isIPad = function() {
	var ua = navigator.userAgent;
	if (ua.indexOf('iPad')>-1 && ua.indexOf('WebKit')>-1) {
		return true;
	}
	return false;
};

/**
 * 判断是不是iPad下的iOS6
 */
Util.prototype.isIOS6 = function(){
	var ua = navigator.userAgent;
	if(ua.indexOf('iPad')>-1 && ua.indexOf('WebKit')>-1 && ua.indexOf('OS 6_0')>-1){
		return true;
	}
	return false;
};

/**
 * 检测当前浏览器是否为IE
 */
Util.prototype.isIE = function() {
	var ua = navigator.userAgent;
	if (ua.indexOf('MSIE')>-1) {
		return true;
	}
	//ie11判断，如果userAgent中不含有msie，则判断是否有ActiveXObject对象
	if(!!window.ActiveXObject || "ActiveXObject" in window) {
		return true;
	}
	return false;
}

/**
 * 检测当前页面是否是诡异模式
 */
Util.prototype.isQuirkMode = function() {
	return document.compatMode==="BackCompat";
}

/**
 * 检测当前浏览器是否为Firefox
 */
Util.prototype.isFireFox = function() {
	var ua = navigator.userAgent;
	if (ua.indexOf('Gecko')>-1 && ua.indexOf('Firefox')>-1) {
		return true;
	}
	return false;
}

/**
 * 检测当前浏览器是否为chrome浏览器
 * @returns {Boolean}
 * added by kfzx-zengwh 2011-11-23
 */
Util.prototype.isChrome = function(){
	var ua = navigator.userAgent.toLowerCase();
	if ( ua.indexOf('chrome')>-1 && ua.indexOf('webkit') > -1) {
		return true;
	}
	return false;	
};

/**
 * 检测当前浏览器是否为android平台
 * @returns {Boolean}
 * added by kfzx-zengwh 2011-11-23
 */
Util.prototype.isAndroid = function(){
	var ua = navigator.userAgent.toLowerCase();
	if ( ua.indexOf('android')>-1 && ua.indexOf('webkit') > -1) {
		return true;
	}
	return false;	
};

/**
 * 检测当前IE浏览器的版本，同时能区分IE8下的三种浏览器模式
 * return {}
 * added by kfzx-zhangyt 2013-05-28
 * */
Util.prototype.getIEVersionAndMode = function(){
	var IEVersion = {};
	if(navigator.userAgent.indexOf("MSIE 6") > -1){
		IEVersion.version = "6";
		IEVersion.mode = "";
	}else if(navigator.userAgent.indexOf("MSIE 7") > -1){
		IEVersion.version = "7";
		IEVersion.mode = "";
	}else if(navigator.userAgent.indexOf("MSIE 8") > -1){
		IEVersion.version = "8";
		if(document.documentMode == 5){
			IEVersion.mode = "5";
		}
		if(document.documentMode == 7){
			IEVersion.mode = "7";
		}
		if(document.documentMode == 8){
			IEVersion.mode = "8";
		}
	}
	return IEVersion;
};

/**
 * 为事件Event增加手势相关常量
 */
Util.prototype.NO_SLIDE = 0;
Util.prototype.LEFT_SLIDE = 1;
Util.prototype.RIGHT_SLIDE = 2;
Util.prototype.UP_SLIDE = 3;
Util.prototype.DOWN_SLIDE = 4;

/**
 * 获取事件坐标
 * @param {Event} e 滑动事件
 */
Util.prototype.getPosition = function(e) {
	if (e.changedTouches == undefined)
		return {x: e.pageX, y: e.pageY};
	else
		return {x: e.changedTouches[0].pageX, y: e.changedTouches[0].pageY};
};

/**
 * 水平滑动距离（向右为正，向左为负）
 * @param {Event} e 滑动开始事件
 */
Util.prototype.getDeltaX = function(p1, p2) {
	return p2.x - p1.x;
};

/**
 * 竖直滑动距离（向上为正，向下为负）
 * @param {Event} e 滑动开始事件
 */
Util.prototype.getDeltaY = function(p1, p2) {
	return p2.y - p1.y;
};

/**
 * 滑动方向
 * @param {Event} e 滑动开始事件
 */
Util.prototype.getSlideDirection = function(p1, p2) {
	var deltaX = Util.prototype.getDeltaX(p1, p2);
	var deltaY = Util.prototype.getDeltaY(p1, p2);
	if (Math.abs(deltaX) > Math.abs(deltaY)){
		if (deltaX > 0)
			return Util.prototype.RIGHT_SLIDE;
		else
			return Util.prototype.LEFT_SLIDE;
	}else if (Math.abs(deltaX) < Math.abs(deltaY)){
		if (deltaY > 0)
			return Util.prototype.UP_SLIDE;
		else
			return Util.prototype.DOWN_SLIDE;
	}
	return Util.prototype.NO_SLIDE;
};


/**
 * 由象素值得到实际数字
 */
Util.prototype.px2num = function(strNum){
	 if (strNum == null || strNum == undefined)
		 return 0;
	return parseInt(strNum.substr(0, strNum.length-2));
};

/**
 * 拷贝数组
 */
Util.prototype.copyArray = function(source, target){
	for (var i=0; i<source.length; i++){
		target[i] = source[i];
	}
};

/**
 * 查找元素element对应的event事件处理器对象
 */
Util.prototype.findJQueryBindFunc = function(element, event) {
	var funcJQueryBind = [];
	if (jQuery) {
		if (element==null) {
			return null;
		}
		var eventsJQueryBind = jQuery.data(element, "events");
		if (eventsJQueryBind) {
			eventsJQueryBind = eventsJQueryBind[event];
			if (eventsJQueryBind) {
				jQuery.each(eventsJQueryBind,function(i,n){
					funcJQueryBind.push(n.handler);
				});
			}
		}
	}
	if (funcJQueryBind.length==0) {
		return null;
	}
	return funcJQueryBind;
};

/**
 * 将元素from对应的所有事件处理器对象复制到to
 */
Util.prototype.copyJQueryBindFunc = function(from, to) {
	if (jQuery) {
		if (from==null || to==null) {
			return;
		}
		var jTo = jQuery(to);
		var eventsJQueryBind = jQuery.data(from, "events");
		if (eventsJQueryBind) {
			jQuery.each(eventsJQueryBind, function (name, handlers){
				jQuery.each(handlers, function (i, handler){
					jTo.bind(name, handler.handler);
				});
			});
		}
	}
};

/**
 * 获取客户端可见区域高度
 */
Util.prototype.getClientHeight = function(){
    var clientHeight=0;
    if(document.body.clientHeight&&document.documentElement.clientHeight)
    {
        clientHeight = (document.body.clientHeight<document.documentElement.clientHeight)?document.body.clientHeight:document.documentElement.clientHeight;        
    }
    else
    {
        clientHeight = (document.body.clientHeight>document.documentElement.clientHeight)?document.body.clientHeight:document.documentElement.clientHeight;    
    }
    return clientHeight;
};

/**
 * 获取客户端可见区域宽度
 */
Util.prototype.getClientWidth = function(){
    var clientWidth=0;
    if(document.body.clientWidth&&document.documentElement.clientWidth)
    {
    	clientWidth = (document.body.clientWidth<document.documentElement.clientWidth)?document.body.clientWidth:document.documentElement.clientWidth;        
    }
    else
    {
    	clientWidth = (document.body.clientWidth>document.documentElement.clientWidth)?document.body.clientWidth:document.documentElement.clientWidth;    
    }
    return clientWidth;
};

/**
 * 判断当前使用iOS版本是否为3.x
 * @return
 */
Util.prototype.isOS3 = function(){
	var ua = navigator.userAgent;
	if (ua.indexOf("CPU OS ")>-1 && ua.indexOf("like")>-1) {
		var version = ua.substring(ua.indexOf("CPU OS ")+7,ua.indexOf("like"));
		if (version.substr(0,1)=='3') {
			return true;
		} else {
			return false;
		}
	} else {
		return false;
	}	
};
/**
 * 判断当前使用iOS版本是否为4.x
 * @return
 */
Util.prototype.isOS4 = function(){
	var ua = navigator.userAgent;
	if (ua.indexOf("CPU OS ")>-1 && ua.indexOf("like")>-1) {
		var version = ua.substring(ua.indexOf("CPU OS ")+7,ua.indexOf("like"));
		if (version.substr(0,1)=='4') {
			return true;
		} else {
			return false;
		}
	} else {
		return false;
	}	
};

/**
 * 获取格日期字符yyyymmdd
 * @param		{Date}myDate
 * @returns		{String}
 */
Util.prototype.getFormatDate = function(myDate) {
	var year = myDate.getFullYear();
	var month = myDate.getMonth()+1;
	var day = myDate.getDate();
	return ""+year+(month<10?("0"+month):""+month)+(day<10?("0"+day):""+day);
};

/**
 * 获得上个月的最后一天
 * @param baseDate  参照日期 日期型
 */
Util.prototype.getPreMonthLastDay = function(baseDate) {
	var now = new Date(Date.UTC(baseDate.getFullYear(),baseDate.getMonth(),1));
	now.setMonth(now.getMonth()-parseInt(1,10));
	now.setDate(32 - new Date(now.getFullYear(),now.getMonth(),32).getDate());
	return now;
};

/**
 * 获取计算后的日期字符串
 * @param	{String}referenceDate	计算基准日期
 * @param	{String}computeStr		计算规则
 * @returns {String}
 */
Util.prototype.getComputeDate = function(referenceDate,computeStr) {
	var year = referenceDate.substring(0,4);
	var month = referenceDate.substring(4,6);
	var day = referenceDate.substring(6);
	var baseDate = new Date(year, month-1, day);
	var now = new Date(year, month-1, day);
	now.setFullYear(year);
	now.setMonth(month-1);
	now.setDate(day);
	var str = computeStr.split("|");
	//str[0]:0.年，1.月，2.月，3.日
	//str[1]:数量值
	if("0"==str[0]){
		now.setFullYear(now.getFullYear()+parseInt(str[1],10));
		if(now.getDate() != baseDate.getDate()){
			//如果日变了，说明年变化导致日溢出了，比如偏移后的年份没有2.29
			now = Util.prototype.getPreMonthLastDay(now);
		}
	}else if("1"==str[0]){
		now.setMonth(now.getMonth()+parseInt(str[1],10));
		if(now.getDate() != baseDate.getDate()){
			//如果日变了，说明年变化导致日溢出了，比如偏移后的年份没有2.29
			now = Util.prototype.getPreMonthLastDay(now);
		}
	}else if("2"==str[0]){
		now.setMilliseconds(now.getMilliseconds()+(604800000*parseInt(str[1],10)));
	}else if("3"==str[0]){
		now.setDate(now.getDate()+parseInt(str[1],10));
	}else{
		;
	}
	year = now.getFullYear();
	month = now.getMonth()+1;
	day = now.getDate();
	month = month.toString().length==1?'0'+month:month;
	day = day.toString().length==1?'0'+day:day;
	return ""+year+month+day;
};

/** 
 * 判断是否是数组
 * @param arg
 * @returns {Boolean}
 */
Util.prototype.isArray = function(arg) {
	if(typeof arg == 'object') {
		var criteria = arg.constructor.toString().match(/array/i);
		//所有数组都有一个包含单词array的constructor
		return (criteria != null);
	}
	return false;
};

/**
 * 计算字符串长度（英文占1个字符，中文汉字占2个字符）
 * @param str
 * @returns len
 */
Util.prototype.getStrLen = function(str) { 
	var len = 0;
	for(var i=0;i<str.length;i++) {
		var thisChar = str.charCodeAt(i);
		if(thisChar>127 || thisChar == 94) {
			len += 2;
		}else {
			len ++;
		}
	}
	return len;
};

/**
 * 取前16个字符（英文占1个字符，中文汉字占2个字符）
 * @param str
 * @returns len
 */
Util.prototype.get16Str = function(str) { 
	var len = 0;
	var ret = '';
	for(var i=0;i<str.length;i++) {
		var thisChar = str.charCodeAt(i);
		if(thisChar>127 || thisChar == 94) {
			if(len > 14) {
				break;
			}
			len += 2;
			ret += str.charAt(i);
		}else {   
			if(len > 14) {
				break;
			}
			len ++;
			ret += str.charAt(i);  
		} 
	}
	return ret; 
};

Util.prototype.ISTOUCH = ('ontouchstart' in window);
Util.prototype.START_EVENT = Util.prototype.ISTOUCH ? 'touchstart.ebdp' : 'mousedown.ebdp',
Util.prototype.MOVE_EVENT = Util.prototype.ISTOUCH ? 'touchmove.ebdp' : 'mousemove.ebdp',
Util.prototype.END_EVENT = Util.prototype.ISTOUCH ? 'touchend.ebdp' : 'mouseup.ebdp';

//-----------------------------------定义UI组件基础类-------------------------------------------//
/**
 * 构造函数
 * @param {Object} id	组件id
 */
function BaseUI(id) {
	this.id = id;
	this.visible = true;
	this.enable = true;
	this.value = null;
}

/**
 * 构件添加到指定元素中
 * @param {Sring}elementID	元素id
 */
BaseUI.prototype.rendTo = function(elementID){
	this.getJDom().appendTo(jQuery("#"+elementID));
};

/**
 * 设置当前组件id
 * @param {Object} id
 */
BaseUI.prototype.setId = function(id) {
	this.id = id;
};

/**
 * 查询当前组件id
 */
BaseUI.prototype.getId = function() {
	return this.id;
};

/**
 * 设置当前组件是否可见
 * @param {Object} visible
 */
BaseUI.prototype.setVisible = function(visible) {
	this.visible = visible;
};

/**
 * 获取当前组件是否可见
 */
BaseUI.prototype.isVisible = function() {
	return this.visible;
};

/**
 * 设置组件是否能够点击，设置enable会影响到组件外观，需要在子类中具体进行实现
 * @param {Object} enable
 */
BaseUI.prototype.setEnable = function(enable) {
	this.enable = enable;
};

/**
 * 得到当前组件是否可用
 * @param {Object} enable
 * @return {Boolean}
 */
BaseUI.prototype.isEnable = function(enable) {
	return this.enable;
};

/**
 * 设置组件的值，组件值的设置会影响构件的外观，需要在子类中进行实现。
 * @param {Object} value
 */
BaseUI.prototype.setValue = function(value) {
	this.value = value;
};

/**
 * 得到当前组件的值
 * @return {String}
 */
BaseUI.prototype.getValue = function() {
	return this.value;
};

/**
 * 这是一个虚方法，需要在ui组件中自定义实现
 * @return {String}
 */
BaseUI.prototype.getUIName = function() {
	return "BaseUI";
};

/**
 * 得到多语言的描述
 * @param {Object} key
 * @return {String}
 */
BaseUI.prototype.getUILabel = function(key) {
	return this.language[key];
};

/**
 * 在组件展示状态对其中Html元素进行一些处理
 */
BaseUI.prototype.show = function() {
	
};

/**
 * 方向改变处理方法
 */
BaseUI.prototype.OrientationChanged = function() {
	
};

/**
 * 从格式化日期格式转化成默认格式(yyyyMMdd)
 * @param formatDate  格式化的日期 字符串
 * @param format  格式化
 */
BaseUI.prototype.changeFormatDateToDefaultDate = function(formatDate, format) {
	var yearIndex = format.indexOf("YYYY");
	var monthIndex = format.indexOf("MM");
	var dayIndex = format.indexOf("DD");
	var year = formatDate.substring(yearIndex,yearIndex+4);
	var month = formatDate.substring(monthIndex,monthIndex+2);
	var day = formatDate.substring(dayIndex,dayIndex+2);
	return ""+year+month+day;
}

/**
 * 从默认格式(yyyyMMdd)转化成格式化日期格式
 * @param defaultDate  默认格式日期 yyyymmdd
 * @param format  格式化
 */
BaseUI.prototype.changeDefaultDateToFormatDate = function(defaultDate, format) {
	var year = defaultDate.substring(0,4);
	var month = defaultDate.substring(4,6);
	var day = defaultDate.substring(6);
	return format.replace(/YYYY/,year).replace(/MM/,month).replace(/DD/,day);
}

/**
 * 基础画图组件
 * @author kfzx-lizh01
 * @copyright EBDP SDC ICBC
 * @version 1.0.0 2013-5-13
 */
function BaseChart(id, width, height) {
	this.id = id;
	this.width = width ? width : 500;
	this.height = height ? height : 500;
	this.config = {};
	this.data = {};

	this.paper = null;//画布对象
	this.redrawSet = null;//组件包含图形对象集合，用于重新绘制时清空

	this.create();
}
BaseChart.prototype.create = function() {
	var param = this.id;
	if (param) {
		if (param instanceof BaseChart) {//参数为画图组件对象
			this.paper = param.paper;//使用已存在组件的画布
			this.id = param.id;
		} else if (typeof param == "string") {//参数为页面容器id
			this.paper = new Raphael(param, this.width, this.height);
		}
	}
	if (this.paper) {
		this.redrawSet = this.paper.set();
	}
};
BaseChart.prototype.setData = function(data) {
	for (var p in data) {
		this.data[p] = data[p];
	}
};
BaseChart.prototype.doConfig = function(config) {
	for (var p in config) {
		this.config[p] = config[p];
	}
};
BaseChart.prototype.draw = function() {

};
BaseChart.prototype.redraw = function() {
	this.redrawSet.remove();
	this.redrawSet.clear();
	this.draw();
};
BaseChart.prototype.getContainerPos = function() {
	return jQuery(this.paper.canvas).offset();
};

//-----------------------------------����Util��-------------------------------------------//
/**
 * ���������࣬����ǰ�˹����г��õķ���
 */
function Util() {
}
/**
 * ��⵱ǰ�Ĳ���ϵͳ�Ƿ�ΪWindows
 */
Util.prototype.isWin = function() {
	var ua = navigator.userAgent;
	if (ua.indexOf('Window')>-1) {
		return true;
	}
	return false;
};
 
/**
 * ��⵱ǰ����ϵͳ�Ƿ�ΪMac
 */
Util.prototype.isMac = function() {
	var ua = navigator.userAgent;
	if (ua.indexOf('Mac')>-1) {
		return true;
	}
	return false;
};

/**
 * ��⵱ǰ������Ƿ�ΪiPad
 */
Util.prototype.isIPad = function() {
	var ua = navigator.userAgent;
	if (ua.indexOf('iPad')>-1 && ua.indexOf('WebKit')>-1) {
		return true;
	}
	return false;
};

/**
 * �ж��ǲ���iPad�µ�iOS6
 */
Util.prototype.isIOS6 = function(){
	var ua = navigator.userAgent;
	if(ua.indexOf('iPad')>-1 && ua.indexOf('WebKit')>-1 && ua.indexOf('OS 6_0')>-1){
		return true;
	}
	return false;
};

/**
 * ��⵱ǰ������Ƿ�ΪIE
 */
Util.prototype.isIE = function() {
	var ua = navigator.userAgent;
	if (ua.indexOf('MSIE')>-1) {
		return true;
	}
	//ie11�жϣ����userAgent�в�����msie�����ж��Ƿ���ActiveXObject����
	if(!!window.ActiveXObject || "ActiveXObject" in window) {
		return true;
	}
	return false;
}

/**
 * ��⵱ǰҳ���Ƿ��ǹ���ģʽ
 */
Util.prototype.isQuirkMode = function() {
	return document.compatMode==="BackCompat";
}

/**
 * ��⵱ǰ������Ƿ�ΪFirefox
 */
Util.prototype.isFireFox = function() {
	var ua = navigator.userAgent;
	if (ua.indexOf('Gecko')>-1 && ua.indexOf('Firefox')>-1) {
		return true;
	}
	return false;
}

/**
 * ��⵱ǰ������Ƿ�Ϊchrome�����
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
 * ��⵱ǰ������Ƿ�Ϊandroidƽ̨
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
 * ��⵱ǰIE������İ汾��ͬʱ������IE8�µ����������ģʽ
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
 * Ϊ�¼�Event����������س���
 */
Util.prototype.NO_SLIDE = 0;
Util.prototype.LEFT_SLIDE = 1;
Util.prototype.RIGHT_SLIDE = 2;
Util.prototype.UP_SLIDE = 3;
Util.prototype.DOWN_SLIDE = 4;

/**
 * ��ȡ�¼�����
 * @param {Event} e �����¼�
 */
Util.prototype.getPosition = function(e) {
	if (e.changedTouches == undefined)
		return {x: e.pageX, y: e.pageY};
	else
		return {x: e.changedTouches[0].pageX, y: e.changedTouches[0].pageY};
};

/**
 * ˮƽ�������루����Ϊ��������Ϊ����
 * @param {Event} e ������ʼ�¼�
 */
Util.prototype.getDeltaX = function(p1, p2) {
	return p2.x - p1.x;
};

/**
 * ��ֱ�������루����Ϊ��������Ϊ����
 * @param {Event} e ������ʼ�¼�
 */
Util.prototype.getDeltaY = function(p1, p2) {
	return p2.y - p1.y;
};

/**
 * ��������
 * @param {Event} e ������ʼ�¼�
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
 * ������ֵ�õ�ʵ������
 */
Util.prototype.px2num = function(strNum){
	 if (strNum == null || strNum == undefined)
		 return 0;
	return parseInt(strNum.substr(0, strNum.length-2));
};

/**
 * ��������
 */
Util.prototype.copyArray = function(source, target){
	for (var i=0; i<source.length; i++){
		target[i] = source[i];
	}
};

/**
 * ����Ԫ��element��Ӧ��event�¼�����������
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
 * ��Ԫ��from��Ӧ�������¼������������Ƶ�to
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
 * ��ȡ�ͻ��˿ɼ�����߶�
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
 * ��ȡ�ͻ��˿ɼ�������
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
 * �жϵ�ǰʹ��iOS�汾�Ƿ�Ϊ3.x
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
 * �жϵ�ǰʹ��iOS�汾�Ƿ�Ϊ4.x
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
 * ��ȡ�������ַ�yyyymmdd
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
 * ����ϸ��µ����һ��
 * @param baseDate  �������� ������
 */
Util.prototype.getPreMonthLastDay = function(baseDate) {
	var now = new Date(Date.UTC(baseDate.getFullYear(),baseDate.getMonth(),1));
	now.setMonth(now.getMonth()-parseInt(1,10));
	now.setDate(32 - new Date(now.getFullYear(),now.getMonth(),32).getDate());
	return now;
};

/**
 * ��ȡ�����������ַ���
 * @param	{String}referenceDate	�����׼����
 * @param	{String}computeStr		�������
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
	//str[0]:0.�꣬1.�£�2.�£�3.��
	//str[1]:����ֵ
	if("0"==str[0]){
		now.setFullYear(now.getFullYear()+parseInt(str[1],10));
		if(now.getDate() != baseDate.getDate()){
			//����ձ��ˣ�˵����仯����������ˣ�����ƫ�ƺ�����û��2.29
			now = Util.prototype.getPreMonthLastDay(now);
		}
	}else if("1"==str[0]){
		now.setMonth(now.getMonth()+parseInt(str[1],10));
		if(now.getDate() != baseDate.getDate()){
			//����ձ��ˣ�˵����仯����������ˣ�����ƫ�ƺ�����û��2.29
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
 * �ж��Ƿ�������
 * @param arg
 * @returns {Boolean}
 */
Util.prototype.isArray = function(arg) {
	if(typeof arg == 'object') {
		var criteria = arg.constructor.toString().match(/array/i);
		//�������鶼��һ����������array��constructor
		return (criteria != null);
	}
	return false;
};

/**
 * �����ַ������ȣ�Ӣ��ռ1���ַ������ĺ���ռ2���ַ���
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
 * ȡǰ16���ַ���Ӣ��ռ1���ַ������ĺ���ռ2���ַ���
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

//-----------------------------------����UI���������-------------------------------------------//
/**
 * ���캯��
 * @param {Object} id	���id
 */
function BaseUI(id) {
	this.id = id;
	this.visible = true;
	this.enable = true;
	this.value = null;
}

/**
 * ������ӵ�ָ��Ԫ����
 * @param {Sring}elementID	Ԫ��id
 */
BaseUI.prototype.rendTo = function(elementID){
	this.getJDom().appendTo(jQuery("#"+elementID));
};

/**
 * ���õ�ǰ���id
 * @param {Object} id
 */
BaseUI.prototype.setId = function(id) {
	this.id = id;
};

/**
 * ��ѯ��ǰ���id
 */
BaseUI.prototype.getId = function() {
	return this.id;
};

/**
 * ���õ�ǰ����Ƿ�ɼ�
 * @param {Object} visible
 */
BaseUI.prototype.setVisible = function(visible) {
	this.visible = visible;
};

/**
 * ��ȡ��ǰ����Ƿ�ɼ�
 */
BaseUI.prototype.isVisible = function() {
	return this.visible;
};

/**
 * ��������Ƿ��ܹ����������enable��Ӱ�쵽�����ۣ���Ҫ�������о������ʵ��
 * @param {Object} enable
 */
BaseUI.prototype.setEnable = function(enable) {
	this.enable = enable;
};

/**
 * �õ���ǰ����Ƿ����
 * @param {Object} enable
 * @return {Boolean}
 */
BaseUI.prototype.isEnable = function(enable) {
	return this.enable;
};

/**
 * ���������ֵ�����ֵ�����û�Ӱ�칹������ۣ���Ҫ�������н���ʵ�֡�
 * @param {Object} value
 */
BaseUI.prototype.setValue = function(value) {
	this.value = value;
};

/**
 * �õ���ǰ�����ֵ
 * @return {String}
 */
BaseUI.prototype.getValue = function() {
	return this.value;
};

/**
 * ����һ���鷽������Ҫ��ui������Զ���ʵ��
 * @return {String}
 */
BaseUI.prototype.getUIName = function() {
	return "BaseUI";
};

/**
 * �õ������Ե�����
 * @param {Object} key
 * @return {String}
 */
BaseUI.prototype.getUILabel = function(key) {
	return this.language[key];
};

/**
 * �����չʾ״̬������HtmlԪ�ؽ���һЩ����
 */
BaseUI.prototype.show = function() {
	
};

/**
 * ����ı䴦����
 */
BaseUI.prototype.OrientationChanged = function() {
	
};

/**
 * �Ӹ�ʽ�����ڸ�ʽת����Ĭ�ϸ�ʽ(yyyyMMdd)
 * @param formatDate  ��ʽ�������� �ַ���
 * @param format  ��ʽ��
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
 * ��Ĭ�ϸ�ʽ(yyyyMMdd)ת���ɸ�ʽ�����ڸ�ʽ
 * @param defaultDate  Ĭ�ϸ�ʽ���� yyyymmdd
 * @param format  ��ʽ��
 */
BaseUI.prototype.changeDefaultDateToFormatDate = function(defaultDate, format) {
	var year = defaultDate.substring(0,4);
	var month = defaultDate.substring(4,6);
	var day = defaultDate.substring(6);
	return format.replace(/YYYY/,year).replace(/MM/,month).replace(/DD/,day);
}

/**
 * ������ͼ���
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

	this.paper = null;//��������
	this.redrawSet = null;//�������ͼ�ζ��󼯺ϣ��������»���ʱ���

	this.create();
}
BaseChart.prototype.create = function() {
	var param = this.id;
	if (param) {
		if (param instanceof BaseChart) {//����Ϊ��ͼ�������
			this.paper = param.paper;//ʹ���Ѵ�������Ļ���
			this.id = param.id;
		} else if (typeof param == "string") {//����Ϊҳ������id
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

//----------���ذ�ť��ת����begain--------------
/**
 * ���δ�����Ҫ����perbankAtomLocationTW��perbankOperation.js����AtomSerivceSubmit��perbank3_pub.js����perbankAtomLocationTAP��perbankAtomLocationTAP_out��menutap.jsp��menutap_out_framemid.jsp����
 *	setBrowseSid��¼�û�������ԭ�ӷ�����iframe�и�ҳ�桮���ء���ť����returnBack(step)�������ص�������step��ԭ�ӷ���ҳ�棬1:��ʾ������һ������ǰ����2��ʾ�����ڶ���������Ĭ��Ϊ2��
 *  getServiceid(step) stepΪ���֣���ȡ������step��ԭ�ӷ���id,1:��ʾ������һ������ǰ����2��ʾ�����ڶ�������
 */
/**
 * cookie��������
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

var Storage = {
	setStorage : function(storageName,storageValue){
		if(window.sessionStorage){
			var storage = window.sessionStorage;
			storage.setItem(storageName,storageValue);
		}else{
			Utils.setCookie(storageName,storageValue,7,window.location.href.replace(/.*:\/\/([^:|^\/]*).*/,"$1")); 
		}
	},
	getStorage : function(storageName){
		if(window.sessionStorage){
			var storage = window.sessionStorage;
			return storage.getItem(storageName);
		}else{
			if(Utils.getCookie(storageName)==storageName){
				return null;
			}else{
				return Utils.getCookie(storageName);
			}
		}
	},
	clearStorage : function(storageName){
		if(window.sessionStorage){
			var storage = window.sessionStorage;
			try{
				storage.removeItem(storageName);
			}catch(e){}
		}else{
			Utils.clearCookie(storageName,window.location.href.replace(/.*:\/\/([^:|^\/]*).*/,"$1"));
		}
	}
};

var UserBrowseSidStack = {
		setBrowseSid : function(serviceId,transData,flag){
			try{
				var str1 = '{"serviceId":"'+serviceId+'","transData":"'+transData+'","flag":"'+flag+'"}';
				var userBrowseSidStackValueArray = [];
				var userBrowseSidStackValue = null;
				userBrowseSidStackValue=Storage.getStorage("UserBrowseSidStack");
				if(userBrowseSidStackValue!=null && userBrowseSidStackValue!=""){
					userBrowseSidStackValueArray = userBrowseSidStackValue.split("~``~");
				}
				var str2 = userBrowseSidStackValueArray.pop();
				if(str2!=null){
					var str2Json = eval('('+str2+')');
					if(serviceId!=str2Json.serviceId){
						userBrowseSidStackValueArray.push(str2);
					}
				}
				userBrowseSidStackValueArray.push(str1);
				Storage.setStorage("UserBrowseSidStack",userBrowseSidStackValueArray.join("~``~"));
			}catch(e){}
		},
		popPreBrowseSid : function(step){
			try{
				if(typeof step=="undefined" || step==null || step==""){
					step = 2;
				}
				var userBrowseSidStackValue=Storage.getStorage("UserBrowseSidStack");
				if(userBrowseSidStackValue!=null){
					var userBrowseSidStackValueArray = userBrowseSidStackValue.split("~``~");
					for(var i=1;i<step;i++){
						userBrowseSidStackValueArray.pop();
					}
					var str1 = userBrowseSidStackValueArray.pop();
					Storage.setStorage("UserBrowseSidStack",userBrowseSidStackValueArray.join("~``~"));
					if(str1!=""){
						return eval('('+str1+')');
					}
				}
			}catch(e){}
			return null;
		},
		returnBack : function(step){
			var backSidJson = UserBrowseSidStack.popPreBrowseSid(step);
			if(backSidJson==null || backSidJson==""){
				history.go(-1);
			}else{
				try{
					var serviceId=backSidJson.serviceId;if(serviceId=="undefined"||serviceId=="null") serviceId=null;
					var transData=backSidJson.transData;if(transData=="undefined"||transData=="null") transData=null;
					var flag=backSidJson.flag;if(flag=="undefined"||flag=="null") flag=null;
					if(flag=="3"){
						try{
							getTopFrameMidWindow().perbankAtomLocationTAP(serviceId,transData);
						}catch(e){
							getTopFrameMidWindow().frames["content-frame"].perbankAtomLocationTAP(serviceId,transData);
						}
					}else if(flag=="4"){
						try{
							getTopFrameMidWindow().perbankAtomLocationTAP_out(serviceId,transData);
						}catch(e){
							getTopFrameMidWindow().frames["content-frame"].perbankAtomLocationTAP_out(serviceId,transData);
						}
					}else{
						AtomSerivceSubmit(serviceId,transData);
					}
				}catch(e){
					history.go(-1);
				}
			}
		},
		clearUserBrowseSidStack : function(){//���UserBrowseSidStack
			Storage.clearStorage("UserBrowseSidStack");
		},
		getServiceid : function(step){//��ȡ������step��ԭ�ӷ���id,1:��ʾ������һ������ǰ����2��ʾ�����ڶ�������
			try{
				var userBrowseSidStackValue=Storage.getStorage("UserBrowseSidStack");
				if(userBrowseSidStackValue!=null){
					var userBrowseSidStackValueArray = userBrowseSidStackValue.split("~``~");
					var sidJson = eval('('+userBrowseSidStackValueArray[userBrowseSidStackValueArray.length-step]+')');
					return sidJson.serviceId;
				}
			}catch(e){}
			return null;
		}
	};
//----------���ذ�ť��ת����end--------------
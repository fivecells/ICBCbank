//----------返回按钮跳转方法begain--------------
/**
 * 本段代码主要用于perbankAtomLocationTW（perbankOperation.js）、AtomSerivceSubmit（perbank3_pub.js）、perbankAtomLocationTAP和perbankAtomLocationTAP_out（menutap.jsp和menutap_out_framemid.jsp）中
 *	setBrowseSid记录用户操作的原子服务；子iframe中各页面‘返回’按钮调用returnBack(step)方法返回到倒数第step个原子服务页面，1:表示倒数第一个（当前），2表示倒数第二个……（默认为2）
 *  getServiceid(step) step为数字，获取倒数第step个原子服务id,1:表示倒数第一个（当前），2表示倒数第二个……
 */
/**
 * cookie操作方法
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
		clearUserBrowseSidStack : function(){//清空UserBrowseSidStack
			Storage.clearStorage("UserBrowseSidStack");
		},
		getServiceid : function(step){//获取倒数第step个原子服务id,1:表示倒数第一个（当前），2表示倒数第二个……
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
//----------返回按钮跳转方法end--------------
var CrossDomain=function(){};CrossDomain.isIE=function(){var ua=navigator.userAgent;return ua.indexOf("MSIE")>-1||!!(window.ActiveXObject||"ActiveXObject"in window)},CrossDomain.isIELess8=function(){return CrossDomain.isIE()&&parseInt(jQuery.browser.version,10)<8},CrossDomain.isTrustRuleDif=function(obj){var result=!1;try{!CrossDomain.isIE()||"object"==typeof obj.window&&"string"==typeof obj.window.name||(result=!0)}catch(ee){result=!0}return result},CrossDomain.callParent=function(obj,msg,parentDomain){try{if(!CrossDomain.isTrustRuleDif(obj))return CrossDomain.callFunction(obj,msg);if(!CrossDomain.isIELess8()){var msgJsonString=JSON.stringify(msg);return CrossDomain.sendMessage(obj,msgJsonString,parentDomain)}CrossDomain.addTrustSite(CrossDomain.icbcDomain)}catch(ee){}},CrossDomain.callIframe=function(frameName,msg,iframeDomain){try{var obj=window.frames[frameName];if(!CrossDomain.isTrustRuleDif(obj))return CrossDomain.callFunction(obj,msg);if(!CrossDomain.isIELess8()){var msgJsonString=JSON.stringify(msg);return CrossDomain.sendMessage(obj,msgJsonString,iframeDomain)}CrossDomain.addTrustSite(CrossDomain.icbcDomain)}catch(ee){}},CrossDomain.callFunction=function(obj,msg){var a=obj[msg.functionName];if("function"==typeof a)return a.apply(obj,msg.functionParam)},CrossDomain.sendMessage=function(obj,msg,targetOrigin){return obj.postMessage(msg,targetOrigin)},CrossDomain.bindGetMessageEvent=function(obj,messageHandler){if(CrossDomain.isIE())try{obj.attachEvent("onmessage",messageHandler)}catch(e){try{obj.addEventListener("message",messageHandler,!0)}catch(e){}}else obj.addEventListener("message",messageHandler,!0)},CrossDomain.addTrustSite=function(userSiteDomain){var result=!1;try{if(!CrossDomain.hasAddTrustSite){var internetSet="HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\",zoneMapDomains=internetSet+"ZoneMap\\Domains\\",WshShell=new ActiveXObject("WScript.Shell"),tempUrl=zoneMapDomains+userSiteDomain+"\\https",isExistFlag=0;try{isExistFlag=WshShell.RegRead(tempUrl)}catch(e){isExistFlag=0}if(2!=isExistFlag){try{WshShell.RegWrite(zoneMapDomains+userSiteDomain,""),WshShell.RegWrite(zoneMapDomains+userSiteDomain+"\\https","2","REG_DWORD")}catch(e){}alert("由于您的IE浏览器设置问题，需要重启浏览器后才能正常使用。")}CrossDomain.hasAddTrustSite=!0,result=!0}}catch(e){}return result};
/**
 * 将form表单的内容拼接为url，用window.location.replace(url)方法提交。
 * 因为window.location.replace不会在浏览器历史中出现该提交页面
 * 这样做是为了避免自动提交页面在返回后出现循环的现象。让自动提交页面不出现在history的历史中
 * @param formDom 需要用来提交的form元素
*/
function replaceSubmitForm(formDom){
	var formDomInputs = formDom.getElementsByTagName("input");
	var postString=formDom.getAttribute("action")+"?";
	var target=formDom.getAttribute("target");
	for(var i=0;i<formDomInputs.length;i++){
		var inputName=formDomInputs[i].getAttribute("name");
		var inputValue=formDomInputs[i].getAttribute("value");
		if(i==0)
			postString = postString + inputName + "=" + inputValue;
		else 
			postString = postString + "&" + inputName + "=" + inputValue;
	}
	if(target==null||target==""||target=='undefined'){
		window.location.replace(postString);
	}else{
		//md 2015-11-20
		var newwindow=eval('window[\''+target+'\']');
		newwindow.location.replace(postString);
	}
		
}
/**
 * 用于开放式，传递多个参数（大于10个）跳转到某交易中间分支流程.注意from提交的变量和值，是否会有两个_及以上以_开头或结尾的变量），则会出现变量解析错误的问题
 * 接收参数以后，先把__替换成%然后再decode
 * @param formDom
 * @param serviceid
 * @param sevicedataid
 */
function replaceSubmitForm_encode(formDom,serviceid,sevicedataid){
	var formDomInputs = formDom.getElementsByTagName("input");
	var postString=formDom.getAttribute("action")+"?";
	for(var i=0;i<formDomInputs.length;i++){
		var inputName=formDomInputs[i].getAttribute("name");
		var inputValue=formDomInputs[i].getAttribute("value");
		if(i==0)
			postString = postString + inputName + "=" + inputValue;
		else 
			postString = postString + "&" + inputName + "=" + inputValue;
	}
	//window.location.replace(postString);
	postString = encodeURIComponent(postString);
	postString = postString.replace(/%/g,"__");
	AtomSerivceSubmit(serviceid, sevicedataid + ":*" + encodeURIComponent(postString));
}

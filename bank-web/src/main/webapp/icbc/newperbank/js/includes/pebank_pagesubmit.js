/**
 * ��form��������ƴ��Ϊurl����window.location.replace(url)�����ύ��
 * ��Ϊwindow.location.replace�������������ʷ�г��ָ��ύҳ��
 * ��������Ϊ�˱����Զ��ύҳ���ڷ��غ����ѭ�����������Զ��ύҳ�治������history����ʷ��
 * @param formDom ��Ҫ�����ύ��formԪ��
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
 * ���ڿ���ʽ�����ݶ������������10������ת��ĳ�����м��֧����.ע��from�ύ�ı�����ֵ���Ƿ��������_��������_��ͷ���β�ı������������ֱ����������������
 * ���ղ����Ժ��Ȱ�__�滻��%Ȼ����decode
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

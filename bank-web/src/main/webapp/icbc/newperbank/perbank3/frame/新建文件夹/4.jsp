<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/icbc/newperbank/js/blockui/JQuery.BlockUI.min.2.39.js"></script>
</head>
<body>

<script language="JavaScript">

/**
��ʾ��¼
**/
function showLogonDiv(serviceId,transData,logoffstat){
    //���ú�����֮����չ��
    var wi="200";
	try{
		wi=(jQuery("body").width()-310)/2;
	}catch (e){}
	if($.browser.msie && parseInt($.browser.version)<=8){
		frames['ICBC_login_frame_f'].location="https://epass.icbc.com.cn/login/login.jsp?StructCode=1&orgurl=0&STNO=31";
	}
    $.blockUI({message: $('#ICBC_login_float'),
    			css: { 
                 left: wi,
                 border:'1px solid #AAA',
                 width: '310px',
                  top:'10%'
            	}
             });
    //ע�����ݱ���������ʾ������
    //
    setTimeout("setValue('"+serviceId+"','"+transData+"','"+logoffstat+"')",1000);
    setTimeout("setValue('"+serviceId+"','"+transData+"','"+logoffstat+"')",2000);
    setTimeout("setValue('"+serviceId+"','"+transData+"','"+logoffstat+"')",3000);
    
}
/**
��ʾ�������
**/
function showAdDiv(obj){
    //���ú�����֮����չ��
    var intWidth = obj.width.replace(/px/gi,'');
    var left  = (document.body.clientWidth - intWidth)/2;
    jQuery("#ICBC_common_frame_f").attr('src',obj.url);
    $.blockUI({message: $('#ICBC_common_float'),
    			css: { 
                 width: obj.width,
                 height: obj.height,
                 top:'15%',
                 left:left
            	}
             });
}
//������ҳ��ʱ������ֵ
/**
@serviceId ԭ�ӷ���id
@transData ��������
@logoffstat ǰ��½״̬

"1�������Ѿ�����һ̨������ϵ�¼���������ε�¼ǿ���˳�";
"2���ݿͻ�ָ����ε�¼ǿ���˳�";
"3�Բ������Ĳ����ѳ�ʱ����л��ʹ��"+normalBankName+"����";
"4���ڵ�¼������������Ϣ�����仯��Ϊ��֤��ȫ�������µ�¼�������У���л��ʹ��"+normalBankName+"�������С�";
"5���ڵ�¼������IP��ַ�ѷ����仯��Ϊ��֤��ȫ�������µ�¼�������У���л��ʹ��"+normalBankName+"�������С�";
"6����ע�����и������������ε�¼ǿ���˳���";

**/
var isFreashFrame = "0";//�Ƿ�ˢ����ҳ��0��""��ˢ��
function setValue(serviceId,transData,logoffstat){
	if(logoffstat!=null && typeof(logoffstat)!="undefined" && logoffstat!="undefined"){
		isFreashFrame = logoffstat;
	}
	var serviceIdInto="";
	if(serviceId.indexOf(">")>0){
		serviceIdInto=serviceId;
		serviceId=serviceId.substring(0,serviceId.indexOf(">"));
			
	}
	/* frames['ICBC_login_frame_f'].form1.logonCardNum.focus();
	frames['ICBC_login_frame_f'].form1.serviceId.value=serviceId;
	frames['ICBC_login_frame_f'].form1.serviceIdInto.value=serviceIdInto;
	frames['ICBC_login_frame_f'].form1.transData.value=transData;  */
	
	//֧��fire�ı�׼д��
	//frames['ICBC_login_frame_f'].document.getElementById("logonCardNum").focus();
	
	try{
		frames['ICBC_login_frame_f'].document.getElementById("serviceId").value=serviceId;
		frames['ICBC_login_frame_f'].document.getElementById("serviceIdInto").value=serviceIdInto;
		frames['ICBC_login_frame_f'].document.getElementById("transData").value=transData; 
		if(serviceId!=""&&serviceId!=null&&serviceId!='undefined')
			frames['ICBC_login_frame_f'].document.getElementById("serviceIdfirst").value=serviceId; 
		else
			frames['ICBC_login_frame_f'].document.getElementById("serviceIdfirst").value=""; 
		
		if(logoffstat=="1"){
			frames['ICBC_login_frame_f'].jQuery("#logintips").html("���µ�¼");
			frames['ICBC_login_frame_f'].showErrTip("���Ѿ�����һ̨������ϵ�¼���������ε�¼ǿ���˳�");
		}else if(logoffstat=="2"){
			frames['ICBC_login_frame_f'].jQuery("#logintips").html("���µ�¼");
			frames['ICBC_login_frame_f'].showErrTip("���ݿͻ�ָ����ε�¼ǿ���˳�");
		}else if(logoffstat=="3"){
			frames['ICBC_login_frame_f'].jQuery("#logintips").html("���µ�¼");
			//frames['ICBC_login_frame_f'].showErrTip("");
		}else if(logoffstat=="4"){
			frames['ICBC_login_frame_f'].jQuery("#logintips").html("���µ�¼");
			frames['ICBC_login_frame_f'].showErrTip("�������������仯��Ϊ��֤��ȫ�������µ�¼��������");
		}else if(logoffstat=="5"){
			frames['ICBC_login_frame_f'].jQuery("#logintips").html("���µ�¼");
			frames['ICBC_login_frame_f'].showErrTip("����IP�����仯��Ϊ��֤��ȫ�������µ�¼��������");
		}else if(logoffstat=="6"){
			frames['ICBC_login_frame_f'].jQuery("#logintips").html("���µ�¼");
			frames['ICBC_login_frame_f'].showErrTip("����ע�����и������������ε�¼ǿ���˳�");
		}else{
			frames['ICBC_login_frame_f'].jQuery("#logintips").html("��¼");
		}
		
	}catch(e){}
	
	
}
/**
�رյ�¼
**/
function hideLogonDiv(){
	//�رյ�����
    $.unblockUI();
    if(isFreashFrame!="" && isFreashFrame!="0"){//�رյ�¼���ں�ˢ����ҳ��
    	//window.location="/icbc/newperbank/perbank3/frame/frame_index.jsp";//reload();
    	document.topfameFrom4Login.submit();
    }
    //�رմ���ʱ��Ҫ����loading
    try{frames['perbank-content-frame'].AtomSerivceHideLoading();}catch(e){}
    //�رմ���ʱ�����ù̶���¼��������
    //try{frames['ICBC_login_frame'].resetSafe();}catch(e){}
    try{frames['ICBC_login_frame'].location.reload();}catch(e){}
    
}

jQuery(document).ready(function() {
      	$('#ICBC_login_float_x').click(function() {
      		//frames['ICBC_login_frame_f'].KeyPart.clear();
      		try{
	      		frames['ICBC_login_frame_f'].document.getElementById("KeyPart").clear();
				//frames['ICBC_login_frame_f'].safeEdit1.clear();
				frames['ICBC_login_frame_f'].document.getElementById("safeEdit1").clear();
			}catch(e){}
			hideLogonDiv();
		});
		
		$('#ICBC_login_float_open').click(function() {
			showLogonDiv();
		});
		           
});


	function hasFloatlogon(){
		//ֻ�е㡰���¼����������ҳ��ʱ��
		var h=jQuery("#ICBC_login_float").is(':visible');//�ɼ���Ϊ��ҳ
		return h;
		
	}
	



</script>
<div id="ICBC_login_float_open" style="width: 40px;height: 30px;background-color: red;display: none">�򿪲���</div>
<div>
<div id="ICBC_login_float">
	<div id="ICBC_login_float_left">  
				<iframe marginWidth="0" id="ICBC_login_frame_f" name="ICBC_login_frame_f"
					marginHeight="0" 
					scrolling="no" 
					frameborder="no"
					src="https://epass.icbc.com.cn/login/login.jsp?StructCode=1&orgurl=0&STNO=31"
					style="width: 310px;height:370px; border:0;overflow:hidden;"></iframe> 
	</div>
	<div id="ICBC_login_float_x"><div id="ICBC_login_float_xxx">&nbsp;</div></div>
</div>

<div id="ICBC_common_float">
	<div id="ICBC_common_float_left">  
				<iframe marginWidth="0" id="ICBC_common_frame_f" name="ICBC_common_frame_f"
					marginHeight="0" 
					scrolling="no" 
					frameborder="no"
					src=""
					style="width: 100%;height:100%; border:0;overflow:hidden;"></iframe> 
	</div>
	<div id="ICBC_common_float_x"><div id="ICBC_common_float_xxx" onclick="hideLogonDiv();">X</div></div>
</div>
</div>

<form name="topfameFrom4Login"   id="topfameFrom4Login"  method="post"  target="_top"
	action="/icbc/newperbank/perbank3/frame/frame_index.jsp" onSubmit="return false;">
</form>	

</body>
</html>
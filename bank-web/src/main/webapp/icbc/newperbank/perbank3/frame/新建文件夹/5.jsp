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

var myfunctiontemp=null;
/**
��ʾ��¼
**/
function perbankAtomLocationFWshow(){
	var wi="15%";
try{
		wi=(jQuery("body").width()-800)/2;
	}catch (e){} 
	
    $.blockUI({message: $('#ICBC_window_float'),
    			css: { 
                 width: '815px',
                 left:wi,
                 top:'10%'
            	}
             });
     jQuery(".ICBC_window_float_left").show();
   	 jQuery("#ICBC_window_float_process").hide();
}
/**
 �رմ���
 ��������һ������
**/
function perbankAtomLocationFWhide(){
	//�رյ�����
   // $.unblockUI();
   window.frames["ICBC_window_flot_frame"].document.body.innerHTML="";//��ֹ��һ�ε�����ʱ����չ����һ��iframe�е�����
   jQuery(".ICBC_window_float_left").hide();
   jQuery("#ICBC_window_float_process").show();
    //����Ƿ���ע��Ļص�����������������;
    /**var i=10;
    while(true){
    	var myfunciton=funlist.pop();
    	if(typeof myfunciton == "function"){
    		myfunciton.call(this);
    	}else{
    		break;
    	}
    	//���������ѭ��
    	i--;
    	if(i==0){
    		break;
    	}
    }**/
    //ֻ����һ���ص�����
    if(typeof myfunctiontemp == "function"){
    		myfunctiontemp.call(this);
    }
}
/**
ֻ�رմ���
**/
function perbankAtomLocationFWOnlyhide(){
	//�رյ�����
    //$.unblockUI({message: $('#ICBC_window_float')});
    setTimeout("hideBlockUI()",10);
}

function hideBlockUI(){
	if(jQuery("#ICBC_window_float").is(':visible')){
		$.unblockUI();
		//check visible
		setTimeout("hideBlockUI()",10);
	}
}

/**
ע��ص�����
**/
function registFWFunction(myfunction){
	//funlist.push(myfunction);
	myfunctiontemp=myfunction;
}

jQuery(document).ready(function() {
      	$('#ICBC_window_float_xxx').click(function() {
			perbankAtomLocationFWhide();
		});
		
		$('#ICBC_window_float_open').click(function() {
			perbankAtomLocationFWshow();
		});
		           
});




</script>

<div>
<div id="ICBC_window_float">
	<div id="ICBC_window_float_left" class="ICBC_window_float_left">  
				<iframe marginWidth="0" id="ICBC_window_flot_frame" name="ICBC_window_flot_frame"
					marginHeight="0" 
					scrolling="auto" 
					frameborder="no"
					src=""
					style="width: 815px;border:0;overflow:hidden;"></iframe> 
	</div>
	<div id="ICBC_window_float_x"  class="ICBC_window_float_left"><div id="ICBC_window_float_xxx">x</div></div>
	<div id="ICBC_window_float_process" style="display:none;height:18px;width:99%;"></div>
</div>
</div>

</body>
</html>
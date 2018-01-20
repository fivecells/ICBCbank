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
显示登录
**/
function draw_perbankAtomLocationFWshow(height,width){
	var wi="15%";
try{
		wi=(jQuery("body").width()-800)/2;
	}catch (e){} 
	
    $.blockUI({message: $('#DRAW_ICBC_window_float'),
    			css: { 
                 width: width,
                 height: height,
                 top: 0,
                 left: 0,
                  background:'rgba(0,0,0,0)'
            	}
             });
     jQuery(".DRAW_ICBC_window_float_left").show();
   	// jQuery("#DRAW_ICBC_window_float_process").hide();
}
/**
 关闭窗口
 并调用下一个交易
**/
function draw_perbankAtomLocationFWhide(){
	//关闭弹出层
   // $.unblockUI();
   window.frames["DRAW_ICBC_window_flot_frame"].document.body.innerHTML="";//防止下一次弹出层时，先展现上一次iframe中的内容
   jQuery(".DRAW_ICBC_window_float_left").hide();
  // jQuery("#DRAW_ICBC_window_float_process").show();
    //检查是否有注册的回调函数，如果有则调用;
    /**var i=10;
    while(true){
    	var myfunciton=funlist.pop();
    	if(typeof myfunciton == "function"){
    		myfunciton.call(this);
    	}else{
    		break;
    	}
    	//避免进入死循环
    	i--;
    	if(i==0){
    		break;
    	}
    }**/
    //只允许一个回调函数
    if(typeof myfunctiontemp == "function"){
    		myfunctiontemp.call(this);
    }
}


function DRAW_hideBlockUI(){
	if(jQuery("#DRAW_ICBC_window_float").is(':visible')){
		$.unblockUI();
		//check visible
		setTimeout("DRAW_hideBlockUI()",10);
	}
}

jQuery(document).ready(function() {
      	$('#DRAW_ICBC_window_float_xxx').click(function() {
			draw_perbankAtomLocationFWhide();
			DRAW_hideBlockUI();
		});
		
		$('#DRAW_ICBC_window_float_open').click(function() {
			draw_perbankAtomLocationFWshow();
		});
		           
});




</script>

<div >
<div id="DRAW_ICBC_window_float">
	<div id="DRAW_ICBC_window_float_left" class="DRAW_ICBC_window_float_left" >  
				<iframe marginWidth="0" id="DRAW_ICBC_window_flot_frame" name="DRAW_ICBC_window_flot_frame" 
					marginHeight="0" 
					scrolling="no" 
					frameborder="no"
					src=""
					style="width:100%;height:100%;border:0;overflow:hidden;"></iframe> 
	</div>
	
	<div id="DRAW_ICBC_window_float_x"  class="DRAW_ICBC_window_float_left"><div id="DRAW_ICBC_window_float_xxx">x</div></div>
	<!-- <div id="DRAW_ICBC_window_float_process" style="display:none;width:90%;height:90%"></div> -->
</div>
</div>

</body>
</html>
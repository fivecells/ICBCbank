<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>???¨²????</title>
</head>

 <script type="text/javascript">
    var bbs_display="";
    var i_i = "10";
 	try{
 		bbs_display=sessionStorage.bbs_display;
 	}catch(e){
		try{
			if(GetCookie("bbs_display")=="1"){
				bbs_display = GetCookie("bbs_display");
			}else{
				SetCookie("bbs_display","0");
				bbs_display = GetCookie("bbs_display");
				}
			}catch(e){
				bbs_display = "0";
				}
 	} 
 	/* try{
		if(GetCookie("bbs_display")=="1"){
			bbs_display = GetCookie("bbs_display");
		}else{
			SetCookie("bbs_display","0");
			bbs_display = GetCookie("bbs_display");
			}
		}catch(e){
			bbs_display = "0";
			} */
 	
	function judge(){
		var msg = "";
		$('#noticemsg').html(msg);
		if(msg!=""&&(bbs_display=="0"||bbs_display==undefined)){
		    $("#notice").slideDown("slow");
			setTimeout('hide()',i_i*1000);
		}else{
			document.getElementById("notice").style.display = "none";
			
		}
		try{
	 		sessionStorage.bbs_display="1";
	 	}catch(e){
	 		SetCookie("bbs_display","1");
	 	} 
		/* SetCookie("bbs_display","1"); */
	}
	
	 function clock(){
			document.getElementById("notice").style.display = "none"; 
	} 
	 function hide(){
			$("#notice").slideUp("slow");
	} 
	 $(document).ready(function(){
			judge();
			
		});
	function SetCookie(name,value){
		document.cookie = name + "=" +escape(value);
		}
	function GetCookie(name){
		var arr,reg = new RegExp("(^| )"+name+"=([^;]*)(;|$)");
		if(arr = document.cookie.match(reg))
			return unescape(arr[2]);
		else
			return null;
		}
	function ClearCookie(name){
		SetCookie(name,"");
		}
	/* $(window).on('onbeforeunload',ClearCookie('bbs_display'));  */
 </script>
<body>
	<div  id="notice" class="notice">
		<div class="MSG" id="noticemsg"></div>
		<div style="width: 2%;float: right;" >
			<div class="CloseX"  onclick="clock()"></div>
		</div>
	</div>
</body>
</html>
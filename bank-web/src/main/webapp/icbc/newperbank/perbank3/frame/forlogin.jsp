<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!-- 12月版本恢复登录框 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">
	function lightLogon(serviceId,transData){
		//设置默认进入的栏目
		/* document.ICBC_login_frame.form1.logonCardNum.focus();
		document.ICBC_login_frame.form1.serviceId.value=serviceId;
		document.ICBC_login_frame.form1.transData.value=transData;
		jQuery(".ICBC_login_right").css({ border: "2px solid #870006"});
		setTimeout("delightLogon()",5000); */
	}
	
	function delightLogon(){
		/* jQuery(".ICBC_login_right").css({ border: "1px solid #ccc"}); */
	}
	
</script>
<body>

<div id="ICBC_login" style=""> 
		<div class="ICBC_login_center">
			<div class="ICBC_login_right">  
				<iframe marginWidth="0" id="ICBC_login_frame" name="ICBC_login_frame"
					marginHeight="0" 
					scrolling="no" 
					frameborder="no"
					src="${pageContext.request.contextPath}/login/login.jsp?StructCode=1&orgurl=0&STNO=31"
					style="width: 310px;height:368px; border:0;overflow:hidden;"></iframe> 
			</div>
		</div>
</div>
</body>
</html>
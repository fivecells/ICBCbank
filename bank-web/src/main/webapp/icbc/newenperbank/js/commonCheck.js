<!--
function formCheck(form)
{
	var elements = eval('document.' + form + '.elements');//将表单中的所有元素放入数组
	for(var i = 0; i < elements.length; i++)
	{
		elements[i].value = trim(elements[i].value);//可能会有问题!!!!!
		
		var v = elements[i].getAttribute("checktype");//获取其checktype属性
		if(!v)
		{	
			if(elements[i].getAttribute("checkSwitchName"))//是否检查
			{
				var Switch = 0;
				for(var j = 0; j < elements.length; j++)
				{
					if(elements[j].name==elements[i].getAttribute("checkSwitchName"))
					{
						Switch = elements[j].value;
						continue;
					}
				}
				if(Switch == 0)
					continue;
			}
			if(elements[i].type=="hidden")//隐藏域
				continue;
			if(elements[i].classid || elements[i].tagName.toLowerCase() == "object" || elements[i].tagName.toLowerCase() == "embed")//控件
				continue;
			if(judgeEmpty(elements[i].value)==true)
			{
				alert("The item should not be blank!");
				//alert("name : " + elements[i].name);
				//alert("id : " + elements[i].id);
				elements[i].select();
				elements[i].focus();
				return false;
			}
			re = eval("/[!@#$%^&*|'\"]/g");
			if(re.test(elements[i].value))
			{
				alert("Do not enter the following invalid characters:!@#$%^&*|'\"");
				elements[i].select();
				elements[i].focus();
				return false;
			}
			continue;			
		}
			
		
/*
	功能：	检查卡号
	使用：	checkacct	Card2121Check15()
						Card2112Check16()
						Card2112Check19()			
	引用：	<script language="javascript" src="perbank/js/checkacct.js"></script>
*/
		if(v == 'cardnum')
		{
			if(judgeEmpty(elements[i].value)==true)
			{
				alert("Registered card number can't be blank!");
				elements[i].select();
				elements[i].focus();
				return false;
			}
			re = /^\d+$/;
			if(!re.test(elements[i].value))
			{
				alert("Registered card number must be numbers!");
				elements[i].select();
				elements[i].focus();
				return false;
			}
			if(!isValidCardAndAcctPublic(elements[i].value))
			{
				alert("Please enter valid card number!");
				elements[i].select();
				elements[i].focus();
				return false;
			}
			continue;
		}

/*
	功能：	检查证件号
	使用：	checkacct	checkPID()
	引用：	<script language="javascript" src="perbank/js/pid.js"></script>
	注意:	当检查类行为证件号码crednum时，在form中的前一项，一定要为证件类型credtype。
*/
		if(v == 'crednum')
		{
			if(judgeEmpty(elements[i].value)==true)
			{
				alert("The item should not be blank!");
				elements[i].select();
				elements[i].focus();
				return false;
			}
			if(elements[i-1].value=="0")//证件类型是身份证（或香港身份证）
			{
				if(elements[i-1].id=="hongkong")//证件类型是香港身份证，不需要校验
					continue;
				if (checkPID(elements[i].value)!=true)
				{
					alert("ID Card number error!");
					elements[i].select();
					elements[i].focus();
					return false;
				}
			}
			continue;
		}		

/*
	功能：	检查电子邮件地址
	使用：			
	引用：	
*/
		if(v == 'email')
		{
			re = /^\w+([.\-\+]\w+)*@\w+([.]\w+)*(\.\w+)$/;
			if(!re.test(elements[i].value))
			{
				alert("Please enter valid email address!");
				elements[i].select();
				elements[i].focus();
				return false;
			}
			continue;
		}

/*
	功能：	检查电话号码
	使用：			
	引用：	
*/
		if(v == 'telenum')
		{
			re = /^(\d{2,3}\-)?(\d{3}\-)?\d{6,11}(\-\d{1,6})?$/;
			if(!re.test(elements[i].value))
			{
				alert("Please enter valid telephone number!");
				elements[i].select();
				elements[i].focus();
				return false;
			}
			continue;
		}
		

	}
	return true;
}


//截空
function trim( szExp ) {
	if( szExp == null )	return null;
	if( (szExp.charAt(0) != ' ') && (szExp.charAt(szExp.length-1) != ' ') ) { return szExp; }
	while( szExp.charAt(0)  == ' ' ) {
		szExp = '' + szExp.substring(1,szExp.length);
	}
	while( szExp.charAt(szExp.length-1)  == ' ' ) {
		szExp = '' + szExp.substring(0,szExp.length-1);
	}

	return szExp;
}


//判断是否为空
function judgeEmpty(szExp)
{
	return ( szExp == "" || szExp == null )? true : false;
}


//-->
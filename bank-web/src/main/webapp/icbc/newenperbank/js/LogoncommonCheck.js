<!--
function formCheck(form)
{
	var elements = eval('document.' + form + '.elements');//�����е�����Ԫ�ط�������
	for(var i = 0; i < elements.length; i++)
	{
		elements[i].value = trim(elements[i].value);//���ܻ�������!!!!!
		
		var v = elements[i].checktype;//��ȡ��checktype����
		if(!v)
		{	
			if(elements[i].getAttribute("checkSwitchName"))//�Ƿ���
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
			if(elements[i].type=="hidden")//������
				continue;
			if(elements[i].classid)//�ؼ�
				continue;
			if(judgeEmpty(elements[i].value)==true)
			{
				alert("This item cannot be null!");
				//alert("name : " + elements[i].name);
				//alert("id : " + elements[i].id);
				elements[i].select();
				elements[i].focus();
				return false;
			}
			re = eval("/[!@#$%^&*|'\"]/g");
			if(re.test(elements[i].value))
			{
				alert("Do not enter the following invalid characters:!@#$%^&|'\"");
				elements[i].select();
				elements[i].focus();
				return false;
			}
			continue;			
		}
			
		
/*
	���ܣ�	��鿨��
	ʹ�ã�	checkacct	Card2121Check15()
						Card2112Check16()
						Card2112Check19()			
	���ã�	<script language="javascript" src="perbank/js/checkacct.js"></script>
*/
		if(v == 'cardnum')
		{
			if(judgeEmpty(elements[i].value)==true)
			{
				alert("Registration card No. cannot be null!");
				elements[i].select();
				elements[i].focus();
				return false;
			}
			re = /^\d+$/;
			if(!re.test(elements[i].value))
			{
				alert("Registration card No. must be numeric!");
				elements[i].select();
				elements[i].focus();
				return false;
			}
			if(!isValidCardAndAcctPublic(elements[i].value))
			{
				alert("Enter correct registration card No.");
				elements[i].select();
				elements[i].focus();
				return false;
			}
			continue;
		}

/*
	���ܣ�	���֤����
	ʹ�ã�	checkacct	checkPID()
	���ã�	<script language="javascript" src="perbank/js/pid.js"></script>
	ע��:	���������Ϊ֤������crednumʱ����form�е�ǰһ�һ��ҪΪ֤������credtype��
*/
		if(v == 'crednum')
		{
			if(judgeEmpty(elements[i].value)==true)
			{
				alert("This item cannot be null!");
				elements[i].select();
				elements[i].focus();
				return false;
			}
			if(elements[i-1].value=="0")//֤�����������֤����������֤��
			{
				if(elements[i-1].id=="hongkong")//֤��������������֤������ҪУ��
					continue;
				if (checkPID(elements[i].value)!=true)
				{
					alert("ID card is entered wrongly!");
					elements[i].select();
					elements[i].focus();
					return false;
				}
			}
			continue;
		}		

/*
	���ܣ�	�������ʼ���ַ
	ʹ�ã�			
	���ã�	
*/
		if(v == 'email')
		{
			re = /^\w+([.\-\+]\w+)*@\w+([.]\w+)*(\.\w+)$/;
			if(!re.test(elements[i].value))
			{
				alert("Enter valid e-mail address!");
				elements[i].select();
				elements[i].focus();
				return false;
			}
			continue;
		}

/*
	���ܣ�	���绰����
	ʹ�ã�			
	���ã�	
*/
		if(v == 'telenum')
		{
			re = /^(\d{2,3}\-)?(\d{3}\-)?\d{6,11}(\-\d{1,6})?$/;
			if(!re.test(elements[i].value))
			{
				alert("Enter valid phone number!");
				elements[i].select();
				elements[i].focus();
				return false;
			}
			continue;
		}
		

	}
	return true;
}


//�ؿ�
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


//�ж��Ƿ�Ϊ��
function judgeEmpty(szExp)
{
	return ( szExp == "" || szExp == null )? true : false;
}


//-->
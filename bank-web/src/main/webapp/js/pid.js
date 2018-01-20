function IsNumeric(pid)
{
	for(var i=0;i<pid.length;i++)
	{
    		var oneChar=pid.charAt(i);
    		if(oneChar<'0'||oneChar>'9')
    		{
      			return false;
    		}
    	}
  	return true;
}
function checkPID(pid)
{
	//CheckPID="0"
	if(pid.substr(0,1)=="0")
		return false;
	if(pid.length==15)
	{	
		var today = new Date();
		var year = today.getYear(); 
		year=(year<1900?(1900+year):year); 
		var month= today.getMonth()+1;
		var date  = today.getDate();
		if (!IsNumeric(pid))
			return false;
		
		var nian=parseFloat(pid.substr(6,2));
		var yue=pid.substr(8,2);
		var ri=parseFloat(pid.substr(10,2));
		if(ri==0)
			return false;
		if (yue=="01"||yue=="03"||yue=="05"||yue=="07"||yue=="08"||yue=="10"|| yue=="12")
		{	if(ri > 31)
				return false;
		}
		else if(yue=="04"||yue=="06"|| yue=="09" || yue=="11")
		{
			if(ri> 30)
				return false;
		}
		else if (yue=="02")
		{
			if(nian%4== 0)
			{
				if (ri > 29)
					return false;
			}
			else
			{
				if(ri > 28)
					return false;
			}
		}
		else
			return false;
		return true;
	}
	else if (pid.length==18)
	{
		if(!IsNumeric(pid))
		{
			if(pid.charAt(17)!='X'||!IsNumeric(pid.substr(0,17)))
				return false;
		}
		if(pid.substr(6,2)!="19"&&pid.substr(6,2)!="20")
			return false;
		if(parseFloat(pid.substr(6,4)) + 18 > year)
			return false;
		var nian=parseFloat(pid.substr(6,4));
		var yue=pid.substr(10,2);
		var ri=parseFloat(pid.substr(12,2));		
		if(ri==0){
			//alert("111");
			return false;}

		if (yue=="01"||yue=="03"||yue=="05"||yue=="07"||yue=="08"||yue=="10"|| yue=="12")
		{	if(ri > 31){
				//alert("222");
				return false;}
		}
		else if(yue=="04"||yue=="06"|| yue=="09" || yue=="11")
		{
			if(ri> 30){
				//alert("333");
				return false;}
		}
		else if (yue=="02")
		{
			if(nian%4== 0)
			{
				if (ri > 29){
					//alert("444");
					return false;}
			}
			else
			{
				if(ri > 28){
					//alert("555");
					return false;}
			}
		}
		else{
			//alert("666");
			return false;}
		var s=parseInt(pid.substr(0,1))*7;
		s+=parseInt(pid.substr(1,1))*9;
		s+=parseInt(pid.substr(2,1))*10;
		s+=parseInt(pid.substr(3,1))*5;
		s+=parseInt(pid.substr(4,1))*8;
		s+=parseInt(pid.substr(5,1))*4;
		s+=parseInt(pid.substr(6,1))*2;
		s+=parseInt(pid.substr(7,1));
		s+=parseInt(pid.substr(8,1))*6;
		s+=parseInt(pid.substr(9,1))*3;
		s+=parseInt(pid.substr(10,1))*7;
		s+=parseInt(pid.substr(11,1))*9;
		s+=parseInt(pid.substr(12,1))*10;
		s+=parseInt(pid.substr(13,1))*5;
		s+=parseInt(pid.substr(14,1))*8;
		s+=parseInt(pid.substr(15,1))*4;
		s+=parseInt(pid.substr(16,1))*2;
		s=s%11;
		var m=0;
		if( s == 0)
			s = 11;
		if(pid.charAt(17)=='X')
			m=10;
		else if(pid.charAt(17)=='0')
			m=11;
		else
			m=parseInt(pid.substr(17));
		if(s+m !=12){
			//alert("777");
			return false;}
		return true;
	}
	else
		return false;
}
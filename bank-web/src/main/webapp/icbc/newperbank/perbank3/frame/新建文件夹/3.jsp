<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %> 
                	<!doctype>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
<div class="licaitouzi-centent-item-box" id="zhanghushangpin" >
                <div class="licaitouzi-centent-item bor-0">
                    <div class="licaitouzi-centent-list">
                    	<div class="zhanghushangpin-ad img-2"></div>
                        <h6 class="tit-tt">�˻���Դ</h6>
                        <div class="zhanghushangpin-centent-list-main">
                            <div class="centent-box">
                            	<p>������һ���Ԫ������Դ�ݶ��Ͷ�ʽ��ײ�Ʒ��ֻ�Ʒݶ����ȡʵ�</p>
                            </div>
                            <a class="tijiao-btn" href="javascript:busiSubmit('PBL201321','18','�˻���Դ');">����</a>
                        </div>
                    </div>
                    <div class="licaitouzi-centent-list">
                    	<div class="zhanghushangpin-ad img-3"></div>
                        <h6 class="tit-tt">�˻�ũ��Ʒ</h6>
                        <div class="zhanghushangpin-centent-list-main">
                           <div class="centent-box">
                            	<p>������һ���Ԫ����ũ��Ʒ�ݶ��Ͷ�ʽ��ײ�Ʒ��ֻ�Ʒݶ����ȡʵ�</p>
                            </div>
                            <a class="tijiao-btn" href="javascript:busiSubmit('PBL201322','41','�˻�ũ��Ʒ');">����</a>
                        </div>
                    </div>
                    <div class="licaitouzi-centent-list last">
                    	<div class="zhanghushangpin-ad img-1"></div>
                        <h6 class="tit-tt">�˻���������</h6>
                        <div class="zhanghushangpin-centent-list-main">
                        	<div class="centent-box">
                            	<p>������һ���Ԫ�������������ݶ��Ͷ�ʽ��ײ�Ʒ��ֻ�Ʒݶ����ȡʵ�</p>
                            </div>
                            <a class="tijiao-btn" href="javascript:busiSubmit('PBL201323','42','�˻���������');">����</a>
                        </div>
                    </div>
                </div>
            </div>
</body>
<script>
	function busiSubmit(serviceid,pid,pname)
	{
		// ��ҳ-¥��-�˻���Ʒ¥���pvModelElementId����Ϊ��busiindex
		addPvValue(['pvModelElementId','busiindex']);
		try{ar_main();}catch(e){}
		//���pvModelElementId
		addPvValue(['pvModelElementId','']);
		logPV(serviceid,pid,pname,1);
		// ԭ�ӷ����ύ
		AtomSerivceSubmit(serviceid, '');
	}
</script>
</html>
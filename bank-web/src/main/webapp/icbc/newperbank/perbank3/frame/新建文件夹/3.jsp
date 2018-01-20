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
                        <h6 class="tit-tt">账户能源</h6>
                        <div class="zhanghushangpin-centent-list-main">
                            <div class="centent-box">
                            	<p>以人民币或美元买卖能源份额的投资交易产品，只计份额、不提取实物。</p>
                            </div>
                            <a class="tijiao-btn" href="javascript:busiSubmit('PBL201321','18','账户能源');">交易</a>
                        </div>
                    </div>
                    <div class="licaitouzi-centent-list">
                    	<div class="zhanghushangpin-ad img-3"></div>
                        <h6 class="tit-tt">账户农产品</h6>
                        <div class="zhanghushangpin-centent-list-main">
                           <div class="centent-box">
                            	<p>以人民币或美元买卖农产品份额的投资交易产品，只计份额、不提取实物。</p>
                            </div>
                            <a class="tijiao-btn" href="javascript:busiSubmit('PBL201322','41','账户农产品');">交易</a>
                        </div>
                    </div>
                    <div class="licaitouzi-centent-list last">
                    	<div class="zhanghushangpin-ad img-1"></div>
                        <h6 class="tit-tt">账户基本金属</h6>
                        <div class="zhanghushangpin-centent-list-main">
                        	<div class="centent-box">
                            	<p>以人民币或美元买卖基本金属份额的投资交易产品，只计份额、不提取实物。</p>
                            </div>
                            <a class="tijiao-btn" href="javascript:busiSubmit('PBL201323','42','账户基本金属');">交易</a>
                        </div>
                    </div>
                </div>
            </div>
</body>
<script>
	function busiSubmit(serviceid,pid,pname)
	{
		// 首页-楼层-账户商品楼层的pvModelElementId定义为：busiindex
		addPvValue(['pvModelElementId','busiindex']);
		try{ar_main();}catch(e){}
		//清空pvModelElementId
		addPvValue(['pvModelElementId','']);
		logPV(serviceid,pid,pname,1);
		// 原子服务提交
		AtomSerivceSubmit(serviceid, '');
	}
</script>
</html>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/25
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <title>网上贷款-申请贷款-产品列表</title>
</head>
<form name="form1" method="post" action="${pageContext.request.contextPath}/servlet/ICBCBaseReqServletNoSession">
    <input type="hidden" name="dse_operationName" value="per_LoanProductListNoSessionOp">
</form>

<script language=javascript>
    form1.submit();
</script>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <%@include file="page/commonFile.jsp"%>
</head>
<body bgcolor="#555555">
<%--导航条--%>

<div class="container" style="margin-top: 100px;">
    <div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
    <div class="panel panel-success">
    <div class="panel-heading text-center">Register</div>
    <div class="panel-body">
    <form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/register">
	<div class="form-group">
	<label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
	<div class="col-sm-10">
		<input type="text" required name="username" class="form-control" id="inputEmail3" placeholder="请输入用户名">
	</div>
	</div>
	<div class="form-group">
	<label for="inputPassword3" class="col-sm-2 control-label">密码</label>
	<div class="col-sm-10">
		<input type="password" required name="password" class="form-control" id="inputPassword3" placeholder="请输入密码">
	</div>
	</div>
	<div class="form-group">
	<label for="inputPassword3" class="col-sm-2 control-label">确认密码</label>
	<div class="col-sm-10">
	<input type="password" required name="password2" class="form-control"  placeholder="请输入密码">
	</div>
	</div>
	<div class="form-group">
	<div class="col-sm-offset-2 col-sm-10">
	<button type="submit" class="btn btn-primary">注册</button>
	<a href="index.jsp" class="btn btn-default">返回登录</a><br>
	<font size="2px" color="red">${error}</font>
	</div>
	</div>
    </form>
    </div>
    </div>
    </div>
<div class="col-sm-3"></div>
</div>
</div>
<script>
	<c:if test="${add == 'true'}">
	<%session.removeAttribute("add");%>
	layer.msg("注册成功");
	</c:if>
</script>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <%@include file="commonFile.jsp"%>
</head>
<body bgcolor="#778899">
<%--导航条--%>
<%@include file="head.jsp"%>
<div class="container" style="margin-top: 100px;">
    <div class="row">
    	<table class="table table-hover table-bordered">
 			<tr>
 				<th>编号</th>
 				<th>商品</th>
 				<th>价格</th>
 				<th>数量</th>
 				<th>类型</th>
 				<th>保质期</th>
 				<th>加入时间</th>
 				<th>数量</th>
 				<th>操作</th>
 			</tr>
 			 <c:forEach items="${goods}" var="g">
           		<tr>
 					<td>${g.id }</td>
 					<td>${g.name }</td>
 					<td>${g.price }</td>
 					<td>${g.count }</td>
 					<td>${g.type }</td>
 					<td>${g.bzq }</td>
 					<td>${g.date }</td>
 					<form action="${pageContext.request.contextPath}/buyGoods" method="post">
 					<input name="gId" value="${g.id }" type="hidden"/>
 					<input name="price" value="${g.price }" type="hidden"/>
 					<td>
						<select name="count">
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  <option value="5">5</option>
						</select>
					</td>
 					<td><button type="submit" class="btn btn-warning btn-sm">购买</button></td>
 					</form>
 					
 				</tr>
       		 </c:forEach>
 			
		</table>

    </div>
</div>
<script>
	<c:if test="${add == 'true'}">
	<%request.removeAttribute("add");%>
	layer.msg("购买成功");
	</c:if>
</script>
</body>
</html>

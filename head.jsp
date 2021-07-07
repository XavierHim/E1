<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--头部导航条--%>
<nav class="navbar navbar-default navbar-fixed-top" style="height: 70px;padding-top: 5px">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}/Main">首页 <span class="sr-only">(current)</span></a></li>
            </ul>
            <form class="navbar-form navbar-left" method="post" action="${pageContext.request.contextPath}/Main">
                <div class="form-group">
                    <input type="text" name="keyword" class="form-control" placeholder="商品名/类型">
                </div>
                <button type="submit" class="btn btn-primary">查询</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">${user.username}</a></li>
                <li><a href="${pageContext.request.contextPath}/logout">退出系统</a></li>
            </ul>
        </div>
    </div>
</nav>
</div>


<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap/bootstrap.min.js"></script>
<title>BootStrap Demos</title>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" href="#">菜鸟教程</a>
	</div>
	<div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">iOS</a></li>
			<li><a href="#">SVN</a></li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					Java
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
					<li><a href="#">jmeter</a></li>
					<li><a href="#">EJB</a></li>
					<li><a href="#">Jasper Report</a></li>
					<li class="divider"></li>
					<li><a href="#">分离的链接</a></li>
					<li class="divider"></li>
					<li><a href="#">另一个分离的链接</a></li>
				</ul>
			</li>
		</ul>
	</div>
	</div>
</nav>

<h1>bootstrap icon</h1>   
    <span class="glyphicon glyphicon-home"></span>
    <span class="glyphicon glyphicon-signal"></span>
    <span class="glyphicon glyphicon-cog"></span>
    <span class="glyphicon glyphicon-apple"></span>
    <span class="glyphicon glyphicon-trash"></span>
    <span class="glyphicon glyphicon-play-circle"></span>
    <span class="glyphicon glyphicon-headphones"></span>
    
<h1>Button</h1>
    <button type="button" class="btn btn-default">default</button>
    <button type="button" class="btn btn-primary">primary</button>
    <button type="button" class="btn btn-success">success</button>
    <button type="button" class="btn btn-info">info</button>
    <button type="button" class="btn btn-warning">warning</button>
    <button type="button" class="btn btn-danger">danger</button>
    
<h1>Button Size</h1>
    <button type="button" class="btn btn-primary">normal</button>
    <button type="button" class="btn btn-primary btn-lg">btn-lg</button>
    <button type="button" class="btn btn-primary btn-sm">btn-sm</button>
    <button type="button" class="btn btn-primary btn-xs">btn-xs</button>

<h1>把图标显示在按钮里</h1>
    <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;按钮</button>

<h1>下拉菜单</h1>
	<div class="dropdown">
		<button type="button" class="btn dropdown-toggle" id="dropdownMenu1" 
				data-toggle="dropdown">
			主题
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
			<li role="presentation">
				<a role="menuitem" tabindex="-1" href="#">Java</a>
			</li>
			<li role="presentation">
				<a role="menuitem" tabindex="-1" href="#">数据挖掘</a>
			</li>
			<li role="presentation">
				<a role="menuitem" tabindex="-1" href="#">数据通信/网络</a>
			</li>
			<li role="presentation" class="divider"></li>
			<li role="presentation">
				<a role="menuitem" tabindex="-1" href="#">分离的链接</a>
			</li>
		</ul>
	</div>

</body>
</html>
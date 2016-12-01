<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<%@ include file="/WEB-INF/pages/include/core.jsp"%>
<title>从入门到gg</title>
</head>
<body>
<nav class="navbar navbar-default mb0" role="navigation">
		<div class="container">
			<img class="logoimage" alt="gg" src="${ctx }/image/cat.png" height="50px">
			<div id="navbar" class="nav-menu fl p100">
				<ul class="nav navbar-nav">
					<li><a href="#">Java</a></li>
				</ul>
			</div>
			<div id="navbar" class="nav-menu fr">
				<ul class="nav navbar-nav">
					<li><a href="#">首页</a></li>
					<li><a href="#">登录</a></li>
				</ul>
			</div>
		</div>
</nav>
<header class="jumbotron site-header">
	<h1>From begin to GG</h1>
    <p class="lead">GG doesn't mean give up, maybe better view when standing on those giant's shoulder.</p>
</header>
<section class="bg-img">
	<div class="container">
	    <c:forEach items="${ articles}" var="article">
		   	 	<div class="row margin-lr-0">
		    		<h2><a href="${ctxAP }/article/${article.id}">${ article.title}<span style="color:#8080c0">———</span>${ article.subTitle} </a></h2>
			        <p>描述：${ article.description}</p>
			    </div>
			    <div class="row margin-lr-0">
			        <a class="fr" href="${ctxAP }/article/edit/${article.id}">修改 &raquo;</a>
			    </div>
		    <hr style="height:3px;border-top:1px solid skyblue;" >
	    </c:forEach>
	    
		<div class="footer">
	        <p>&copy; Company 2013</p>
	    </div>
	</div> <!-- /container -->
</section>
</body>
</html>
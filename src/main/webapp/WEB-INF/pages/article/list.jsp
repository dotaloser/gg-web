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
<nav class="navbar navbar-default" role="navigation">
		<div class="container">
			<img class="logoimage" alt="gg" src="${ctx }/image/cat.png" height="50px">
			<div id="navbar" class="collapse navbar-collapse nav-menu">
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

<div class="container">
    <!-- Example row of columns -->
    <div class="row-fluid">
      <c:forEach items="${ articles}" var="article">
      	<div class="span4">
	        <h2>${ article.title}----${ article.subTitle}</h2>
	        <p>${ article.description}</p>
	        <p><a class="btn" href="${ctxAP }/article/${article.id}">View details &raquo;</a></p>
	        <p><a class="btn" href="${ctxAP }/article/edit/${article.id}">修改 &raquo;</a></p>
      	</div>
      </c:forEach>
    </div>

    <hr>
    
	<div class="footer">
        <p>&copy; Company 2013</p>
    </div>
</div> <!-- /container -->
</body>
</html>
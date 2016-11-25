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
<div class="container">

	<div class="navbar navbar-default" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"> <img alt="Brand"
					src="${ctx }/image/cat.png" height="40px">
				</a>
			</div>
			<div>
				<ul class="nav navbar-nav">
					<li><a href="#">Java</a></li>
					<li><a href="#">Waiting</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- Jumbotron -->
    <div class="jumbotron">
      <h1>From begin to GG</h1>
      <p class="lead">GG doesn't mean give up, maybe better view when standing on those giant's shoulder.</p>
    </div>
      
    <hr>
    
    <!-- Example row of columns -->
    <div class="row-fluid">
      <c:forEach items="${ articles}" var="article">
      	<div class="span4">
	        <h2>${ article.title}----${ article.subTitle}</h2>
	        <p>${ article.description}</p>
	        <p><a class="btn" href="${ctxAP }/article/${article.id}">View details &raquo;</a></p>
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
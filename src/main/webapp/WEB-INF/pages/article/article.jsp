<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<%@ include file="/WEB-INF/pages/include/core.jsp"%>
<link href="${ctx}/css/article/blog.css" rel="stylesheet">
<link href="${ctx}/ckeditor/plugins/codesnippet/lib/highlight/styles/${article.highlightStyle }.css" rel="stylesheet">
<script src="${ctx}/ckeditor/plugins/codesnippet/lib/highlight/highlight.pack.js"></script>
<title>从入门到gg</title>
</head>
<body>
<section class="bg-img">
	<nav class="navbar navbar-default" role="navigation">
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
	
	<div class="container article-frame">
		<div class="row">
			<h2 class="article-title">${article.title }----${article.subTitle }</h2>
		</div>	
		<div class="row">
			  <p class="fr article-info">${article.authorId } 发表于： ${fns:formatDate(article.createTime, "yyyy-MM-dd") } </p>
		</div>
		<hr>	
		<div class="row row-desc">
			  <p class="article-desc">简述：${article.description }</p>
		</div>	
	    <hr>	     
	    <div class="row">
	    	<div class="article-content">${article.content }</div>
	    </div>
	</div>
	
</section>

<footer class="footer">
     <div class="container">
       <p>&copy; Company 2013</p>
     </div>
</footer>
<script type="text/javascript">
$(document).ready(function() {
	  $('pre code').each(function(i, block) {
	    hljs.highlightBlock(block);
	  });
	});
/* $(function(){ this does not work...
	hljs.initHighlightingOnLoad();
});  */
</script>
</body>
</html>
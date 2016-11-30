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
	   
	<!-- Example row of columns -->
    <div class="row-fluid">
          <div class="blog-post">
            <h2 class="blog-post-title">${article.title }----${article.subTitle }</h2>
            <p class="blog-post-meta"><a href="#">${article.authorId }</a> 发表于： ${fns:formatDate(article.createTime, "yyyy-MM-dd") } </p>
            <p>简述：${article.description }</p>
            <hr>
            <p>${article.content }</p>
          </div>
    </div>
</div>
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
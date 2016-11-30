<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<%@ include file="/WEB-INF/pages/include/core.jsp"%>
<script src="${ctx}/ckeditor/ckeditor.js"></script>
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
	
	
	
	<form method="post">
		<label>类别: </label><input type="text" name="catalog" value="${article.catalog }">
		<label>标题: </label><input type="text" name="title" value="${article.title }">
		<label>子标题: </label><input type="text" name="subTitle" value="${article.subTitle }">
		<label>描述: </label><input type="text" name="description" value="${article.description }">
		<select id="select" name="highlightStyle"></select>
        <textarea name="content" id="content" rows="10" cols="80" style="height: 1600px;" >
        	${article.content }
        </textarea>
        <script>
           CKEDITOR.replace( 'content' );
        </script>
        <input type="submit" value="提交"></input>
    </form>
	
</div>
<script type="text/javascript" src="${ctx }/js/highlight-theme.js"></script>
</body>
</html>
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
<section class="bg-img">
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
	
	<div class="container mt30">
		<form method="post">
			<div class="form-group row">
				<div class="col-sm-1">
			   <label for="catalog" class="col-form-label">类别: </label>
				</div>
			  <div class="col-sm-4">
			   <input type="text" name="catalog" class=" form-control-sm" id="catalog" placeholder="文章分类" value="${article.catalog }">
			  </div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-1">
			   <label for="catalog" class="col-form-label">标题: </label>
				</div>
			  <div class="col-sm-3">
			   <input type="text" name="title" class=" form-control" id="title" placeholder="文章标题" value="${article.title }">
			  </div>
			  
			  <div class="col-sm-1">
			   <label for="catalog" class="col-form-label">子标题: </label>
				</div>
			  <div class="col-sm-5">
			   <input type="text" name="subTitle" class=" form-control" id="subTitle" placeholder="文章子标题" value="${article.subTitle }">
			  </div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-1">
			   <label for="catalog" class="col-form-label">描述: </label>
				</div>
			  <div class="col-sm-9">
			  	<textarea id="description" name="description" class="form-control" id="exampleTextarea" placeholder="介绍下吧" rows="3">${article.description }</textarea>
			  </div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-1">
			   <label for="catalog" class="col-form-label">代码风格: </label>
				</div>
			  <div class="col-sm-4">
			   <select id="select" name="highlightStyle"></select>
			  </div>
			</div>
			
			   <textarea name="content" id="content" rows="10" cols="80" style="height: 1600px;" >
			      ${article.content }
			    </textarea>
			<div class="form-group mt30">
				<label class="col-sm-10 control-label"></label>
				<div class="col-sm-1">
				 	<button id="operation" type="submit" class="btn btn-success">${op}</button>
		    	</div>
		    	<div class="col-sm-1">
					<button  id="hdGoBack" type="button" class="btn btn-warning" >返回</button>
		    	</div>
		    </div>
  		</form>
	</div>
	
    <footer class="footer mt30">
      <div class="container">
        <p>&copy; Company 2013</p>
      </div>
    </footer>
	
</section>
<script type="text/javascript" src="${ctx }/js/highlight-theme.js"></script>
<script>
	$(function(){
		CKEDITOR.replace( 'content' );
	});
</script>
</body>
</html>
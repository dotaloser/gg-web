<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<!-- Bootstrap -->
<%@ include file="/WEB-INF/pages/include/core.jsp"%>
<title>BootStrap Demos</title>
</head>
<body>
	<div class="container">
		<h1>Twitter bootstrap tutorial</h1>
		<nav class="navbar navbar-inverse">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-menu"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Brand</a>
			</div>
			<div id="navbar-menu" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">Page One</a></li>
					<li><a href="#">Page Two</a></li>
				</ul>
			</div>
		</nav>

		<div id="content" class="row-fluid">
			<div class="col-md-9">
				<h2>Main Content Section</h2>
				<p>Licensed to the Apache Software Foundation (ASF) under one
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.<p>
<img src="${ctx }/uploadImage/Desert.jpg" alt="哈哈" height="300">
			</div>
			<div class="col-md-3">
				<h2>R Sidebar</h2>
				<ul class="nav nav-tabs nav-stacked">
					<li><a href='#'>Another Link 1</a></li>
					<li><a href='#'>Another Link 2</a></li>
					<li><a href='#'>Another Link 3</a></li>
				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4">.col-md-4</div>
			<div class="col-md-8">.col-md-8</div>
		</div>
		<div class="row">
			<div class="col-md-4">.col-md-4</div>
			<div class="col-md-4">.col-md-4</div>
			<div class="col-md-4">.col-md-4</div>
		</div>
		<div class="row">
			<div class="col-md-3">.col-md-3</div>
			<div class="col-md-6">.col-md-6</div>
			<div class="col-md-3">.col-md-3</div>
		</div>
		<div class="row">
			<div class="col-md-1">.col-md-1</div>
			<div class="col-md-1">.col-md-1</div>
			<div class="col-md-1">.col-md-1</div>
			<div class="col-md-1">.col-md-1</div>
			<div class="col-md-1">.col-md-1</div>
			<div class="col-md-1">.col-md-1</div>
			<div class="col-md-1">.col-md-1</div>
			<div class="col-md-1">.col-md-1</div>
			<div class="col-md-1">.col-md-1</div>
			<div class="col-md-1">.col-md-1</div>
			<div class="col-md-1">.col-md-1</div>
		</div>
	</div>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<%@ include file="/WEB-INF/pages/include/core.jsp"%>
<link href="${ctx}/css/gg/backtop.css" rel="stylesheet">
<title>从入门到gg</title>
</head>
<body>
<p id="back-to-top"><a href="#top"><span></span>返回顶部</a></p>
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
<section class="bg-img main">
	<div class="container ">
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
	</div> <!-- /container -->
</section>

<footer class="footer">
     <div class="container">
       <p>&copy; Company 2013</p>
       
       <div class="row">
			<div class="col-md-8 col-sm-6 col-xs-12">
				<p class="copyright-text"> Copyrights &copy; 2016 All Rights Reserved by <a href="http://weibo.com/522912334" target="weibo">VAGH</a></p>
			</div>

			<div class="col-md-4 col-sm-6 col-xs-12">
				<p class="back-to-top"><a id="scroll-up" href="#">返回顶部</a></p>
			</div>
		</div>
     </div>
</footer>

<script>
$(function(){
        //当滚动条的位置处于距顶部100像素以下时，跳转链接出现，否则消失
        $(function () {
            $(window).scroll(function(){
                if ($(window).scrollTop()>100){
                    $("#back-to-top").fadeIn(1500);
                }
                else
                {
                    $("#back-to-top").fadeOut(1500);
                }
            });
 
            //当点击跳转链接后，回到页面顶部位置
 
            $("#back-to-top").click(function(){
                $('body,html').animate({scrollTop:0},1000);
                return false;
            });
        });
    });
</script>

</body>
</html>
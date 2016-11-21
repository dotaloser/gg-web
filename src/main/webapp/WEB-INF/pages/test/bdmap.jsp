<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp"%>
<!DOCTYPE html>  
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />  
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=gwMiogkOPQuEI1RCZOA32dgqdFvLLILt"></script>
<%@ include file="/WEB-INF/pages/include/core.jsp"%>
<style type="text/css">  
#bmap{height:400;width:400}  
.col-center-block {
    float: none;
    display: block;
    margin-left: auto;
    margin-right: auto;
}
</style>  
<title>从入门到gg</title>
</head>
<body>
<div class="container-fluid">
		<div id="bmap" class="col-center-block">
		</div>
</div>
</body>
<script type="text/javascript">

	var map = new BMap.Map("bmap");          // 创建地图实例  
	var point = new BMap.Point(116.404, 39.915);  // 创建点坐标  
	map.centerAndZoom(point, 15);                 // 初始化地图，设置中心点坐标和地图级别  
</script>
</html>
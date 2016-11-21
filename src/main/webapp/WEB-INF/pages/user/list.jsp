<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp"%>
<!DOCTYPE html>  
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />  
<%@ include file="/WEB-INF/pages/include/core.jsp"%>
<title>从入门到gg</title>
</head>
<body>
<div class="container-fluid">

	<form class="form-inline" method="post">
        <div class="form-group">
            <label class="control-label">用户名</label>
            <input id="userName" name="userName" class="form-control" type="text" value="${condition.userName }" style="width:120px;"/>
        </div>
        <div class="form-group  ml16">
            <label class="control-label">电话</label>
            <input id="phone" name="phone" class="form-control" type="text" value="${condition.phone }" style="width:120px;"/>
        </div>
       	<button type="submit" class="btn btn_main ml16">查询</button>
       	<button type="button" id="reset" class="btn btn_secondary ml6">重置</button>
		<button type="button" id='create' class="btn btn_main ml16">新增用户</button>
   </form>
   
		<table class="table table-hover table-bordered mt-20">
			<thead>
				<tr>
					<th>序号</th>
					<th>用户名</th>
					<th>昵称</th>
					<th>电话</th>
					<th>邮箱</th>
					<th>创建时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${users }" varStatus="status">
					<tr>
						<td>${status.index+1 }</td>
						<td>${item.userName }</td>
						<td>${item.nickName }</td>
						<td>${item.phone }</td>
						<td>${item.email }</td>
						<td>${fns:formatDate(item.createTime, "yyyy-MM-dd") }</td>
						<td>
							<a class="delete" id="${item.id }" href="#">删除</a>
							<a class="update" id="${item.id }" href="#">修改</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
<script type="text/javascript">
	$('#create').click(function(){
		window.location = ctxAP + "/user/add";
	});

	$('.update').click(function() {
        var id = $(this).attr('id');
        window.location = ctxAP +'/user/'+ id + '/update';
	});
	
	$('.delete').click(function() {
        var id = $(this).attr('id');
		BootstrapDialog.confirm("您确定要删除吗？", function(result) {
            if (result) {
                var url = ctxAP +'/user/'+ id + '/delete';
                window.location = url ;
            }
       });
	});
	
	$('#reset').click(function(){
		$('#userName').val('');
		$('#phone').val('');
	});
</script>
</html>
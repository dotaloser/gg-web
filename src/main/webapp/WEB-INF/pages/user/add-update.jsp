<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/pages/include/core.jsp"%>
<title>from begin 2 gg</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<form method="post">
				<label>用户名:</label>
				<input name="userName" value="${user.userName }"/>
				<c:if test="${op == '添加'}">
					<label>密码:</label>
					<input type="password" name="password" value="${user.password }"/>
				</c:if>
				
				<label>昵称:</label>
				<input name="nickName" value="${user.nickName }"/>
				
				<label>电话:</label>
				<input name="phone" value="${user.phone }"/>
				
				<label>邮箱:</label>
				<input name="email" value="${user.email }"/>
				
				<input type="submit" value="${op }"/>
				<button id="goBack" type="button" class="btn btn_secondary ml6">返回</button>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript">
	$('#create').click(function() {
		windows.location = ctx + "/user/add";
	});
</script>
</html>
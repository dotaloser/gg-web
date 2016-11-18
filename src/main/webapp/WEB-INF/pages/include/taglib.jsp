<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fns" uri="/WEB-INF/tlds/fns.tld" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="ctxAP" value="${pageContext.request.contextPath}${fns:getAdminPath()}"/>

<script type="text/javascript">
	var ctx = '${ctx}';
	var ctxAP = '${ctxAP}'
</script>
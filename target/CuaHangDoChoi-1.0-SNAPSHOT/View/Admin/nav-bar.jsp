<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-default navbar-cls-top " role="navigation"
	style="margin-bottom: 0">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".sidebar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="${pageContext.request.contextPath }/admin">Dashboard</a>
	</div>
	<div
		style="color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;">
		${sessionScope.adminAccount.name} &nbsp; <a href="${pageContext.request.contextPath }/admin/logout"
			class="btn btn-danger square-btn-adjust">Đăng xuất</a>
	</div>
</nav>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
	<head>
		<title>Spring Security</title>
	</head>
	<body>
		<p>
			<!-- show Leader link to only who has ADMIN Roles  -->
			<security:authorize access="hasRole('ADMIN')">
				<a href="${pageContext.request.contextPath}/leaders">Leaders</a>
			</security:authorize> 
			
			&nbsp; 
			
			<!-- show Leader link to only who has MANAGER Roles  -->
			<security:authorize access="hasRole('MANAGER')">
				<a href="${pageContext.request.contextPath}/system">System</a>
			</security:authorize>
			
		</p>
		<p>Hello in the Spring Security Demo App</p> 
		
		<hr>
		<!-- display the username -->
		<p>Username: <security:authentication property="principal.username"/></p>
		
		<!-- display the user's roles (authorities) -->
		<p>Roles: <security:authentication property="principal.authorities"/>
		
		<hr>
		
		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
			<button type="submit">Logout</button>
		</form:form>		
	</body>
</html>
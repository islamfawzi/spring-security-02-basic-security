<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<title>Custom Login Page</title>
	</head>
	
	<body>
			<c:if test="${param.error != null}">
				
				<p style="color:#f00;">Invalid Username or Password</p>
			
			</c:if>
			
			<!-- form:form automatically add CSRF token -->
			<!-- if you do not used form:form and used normal html <form> tag -->
			<!-- you must add the CSRF token manually -->
			<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
	
				<!-- if you used normal html <form> tag instead of form:form tag -->
				<!-- you must add this line -->
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	
				<p>
					Username: <input type="text" name="username" />
				</p>
				<p>
					Password: <input type="password" name="password"/>
				</p>
				
				<input type="submit" value="Login" />
			
			</form:form>		
	</body>
</html>
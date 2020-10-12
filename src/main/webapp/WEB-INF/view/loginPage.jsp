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
			
			<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
	
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
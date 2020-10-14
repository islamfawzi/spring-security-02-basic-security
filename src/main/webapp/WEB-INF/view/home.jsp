<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
	<head>
		<title>Spring Security</title>
	</head>
	<body>
		<p>Hello in the Spring Security Demo App</p> 
		
		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
			<button type="submit">Logout</button>
		</form:form>		
	</body>
</html>
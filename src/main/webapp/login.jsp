<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/sharedcomponents/navbar.jsp"/>

	<div class="mt-5">
		<h2 class=" d-flex justify-content-center col-12">Welcome</h2>

	    <div class="d-flex justify-content-center">
			<s:form action="calculateSumAction" method="post">
		    	<s:textfield name="usernane" size="10" label="Username" />
		        <s:textfield name="password" size="10" label="Password" />
		        <s:submit class="col-12" value="Login" />
		    </s:form>
	    </div>       
    </div>
</body>
</html>
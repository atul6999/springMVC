<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Goal Page</title>
<style>
.error{
	color:red
}
.errorBlock{
	color: white;
	background: red;
	border: 3px solid red;
	margin: 3px;
	padding: 8px
}
</style>
</head>
<body>
Language: <a href="?language=en">English</a> | <a href="?language=hn">Hindi</a>
<form:form commandName="goal">
<form:errors cssClass="errorBlock" element="div" path="*" />
	<table>
		<tr>
			<td><spring:message code="goal.enterText"/></td>
			<td><form:input path="minutes" cssErrorClass="error"/></td>
			<td><form:errors cssClass="error" path="minutes"/></td>
		</tr>
		<tr>
			<spring:message code="goal.enterButtonText" var="buttonValue"/>
			<td colspan="3"><input type="submit" value="${buttonValue}"/></td>
		</tr>
	</table>
</form:form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cristal</title>
<link rel="stylesheet" type="text/css" href="./static/css/main.css">
<link rel="stylesheet" type="text/css" href="./static/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./static/css/bootstrap-grid.min.css">
<link rel="stylesheet" type="text/css" href="./static/css/bootstap-reboot.min.css">
<script type="text/javascript" src="./static/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="./static/js/bootsrap.min.js"></script>
<script type="text/javascript" src="./static/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="./static/js/main.js"></script>
</head>
<body>
Language: <a href="?language=en">English</a> | <a href="?language=hn">Hindi</a>
<form:form commandName="exercise">
<form:errors cssClass="errorBlock" element="div" path="*" />
	<table>
		<tr>
			<td><spring:message code="goal.enterText"/></td>
			<td><form:input path="minutes" cssErrorClass="error"/></td>
			<td><form:select path="activity" id="activities"/></td>
		</tr>
		<tr>
			<spring:message code="goal.enterButtonText" var="buttonValue"/>
			<td colspan="3"><input type="submit" value="${buttonValue}"/></td>
		</tr>
	</table>
</form:form>
</body>
</html>
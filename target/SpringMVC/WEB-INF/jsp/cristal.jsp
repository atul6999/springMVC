<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cristal</title>
<spring:url value="/static/css/main.css" var="mainCss" />
<spring:url value="/static/css/bootstrap.min.css" var="bootstrapCss" />
<spring:url value="/static/css/bootstrap-grid.min.css" var="bootstrapGridCss" />
<spring:url value="/static/css/bootstrap-reboot.min.css" var="bootstrapRebootCss" />
<spring:url value="/static/js/jquery-3.3.1.js" var="jqueryJs" />
<spring:url value="/static/js/bootstrap.min.js" var="bootstrapJs" />
<spring:url value="/static/js/bootstrap.bundle.min.js" var="bootstrapBundleJs" />
<spring:url value="/static/js/main.js" var="mainJs" />	
<link rel="stylesheet" type="text/css" href="${mainCss}">
<link rel="stylesheet" type="text/css" href="${bootstrapCss}">
<link rel="stylesheet" type="text/css" href="${bootstrapGridCss}">
<link rel="stylesheet" type="text/css" href="${bootstrapRebootCss}">
<script type="text/javascript" src="${jqueryJs}"></script>
<script type="text/javascript" src="${bootstrapJs}"></script>
<script type="text/javascript" src="${bootstrapBundleJs}"></script>
<script type="text/javascript" src="${mainJs}"></script>
</head>
<body>
<div class="container col-lg-10">
Language: <a href="?language=en">English</a> | <a href="?language=hn">Hindi</a>
<form:form commandName="exercise">
<form:errors cssClass="errorBlock" element="div" path="*" />
	<table >
		<tr>
			<td><spring:message code="goal.enterText"/></td>
			<td><form:input path="minutes" cssErrorClass="error"/></td>
			<td><form:errors cssClass="error" path="minutes"/></td>
			<td><form:select path="activity" id="activities" class="dropdown"/></td>
		</tr>
		<tr>
			<spring:message code="goal.enterButtonText" var="buttonValue"/>
			<td colspan="4"><input type="submit" class="btn btn-default" value="${buttonValue}"/></td>
		</tr>
	</table>
</form:form>
</div>
</body>
</html>
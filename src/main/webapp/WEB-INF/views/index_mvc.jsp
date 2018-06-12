<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring Web MVC Test</title>
</head>
<body>
<p>ここに受け取ったメッセージが表示されます。</p>
<p>${msg}</p>
<form:form action="index" modelAttribute="test">
<form:input path="text" /><form:errors path="text" cssStyle="color: red"/>
<form:button>送信</form:button>
</form:form>
</body>
</html>
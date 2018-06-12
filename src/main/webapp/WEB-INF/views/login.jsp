<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ログイン画面</title>
<link href="css/commons.css" rel="stylesheet">
</head>
<body>
<p> ${msg} </p>
<form:form action="menu" modelAttribute="login">
    <div>
      <label>ID</label><form:input path="id" /><form:errors path="id" cssStyle="color: red"/>
    </div>
    <div>
      <label>PASS</label><form:input path="pass" /><form:errors path="pass" cssStyle="color: red"/>
    </div>
  	<form:button>ログイン</form:button>
</form:form>
</body>
</html>

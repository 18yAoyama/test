<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>一覧表示画面</title>
</head>
<body>
<table border="1">
  <caption>一覧表示画面</caption>
  <thead>
    <tr>
      <th>ID</th>
      <th>名前</th>
      <th>TEL</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${userlist}" var="user">
      <tr>
        <td>${fn:escapeXml(user.userId)}</td>
        <td>${fn:escapeXml(user.userName)}</td>
        <td>${fn:escapeXml(user.telNo)}</td>
      </tr>
    </c:forEach>
  </tbody>
</table>
</body>
</html>

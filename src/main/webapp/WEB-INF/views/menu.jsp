<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>メニュー画面</title>
<link href="css/commons.css" rel="stylesheet">
</head>
<body>
<c:if test="${empty Admin_name}">
<c:redirect url="/index" />
</c:if>
<p>${Admin_name}さん、こんにちは</p>

<p><a href="selectIn">検索</a></p>
<p><a href="insertIn">登録</a></p>
<p><a href="updateIn">更新</a></p>
<p><a href="deleteIn">削除</a></p>
<form action="logout" method="post">
  <input type="submit" value="ログアウト">
</form>
</body>
</html>

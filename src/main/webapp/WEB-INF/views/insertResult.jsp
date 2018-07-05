<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録結果確認画面</title>
<link href="css/commons.css" rel="stylesheet">
</head>
<body>
<p>正常に登録されました</p>
<form:form action="select" method="get" modelAttribute = "form">
  <form:button>検索</form:button>
</form:form>
<div>
  <a href="select2">ログインIDを確認する</a>
</div>
</body>
</html>
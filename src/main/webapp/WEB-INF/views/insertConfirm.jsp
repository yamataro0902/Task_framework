<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録確認画面</title>
<link href="css/commons.css" rel="stylesheet">
</head>
<body>

    <p class="message">${msg}</p>

<p>PASSを再入力してください</p>

<form:form action="insertConfirm" modelAttribute="form" method="post">
  <fieldset class="label-110">
    <div>
      <label>名前</label><form:input path="name" value="${fn:escapeXml(form.name)}" readonly="true"/>

    </div>

    <div>
      <label>PASS</label><form:input path="pass" value="${fn:escapeXml(form.pass)}" readonly="true"/>

    </div>
  </fieldset>
  <div>
    <form:button>登録</form:button>
    <form:button onclick="location.href='insert'; return false;">戻る</form:button>
  </div>
</form:form>
<div>
  <a href="login">ログインページへ</a>
</div>
</body>
</html>
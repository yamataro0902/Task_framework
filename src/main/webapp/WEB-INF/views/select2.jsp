<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>検索画面</title>
<link href="css/commons.css" rel="stylesheet">
</head>
<body>

    <p class="message">${msg}</p>

<p>登録したIDまたは名前を入力してください<br></p>

<form:form action="list2" modelAttribute="form" method="get">
  <fieldset>
    <div>
     <label>ID</label><form:input path="LoginId" value="${changeId}"/>
    </div>
    <div>
      <label>名前</label><form:input path="loginName" />
    </div>

  </fieldset>
  <form:button>検索</form:button>
</form:form>



<div>
  <a href="login">ログインページへ</a>
</div>



</body>
</html>


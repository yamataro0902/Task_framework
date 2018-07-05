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

<p>検索したい商品の情報を入力してください<br>
※全て空白の場合は商品一覧がでます。</p>

<form:form action="list" modelAttribute="form" method="get">
  <fieldset>
    <div>
      <label>NUMBER</label><form:input path="zoidsNumber" value="${changeId}"/>
    </div>
    <div>
      <label>名前</label><form:input path="zoidsName" />
    </div>
    <div>
      <label>価格</label><form:input path="money" />
    </div>
  </fieldset>
  <form:button>検索</form:button>
</form:form>



<div>
  <a href="menu">メニューに戻る</a>
</div>



</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メニュー画面</title>
<link href="css/commons.css" rel="stylesheet">
</head>
<body>
<div class="main">
<h3>ZOIDS レビューブログ</h3>
<p class="menu">
	<a href="select">商品レビュー</a>
</p>
<p class="menu">
	<a href="insert">ユーザー登録</a>
</p>
<p class="menu">
	<a href="update">ユーザー更新</a>
</p>
<p class="menu">
	<a href="delete">退会</a>
</p>

<p class="menu">
	<a href="select2">ユーザー情報確認</a>
</p>





</div>


<div class="next">

</div>



<div class="fotter">

<!-- <form:form action="logout" modelAttribute = "form">
  <form:button>ログアウト</form:button>
</form:form>-->

<a href="login">ログインページへ</a>

</div>
</body>
</html>
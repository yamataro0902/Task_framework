<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>検索結果画面</title>
<link href="css/commons.css" rel="stylesheet">
</head>
<body>



<p>＊価格は全て税抜き表示です。</p>
<p>名前をクリックすると、レビューに飛びます</p>
	<table border="1">
		<caption>検索結果</caption>
		<thead>
			<tr>
				<th>NUMBER</th>
				<th>名前</th>
				<th>価格</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${userList}">
				<tr>
					<td>${fn:escapeXml(user.zoidsNumber)}</td>
					<td><a href="${fn:escapeXml(user.zoidsNumber)}">
					${fn:escapeXml(user.zoidsName)}</a></td>
					<td>${fn:escapeXml(user.money)}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<a href="menu">メニューへ戻る</a>
<a href="login">ログインページへ</a>


</body>
</html>
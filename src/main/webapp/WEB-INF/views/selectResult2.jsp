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



<p></p>
<p></p>
	<table border="1">
		<caption>検索結果</caption>
		<thead>
			<tr>
				<th>ID</th>
				<th>名前</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${userList}">
				<tr>
					<td>${fn:escapeXml(user.loginId)}</td>
					<!--<a href="${fn:escapeXml(user.loginName)}">-->
					<td>${fn:escapeXml(user.loginName)}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<a href="login">ログインページへ</a>


</body>
</html>
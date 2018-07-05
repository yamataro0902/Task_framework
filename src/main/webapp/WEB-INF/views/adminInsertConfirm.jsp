<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beginner's Blog</title>
<link href="icon.png" rel="icon">
<link href="css/commons.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link href="css/topBack.css" rel="stylesheet">
</head>
<body class="top">
	<header>
		<h1>
			<a href="#">Beginner's Blog</a>
		</h1>
	</header>

	<div class="formAdInCon">
		<p class="form-title">管理者 登録情報確認ページ</p>

		<p class="headM">入力した情報を確認してください。</p>

		<form action="adminInsertConfirm.html" method="post">
			<p class="idText">ID</p>
			<p class="id">
				<input type="text" name="id" />
			</p>
			<p class="passText">PASS</p>
			<p class="pass">
				<input type="password" name="pass" />
			</p>

			<p id="headS">
				登録情報に間違いがなければ、<br>下の登録ボタンをクリックしてください！
			</p>
			<br> <a href="adminInsert.html" class="fl_tw4"> <i
				class="fa fa-twitter3"></i> <span>戻る</span>
			</a> <a href="adminInsertResult.html" class="fl_tw4"> <i
				class="fa fa-twitter3"></i> <span>登録</span>
			</a>

		</form>
		<p class="prof">
			<a href="superuserMypage.html">スーパーユーザメニューへ</a>
		</p>

	</div>


</body>
</html>

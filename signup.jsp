<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
<title>회원 가입</title>

<script>
	$(document).ready(function() {		
		$("#pw-confirm").keyup(function() {
			var origin = $("#pw").val();
			var confirm = $(this).val();
			if (origin == confirm) {
				var message = "일치합니다.";
			} else {
				var message = "패스워드가 일치하지 않습니다.";
			}
			$("#message").text(message);
		});
	});
</script>
</head>
<body>
	<div class="form-container">
		<h1>Sign up</h1>
		<form action="<c:url value="/signup" />" method="post">
			<div class="form-row">
				<label for="id">ID</label>
				<input id="id" type="text" name="id" value="${user.id }">
			</div>
			<div class="form-row">
				<label for="pw">PASSWORD</label>
				<input id="pw" type="password" name="password" value="${user.password }">
			</div>
			<div class="form-row">
				<label for="pw-confirm">PASSWORD CONFIRM</label>
				<input id="pw-confirm" type="password" value="${user.password}"> 
				<span id="message" class="message"></span>
			</div>
			<div class="form-row">
				<label for="nick-name">NICKNAME</label>
				<input id="nick-name" type="text" name="nick-name" value="${user.nickName }"><br>
			</div>
			<div class="form-row">
				<label for="email">E-MAIL</label>
				<input id="email" type="email" name="email" value="${user.email }"><br>
			</div>
			<div class="form-row">
				<input id="signup-submit" type="submit" value="가입">
			</div>
		</form>
	</div>
	<span class="message">${error }</span>

</body>
</html>

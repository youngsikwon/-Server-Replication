<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/common.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<meta name="format-detection" content="telephone=no">

<link rel="stylesheet" type="text/css" href="${res}/common/css/base.css">
<link rel="stylesheet" type="text/css" href="${res}/common/css/style.css">
<link rel="stylesheet" type="text/css"
	href="${res}/common/css/style.css">
<script src="${lib}/plugins/jquery/jquery-2.2.3.min.js"></script>
<title><%-- <tiles:getAsString name="title" /> --%>
</title>
<script>
$(function(){
	$("#btnLogin").click(function(){
		var userid=$("#user_id").val();
		var passwd=$("#user_pw").val();
		if(userid==""){
			alert("아이디를 입력하세요.");
			$("#user_id").focus();
			return;
		}
		if(passwd==""){
			alert("비밀번호를 입력하세요.");
			$("#user_pw").focus();
			return;
		}
		document.form1.action="${path}/auth/login_check";
		document.form1.submit();
	});
});
</script>
</head>

<body>
	<div class="login">
	<form name="form1" method="post">
<table border="1" width="400px">
	<tr>
		<td>아이디</td>
		<td><input id="user_id" name="user_id"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" id="user_pw" name="user_pw"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<button type="button" id="btnLogin">로그인</button>
			<c:if test="${param.message == 'nologin' }">
				<div style="color:red;">
					먼저 로그인하세요.
				</div>
			</c:if>
			<c:if test="${message == 'error' }">
				<div style="color:red;">
					아이디 또는 비밀번호가 일치하지 않습니다.
				</div>
			</c:if>
			<c:if test="${message == 'logout' }">
				<div style="color:red;">
					로그아웃되었습니다.
				</div>
			</c:if>
		</td>
	</tr>
</table>
</form>

		<div class="loginFooter">
			<p class="footerTx">
				<span class="highlight">성창 주식회사</span> <span class="bar"></span> <span
					class="tx">(28358) 충북 청주시 흥덕구 동촌로 149</span> <span class="bar"></span>
				<span class="num">Tel : 043.272.6552~3</span> <span class="bar"></span>
				<span class="num">Fax : 043.272.4884</span> <span class="bar"></span>
				<span class="tx">대표자 : 이재진</span>
			</p>
			<p class="copyright">Copyright (C) Sungchang telecom Co.,Ltd. All
				Rights Reserved.</p>
		</div>
	</div>
</body>
</html>


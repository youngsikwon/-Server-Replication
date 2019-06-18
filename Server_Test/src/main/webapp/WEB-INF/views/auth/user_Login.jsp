<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/include/common.jsp"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>태양광 모니터링 시스템 </title>

    <!-- Bootstrap -->
    <link href="${vendors}/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${vendors}/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${vendors}/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="${vendors}/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${build}/css/custom.min.css" rel="stylesheet">
  </head>
  <script>
$(function(){
	$("#btnLogin").click(function(){
		var userid=$("#user_id").val(); // 태그의 value 속성값
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
		document.form1.action="${path}/auth/user_login_check";
		document.form1.submit();
	});
});
</script>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper" style="background-color: blue">
        <div class="animate form login_form">
          <section class="login_content">
            <form name="form1" method="post">
              <h1>태양광 모니터링</h1>
              <div>
                <input type="text" class="form-control" placeholder="Username" id="user_id" name="user_id"  />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" id="user_pw" name="user_pw"  />
              </div>
              <div>
               <button   id="btnLogin" class="btn btn-lg btn-primary btn-block" type="submit">로 그 인</button>
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
			<c:if test="${message == 'logout'}">
				<div style="color:red;">
					로그아웃되었습니다.
				</div>
			</c:if>
              </div>

              <div class="clearfix"></div>

            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
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

    <title>태양광 모니터링 시스템 로그인 </title>

    <!-- Bootstrap -->
    <link href="${vendors}/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${vendors}/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${vendors}/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
<link href="${vendors}/animate.css/animate.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${res}/common/css/base.css">
<link rel="stylesheet" type="text/css"
	href="${res}/common/css/style.css">
<link rel="stylesheet" type="text/css"
	href="${res}/common/css/style.css">
<script src="${lib}/plugins/jquery/jquery-2.2.3.min.js"></script>

<!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
  </head>
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
  <body class="login">
    <div>
      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form name="form1" method="post">
              <h1>태양광 모니터링 시스템</h1>
              
  <label for="inputEmail" class="sr-only">ID</label>
        <input type="text" id="user_id" name="user_id" class="form-control" placeholder="Your ID" required autofocus><BR>
        
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="user_pw" name="user_pw" class="form-control" placeholder="Password" required><br>
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
			<c:if test="${message == 'logout' }">
				<div style="color:red;">
					로그아웃되었습니다.
				</div>
			</c:if>
              </div>

              <div class="clearfix"></div>

            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
   
          </section>
        </div>
      </div>
    </div>
    <!-- 스크립트 -->
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script type="text/javascript">
 	function execPostCode() {
 		new daum.Postcode({
 			oncomplete: function(data) { 
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다. 
                console.log(data.zonecode);
                console.log(fullRoadAddr);
                
                
                $("[name=signUpUserPostNo]").val(data.zonecode);
                $("[name=signUpUserCompanyAddress]").val(fullRoadAddr);
                
                /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
                document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
            }
 		}).open();
 	}
 </script>
 <!-- <!-- 생년월일 -->
<script type="text/javascript">
 $("#birthday_piker").datepicker({
          dateFormat: "yy-mm-dd" // inputbox 에 '2011/04/29' 로표시
          , changeMonth: true // 월선택 select box 표시 (기본은 false)
          ,changeYear: true  // 년선택 selectbox 표시 (기본은 false)
          ,monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
          ,monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
          ,dayNames: ['일', '월', '화', '수', '목', '금', '토']
          ,dayNamesShort: ['일', '월', '화', '수', '목', '금', '토']
          ,dayNamesMin: ['일', '월', '화', '수', '목', '금', '토']
          ,showMonthAfterYear: true
          ,yearSuffix: '년'
          ,defaultDate : new Date(1985,01,-1) // 달력 시작날짜 지정 1985/01/01
         
    });
 </script>

 끝
    스크립트 끝
    비밀번호 입력 해주세요.
    <script type="text/javascript">
/* 	function DosignUp() {
		 
		var inputId = $("#signUpUserId").val();
		var inputPwd = $("#signUpUserPwd").val();
		var inputPwdCfm = $("#signUpUserPwdCfm").val();
		var inputCpnName = $("#signUpUserCompanyName").val();
		var inputCpnTelNo = $("#signUpUserTelNo").val();
		var inputCpnEmail = $("#signUpUserEmail").val();
		var inputCpnNo = $("#signUpUserCompanyNo").val();
		var inputCpnAddr1 = $("#signUpUserPostNo").val();
		var inputCpnAddr2 = $("#signUpUserCompanyAddress").val();
		var inputCpnAddr3 = $("#signUpUserCompanyAddressDetail").val();
		
		if(inputId.length == 0) { alert("아이디를 입력해 주세요."); $("#signUpUserId").focus(); return; }
		if(isCheckId == 0) { alert("아이디 중복 체크를 해주세요."); $("#signUpUserId").focus(); return; }
		
		if(inputPwd.length == 0) { alert("비밀번호를 입력해 주세요."); $("#signUpUserPwd").focus(); return; }
		if(inputPwd != inputPwdCfm) { alert("비밀번호가 서로 다릅니다. 비밀번호를 확인해 주세요."); $("#signUpUserPwd").focus(); return; }
		
		if(inputCpnName.length == 0) { alert("회사명을 입력해 주세요."); $("#signUpUserCompanyName").focus(); return; }
		
		if(inputCpnTelNo.length == 0) { alert("전화번호를 입력해 주세요."); $("#signUpUserTelNo").focus(); return; }
		
		if(inputCpnEmail.length == 0) { alert("이메일을 입력해 주세요."); $("#signUpUserEmail").focus(); return; }
		
		if(inputCpnNo.length == 0) { alert("사업자번호를 입력해 주세요."); $("#signUpUserCompanyNo").focus(); return; }
		
		if(inputCpnAddr1.length == 0 || inputCpnAddr2.length == 0 || inputCpnAddr3.length == 0) { 
			alert("주소를 입력해 주세요."); $("#signUpUserCompanyAddressDetail").focus();  return;
		}

			
		}
	} */
	</script> -->
 <!-- jQuery -->
    <script src="../resources/admin/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../resources/admin/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../resources/admin/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="../resources/admin/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="../resources/admin/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="../resources/admin/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../resources/admin/dist/js/sb-admin-2.js"></script>
  </body>
</html>

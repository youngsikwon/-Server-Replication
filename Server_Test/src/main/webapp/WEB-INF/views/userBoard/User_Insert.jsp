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
	  
    <title>태양광모니터링시스템</title> 

    <!-- Bootstrap -->
    <link href="${vendors}/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${vendors}/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${vendors}/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="${vendors}/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="${vendors}/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="${vendors}/select2/dist/css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="${vendors}/switchery/dist/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="${vendors}/starrr/dist/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="${vendors}/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${build}/css/custom.min.css" rel="stylesheet">
     <style>
    x_panel {
        background: #f8f8f8;
        padding: 60px 0;
    }
    
    #form1 > div {
        margin: 15px 0;
    }
</style>
<style type="text/css">
.layer { display: none; }
</style>

  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
             <h3 align="center" style="color: white ; margin-top: 20px;"><span class="titleBold">태양광</span> <br />모니터링 시스템 </h3>
             <h3 align="center" style="color: #09f";>Solar<br>Monitioring<br>System</p>

              
            </div>


           <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic" style="margin-top: 130px;">
                <img src="${path}/image/admin.png" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info" style="margin-top: 130px;">
                   <h2 style="margin-bottom: 10px; margin-top: 15px;">       
                <c:choose>
	<c:when test="${sessionScope.user_id == null }">
	</c:when>
	<c:otherwise>
		${sessionScope.user_name}님
		<a type="button" class="" href="${path}/auth/logout.do">로그아웃</a>
	</c:otherwise>
</c:choose></h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

           <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <ul class="nav side-menu">
                    <li><a href="${path}/View/Details"><i class="fa fa-home"></i><h4><spring:message code="part.H1" text="default text"></spring:message></h4></a>
                  </li>
                  
                   <li><a><i class="fa fa-table"></i> <h4><spring:message code="part.H2" text="default text"></spring:message></h4> <span class="fa fa-chevron-down"></span></a>
                  
                    <ul class="nav child_menu">
    				  <li><a href="${path}/userBoard/User_Board"><h4><spring:message code="part.H3" text="default text"></spring:message></h4></a></li>
                      <li><a href="${path}/groupBoard/Group_Board"><h4><spring:message code="part.H4" text="default text"></spring:message></h4></a></li>
                      <li><a href="${path}/trackerBoard/Tracker_Board"><h4><spring:message code="part.H5" text="default text"></spring:message></h4></a></li>
                      <li><a href="${path}/inverterBoard/Inverter_Board"><h4><spring:message code="part.H6" text="default text"></spring:message></h4></a></li>
                    </ul>
                  </li>
                 </ul>
              </div>
    

            </div>
                </div>
        </div> <!-- left page 마무리 -->
            <!-- /sidebar menu -->
           <script type="text/javascript">
           function user_write(){
        	   
        	   var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
        	   var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        	   var user_id = $("#user_id").val();
        	   var user_pw = $("#user_pw").val();
        	   var user_pw2 = $("#user_pw2").val();
        	   var user_name = $("#user_name").val();
        	   var user_phone = $("#user_phone").val();
        	   var user_phone = $("#user_phone").val();
        	   var user_email = $("#user_email").val();
        	   var user_birth = $("#user_birth").val();
        	   var signUpUserCompanyAddress = $("#signUpUserCompanyAddress").val();
        	   var user_addr2 = $("#user_addr2").val();
        	   
        	   if(user_id.length == 0){
        		   alert("아이디를 입력해 주세요");
        		   $("#user_id").focus();
        		   return false;
        	   }
        	   if(user_pw.length ==0){
        		   alert("비밀번호를 입력해 주세요");
        		   $("#user_pw").focus();
        		   return false;
			        		   
        	   }
        	    if(user_pw != user_pw2){
        	        alert("비밀번호가 서로 다릅니다. 비밀번호를 확인해 주세요."); 
        	        $("#user_pw2").focus();
        	        return false; 
        	    }
        	   if(user_name.length == 0){
        		   alert("이름을 입력하세요");
        		   $("#user_name").focus();
        		   return false;
        	
        	   }
        	   if(user_phone.length == 0){
        		   alert("핸드폰 번호를 입력하세요");
        		   $("#user_phone").focus();
        		   return false;
        	   }
        	   if(user_email.length == 0){
        		   alert("이메일을 입력하세요");
        		   $("#user_email").focus();
        		   return false;
        	   }
        	   if(signUpUserCompanyAddress.length == 0 || user_add2.length == 0){
        		   alert("주소를 입력해주세요");
        		   $("#user_addr2").focus();
        		   return false;
        	   }
        	   if(confirm("등록하시겠습니까?")){
        	   alert("등록이 완료 되었습니다.")
        	   document.form1.action="${path}/userBoard/userinsert";
        	   document.form1.submit();
        	   }else{
        		   alert("등록 실패");
        		   return false;
        	   }
        	   
           }
           </script>
      
            <!-- /sidebar menu -->
 <!-- top navigation -->
        
        <div class="top_nav">
        
              <ul class="nav navbar-nav navbar-right">
              <li class="">
              </li>
              
             <li class="">
                	<a  href="<c:url value="/userBoard/User_Insert?lang=en" />">
                	<img  src="${path}/image/USA.png">
                	</a>
                </li>
                <li class="">
                	<a  href="<c:url value="/userBoard/User_Insert?lang=ko" />">
                	<img  src="${path}/image/korean.png">
                	</a>
                </li>
              </ul> 

        </div><!-- top-_nav 끝. -->
        <!-- /top navigation -->
					
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3><spring:message code="user.insert" text="default text"></spring:message></h3>
              </div><!-- title_left -->
			
			<div class="clearfix"></div>
                 <!-- title- right -->
              </div><!-- page-title -->
            </div><!--  class = "" -->
            
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
            
                    <form id="form1" name="form1" method="post" action="${path}/userBoard/userinsert" 
                    	data-parsley-validate class="form-horizontal form-label-left">
                      
                     <div class="form-group col-md-4">
      					<label for="inputEmail4"><spring:message code="user.a1" text="default text"></spring:message></label>
      					<input type="text" name="user_id"  oninput="checkId()" id="checkaa" autofocus required="required" class="form-control user_id"  placeholder="ID">
    						</div>
    						
                      <div class="form-group col-md-4">
      					<label for="inputEmail4"><spring:message code="user.a2" text="default text"></spring:message></label>
      					<input type="password" name="user_pw" oninput="checkPwd()"  required="required" class="form-control pass"  placeholder="Password">
    						</div>
    						
                      <div class="form-group col-md-4">
      					<label for="inputEmail4"><spring:message code="user.a3" text="default text"></spring:message></label>
      					<input type="password" name="user_pw2" oninput="checkPwd()" id="repwd" required="required" class="form-control pass"  placeholder="Password">
      					
    						</div>
    						
                		
                       <div class="form-group col-md-4">
      					<label for="inputEmail4"><spring:message code="user.a4" text="default text"></spring:message></label>
      					<input name="user_name" id="user_name" required="required" class="form-control"  placeholder="이름">
    						</div>
    						
                        <div class="form-group col-md-4">
      					<label for="inputEmail4"><spring:message code="user.a5" text="default text"></spring:message></label>
      					<input name="user_phone" id="user_phone" required="required" class="form-control" placeholder="010-0000-0000"   data-inputmask="'mask' : '(999) 9999-9999'">
    						</div>
    					
    					
                      <div class="form-group col-md-4">
      					<label for="inputEmail4"><spring:message code="user.a6" text="default text"></spring:message></label>
      					<input name="user_email" id="user_email" required="required" class="form-control"  placeholder="메일을 입력해주세요.">
    						</div>
    				   
                                          
                           	<div class="form-group col-md-12">
                            		<label style="display: block;" ><spring:message code="user.a8" text="default text"></spring:message></label>
                            		<input class="form-control" style="width: 40%; display: inline;" 
                            		placeholder="우편번호" name="signUpUserPostNo" id="signUpUserPostNo" type="text" readonly="readonly" >
                            		<button type="button" class="btn btn-default" onclick="execPostCode();" style="margin-bottom: 5px;">
                            		<i class="fa fa-search"></i> <spring:message code="user.a12" text="default text"></spring:message></button>
                            	</div>
                            	
                            	<div class="form-group col-md-6">
                            		<input class="form-control" required="required"  style="top: 5px;" placeholder="도로명 주소" name="user_addr" id="signUpUserCompanyAddress" type="text" readonly="readonly" />
                            	</div>
                            	
                            	 	<div class="form-group col-md-6">
                            		<input class="form-control" placeholder="상세주소" name="user_addr2" id="user_addr2" type="text"  />
                            	</div>
                            	
										<div class="form-group col-md-6">
											<label for="exampleFormControlSelect1" class="control-label"><spring:message code="user.a11" text="default text"></spring:message></label>
											<select class="form-control"  id="user_role" name="user_role">
											    <option value="통합 사용자" selected="selected">통합 사용자</option>
												<option value="군집 사용자">군집 사용자</option>
											</select>
										</div>
										
										
                   <div class="form-group col-md-6 layer">
      					<label for="inputEmail4"><spring:message code="tracker.a1" text="defaul text"></spring:message></label>
      					<select class="form-control" name=group_name id="group_name">
													<c:forEach var="row" items="${user_group_choice}">
												<option value="${row.t_group_name}">${row.t_group_name}</option>
												</c:forEach>
											</select>
    						</div>
    						


								<!-- select box 시 레이아웃 Hide 및 show -->		
					<script type="text/javascript">
					jQuery('#user_role').change(function() {
						var state = jQuery('#user_role option:selected').val();
						if ( state == '군집 사용자' ) {
							jQuery('.layer').show();
						} else {
							jQuery('.layer').hide();
						}
					});
					</script>
					<div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-12">
                          <button class="btn btn-primary signupbtn"value="확인" disabled="disabled" onclick="user_write();">등록하기</button>
                           <a onClick="location.href='${path}/userBoard/User_Board'" class="btn btn-primary">취소</a>
                        </div>
                      </div><!-- 확인 끝. -->
	
                    </form>
                  </div>
                </div>
              </div>
            </div>
	</div>
        <!-- /주소 -->
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
	                $("[name=user_addr]").val(fullRoadAddr);
	                
	                /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
	                document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
	                document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
	            }
	 		}).open();
	 	}
		
		//스크립트 시작할 것.
	 </script>

	 <!-- 아이디 중복 검사 -->
	 <script type="text/javascript">
	//아이디와 비밀번호가 맞지 않을 경우 가입버튼 비활성화를 위한 변수설정
	    var idCheck = 0;
		var pwdCheck =0;
	    //아이디 체크하여 가입버튼 비활성화, 중복확인.
	    function checkId() {
	        var inputed = $('.user_id').val();
	        console.log(inputed);
	        $.ajax({
	            data : {
	                id : inputed
	            },
	            url : "${path}/userBoard/checkId.do",
	            success : function(data) {
	                if(inputed=="" && data=='0') {
	                    $(".signupbtn").prop("disabled", true);
	                    $(".signupbtn").css("background-color", "#aaaaaa");
	                    $("#checkaa").css("background-color", "#FFCECE");
	                    idCheck = 0;
	                } else if (data == '0') {
	                    $("#checkaa").css("background-color", "#B0F6AC");
	                    idCheck = 1;
	                    if(idCheck==1 && pwdCheck == 1 ) {
	                        $(".signupbtn").prop("disabled", false);
	                        $(".signupbtn").css("background-color", "#4CAF50");
	                    } 
	                } else if (data == '1') {
	                    $(".signupbtn").prop("disabled", true);
	                    $(".signupbtn").css("background-color", "#aaaaaa");
	                    $("#checkaa").css("background-color", "#FFCECE");
	                    idCheck = 0;
	                } 
	            }
	        });
	    }
	  //재입력 비밀번호 체크하여 가입버튼 비활성화 또는 맞지않음을 알림.
	    function checkPwd() {
	        var inputed = $('.pass').val();
	        var reinputed = $('#repwd').val();
	        console.log(inputed);
	        console.log(reinputed);
	        if(reinputed=="" && (inputed != reinputed || inputed == reinputed)){
	            $(".signupbtn").prop("disabled", true);
	            $(".signupbtn").css("background-color", "#aaaaaa");
	            $("#repwd").css("background-color", "#FFCECE");
	        }
	        else if (inputed == reinputed) {
	            $("#repwd").css("background-color", "#B0F6AC");
	            pwdCheck = 1;
	            if(idCheck==1 && pwdCheck == 1) {
	                $(".signupbtn").prop("disabled", false);
	                $(".signupbtn").css("background-color", "#4CAF50");
	            }
	        } else if (inputed != reinputed) {
	            pwdCheck = 0;
	            $(".signupbtn").prop("disabled", true);
	            $(".signupbtn").css("background-color", "#aaaaaa");
	            $("#repwd").css("background-color", "#FFCECE");
	            
	        }
	    }
	 </script> 
	 
	
    <!-- jQuery -->
    <script src="${vendors}/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${vendors}/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="${vendors}/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${vendors}/nprogress/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="${vendors}/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="${vendors}/iCheck/icheck.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="${vendors}/moment/min/moment.min.js"></script>
    <script src="${vendors}/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="${vendors}/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="${vendors}/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="${vendors}/google-code-prettify/src/prettify.js"></script>
    <!-- jQuery Tags Input -->
    <script src="${vendors}/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="${vendors}/switchery/dist/switchery.min.js"></script>
    <!-- Select2 -->
    <script src="${vendors}/select2/dist/js/select2.full.min.js"></script>
    <!-- Parsley -->
    <script src="${vendors}/parsleyjs/dist/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="${vendors}/autosize/dist/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="${vendors}/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    <!-- starrr -->
    <script src="${vendors}/starrr/dist/starrr.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="${build}/js/custom.min.js"></script>
    
        <!-- Ion.RangeSlider -->
    <script src="${vendors}/ion.rangeSlider/js/ion.rangeSlider.min.js"></script>
    <!-- Bootstrap Colorpicker -->
    <script src="${vendors}/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
     <!-- jquery.inputmask -->
    <script src="${vendors}/jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
     <!-- jQuery Knob -->
    <script src="${vendors}/jquery-knob/dist/jquery.knob.min.js"></script>
    <!-- Cropper -->
    <script src="${vendors}/cropper/dist/cropper.min.js"></script>
    <!-- validator -->
     <script src="${vendors}/validator/validator.js"></script>
	
	
  </body>
</html>
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
			<!-- top navigation -->
        
        <div class="top_nav">
        
              <ul class="nav navbar-nav navbar-right">
              <li class="">
              </li>
              
                <li class="">
                	<a  href="<c:url value="/groupBoard/Group_Insert?lang=en" />">
                	<img  src="${path}/image/USA.png">
                	</a>
                </li>
                <li class="">
                	<a  href="<c:url value="/groupBoard/Group_Insert?lang=ko" />">
                	<img  src="${path}/image/korean.png">
                	</a>
                </li>
              </ul> 
        </div> <!-- top-_nav 끝. -->
        <!-- /top navigation -->

        <!-- page content -->
 		 <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3><spring:message code="group.insert" text="defatul text"></spring:message></h3>
            </div><!-- title_left -->
			
			<div class="clearfix"></div>
                 <!-- title- right -->
              </div><!-- page-title -->
            </div><!--  class = "" -->
            
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
				
                    <form name="form1"  method="post" data-parsley-validate class="form-horizontal form-label-left">
                      
                     <div class="form-group col-md-6" id="divInputId">
      					<label for="inputEmail4"><spring:message code="group.a1" text="defatul text"></spring:message></label>
      					<input name="t_group_id" id="t_group_id" class="form-control"  placeholder="군집아이디">
      						<button type="button" class="idCheck">아이디 확인</button>
	    						 <p class="result">
						 		<span class="msg">아이디를 확인해주십시오.</span>
						 
						 </p>
    						</div>
    						
                             <div class="form-group col-md-6">
      					<label for="inputEmail4"><spring:message code="group.a2" text="defatul text"></spring:message></label>
      					<input name="t_group_name" id="t_group_name" required="required" class="form-control"  placeholder="oo">
    						</div> 
    							<div class="form-group col-md-12">
    						</div>
                		
                       <div class="form-group col-md-6">
      					<label for="inputEmail4"><spring:message code="group.a3" text="defatul text"></spring:message></label>
      					<input name="t_group_builder" id="t_group_builder" required="required" class="form-control"  placeholder="시공사">
    						</div>
    						
                       <div class="form-group col-md-6">
      					<label for="inputEmail4"><spring:message code="group.a4" text="defatul text"></spring:message></label>
      					<input name="t_group_owner" id="t_group_owner" required="required" class="form-control"  placeholder="소유주">
    						</div>
    						
                        <div class="form-group col-md-6">
      					<label for="inputEmail4"><spring:message code="group.a5" text="defatul text"></spring:message></label>
      					<input name="t_group_phone" id="t_group_phone" required="required" class="form-control"   data-inputmask="'mask' : '(999) 9999-9999'">
    						</div>
    					
    					
                      <div class="form-group col-md-6">
      					<label for="inputEmail4"><spring:message code="group.a6" text="defatul text"></spring:message></label>
      					<input name="t_group_manager" id="t_group_manager" required="required" class="form-control"  placeholder="담당자">
    						</div>
                      <div class="form-group col-md-6">
      					<label for="inputEmail4"><spring:message code="group.a9" text="defatul text"></spring:message></label>
      					<input name="t_group_username" id="t_group_username" required="required" class="form-control"  placeholder="관리인">
    						</div>
                      <div class="form-group col-md-6">
      					<label for="inputEmail4"><spring:message code="group.a10" text="defatul text"></spring:message></label>
      					<input name="t_group_ip" id="t_group_ip" required="required" class="form-control"  placeholder="IP">
    						</div>
      
                            	<div class="form-group col-md-12">
                            		<label style="display: block;" ><spring:message code="group.a7" text="defatul text"></spring:message></label>
                            		<input class="form-control" style="width: 40%; display: inline;" 
                            		placeholder="우편번호" name="signUpUserPostNo" id="signUpUserPostNo" type="text" readonly="readonly" >
                            		<button type="button" class="btn btn-default" onclick="execPostCode();" style="margin-bottom: 5px;">
                            		<i class="fa fa-search"></i> 우편번호 찾기</button>
                            	</div>
                            	
                            	<div class="form-group col-md-6">
                            		<input class="form-control" required="required"  style="top: 5px;" placeholder="도로명 주소" name="t_group_addr" id="signUpUserCompanyAddress" type="text" readonly="readonly" />
                            	</div>
                            	
                            	 	<div class="form-group col-md-6">
                            		<input class="form-control" required="required" placeholder="상세주소" name="t_group_addr2" id="t_group_addr2" type="text"  />
                            	</div>
                            	
                            	       
                       <div class="form-group col-md-12 ">
                        <label for="inputEmail4"><spring:message code="group.a8" text="defatul text"></spring:message></label>
                       <textarea class="form-control col-sm-5" id="history" name="history" rows="5"></textarea>
                      </div>
                            	
                   
										
			<div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-12">
                     <button class="btn btn-primary" id="addBtn" value="확인"><spring:message code="group.a11" text="defaul text"></spring:message></button>
                            <a onClick="location.href='${path}/groupBoard/Group_Board'" class="btn btn-primary"><spring:message code="group.a12" text="defaul text"></spring:message></a> 
                        </div>
                      </div><!-- 확인 끝. -->
                      
                       </form>
                  </div>
                </div>
            </div>
     	</div>
     </div>
		<script type="text/javascript">
		 $(document).ready(function () {
			$("#addBtn").click(function () {
				var t_group_id = $("#t_group_id").val();//군집 아이디
				var t_group_name = $("#t_group_name").val();// 군집 명
				var t_group_builder = $("#t_group_builder").val();// 시공사
				var t_group_owner = $("#t_group_owner").val();//소유주
				var t_group_phone = $("#t_group_phone").val();//핸드폰 번호
				var t_group_manager = $("#t_group_manager").val();//관리인 번호
				var t_group_username = $("#t_group_username").val();//관리인
				
				if(t_group_id == ""){
					alert("군집 아이디를 입력하세요")
					t_group_id.focus();
					return false;
				}else  if(t_group_name == ""){
						alert("군집명을 입력하세요");
						t_group_name.focus();
						return false;
				}else	if(t_group_builder == ""){
					alert("시공사를 입력 해주세요");
					t_group_builder.focus();
					return false;
				}else if(t_group_owner == ""){
					alert("소유주를 써주세요");
					t_group_owner.focus();
					return false;
				}else	if(t_group_phone == ""){
					alert("연락처를 입력하세요");
					t_group_phone.focus();
					return false;
				}else if(t_group_manager == ""){
					alert("이름을 입력하세요");
					t_group_manager.focus();
					return false;
				}else if(t_group_username == ""){
					alert("관리인을 입력하세요");
					t_group_username.focus();
					return false;
					
				}
				//확인 대화 상자
				  if(confirm("등록하시겠습니까?")){
					  alert("등록이 완료 되었습니다.")
					  document.form1.action="${path}/groupBoard/insert";
					  document.form1.submit();
				  }else{
					  alert("등록 실패")
					  return false;
				  }
			  });		
		});
		</script> 
		
<script> 
$(".idCheck").click(function(){
 
 var query = {t_group_id : $("#t_group_id").val()};
 $.ajax({
  url : "${path}/groupBoard/idCheck",
  type : "post",
  data : query,
  success : function(data) {
  
   if(data == 1) {
    $(".result .msg").text("사용 불가");
    $(".result .msg").attr("style", "color:#f00");
    $("#addBtn").attr("disabled", "disabled");
   } else {
    $(".result .msg").text("사용 가능");
    $(".result .msg").attr("style", "color:#00f");
    $("#addBtn").removeAttr("disabled");
   }
  }
 });  // ajax 끝
});
</script>

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
	                $("[name=t_group_addr]").val(fullRoadAddr);
	                
	                /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
	                document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
	                document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
	            }
	 		}).open();
	 	}
		
		//스크립트 시작할 것.
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
     <script src="${res}/inverter/js/inverterDetail.js"></script>
	
	
  </body>
</html>
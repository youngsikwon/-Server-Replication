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
	<script type="text/javascript">
	$(document).ready(function () {
		  $("#btnUpdate").click(function(){
			  //확인 대화 상자
			  if(confirm("수정하시겠습니까?")){
				  alert("수정이 완료 되었습니다.")
				  document.form1.action="${path}/inverterBoard/update";
				  document.form1.submit();
			  }else
				  return false;
		  });
		
	});
	</script>

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
        </div>
            <!-- /sidebar menu -->
            


        <!-- top navigation -->
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3><spring:message code="inverter.view" text="defaul text"></spring:message></h3>
              </div>
              

            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
            
                  
                    <form name="form1"  method="post" data-parsley-validate class="form-horizontal form-label-left">
                      
                     <div class="form-group col-md-6">
                         <label for="inputEmail4"><spring:message code="inverter.b1" text="defaul text"></spring:message></label>
                          <input  class="form-control" type="text" name="inverter_id" id="inverter_id"
                          value="${dto.inverter_id}" readonly="readonly"/>
                      </div> 
                      <div class="form-group col-md-6">
                         <label for="inputEmail4"><spring:message code="inverter.b2" text="defaul text"></spring:message></label>
                          <input  class="form-control" type="text" name="inverter_name" id="inverter_name"
                          value="${dto.inverter_name}" readonly="readonly"/>
                      </div> 
                      
                      <div class="form-group col-md-6">
                         <label for="inputEmail4"><spring:message code="inverter.b3" text="defaul text"></spring:message></label>
                          <input  class="form-control col-md-7 col-xs-12" type="text" name="inverter_model" id="inverter_model"
                          value="${dto.inverter_model}">
                      </div> 
                      
                      <div class="form-group col-md-6">
                         <label for="inputEmail4"><spring:message code="inverter.b4" text="defaul text"></spring:message></label>
                          <input  class="form-control " type="text" name="inverter_capacity" id="inverter_capacity"
                          value="${dto.inverter_capacity}">
                      </div> 
                      
                      <div class="form-group col-md-6">
                         <label for="inputEmail4"><spring:message code="inverter.b5" text="defaul text"></spring:message></label>
                          <input  class="form-control" type="text" name="inverter_builder" id="inverter_builder"
                          value="${dto.inverter_builder}">
                      </div> 
                      
                      <div class="form-group col-md-6">
                         <label for="inputEmail4"><spring:message code="inverter.b6" text="defaul text"></spring:message></label>
                          <input  class="form-control" type="text" name="inverter_manager" id="inverter_manager"
                          value="${dto.inverter_manager}">
                      </div> 
                      
                      <div class="form-group col-md-6">
                         <label for="inputEmail4"><spring:message code="inverter.b7" text="defaul text"></spring:message></label>
                          <input  class="form-control" type="text" name="inverter_owner" id="inverter_owner"
                          value="${dto.inverter_owner}">
                      </div> 
          
                        <div class="form-group col-md-6">
      					<label for="inputEmail4"><spring:message code="inverter.b8" text="defaul text"></spring:message></label>
      					<input name="inverter_phone" id="inverter_phone" class="form-control"   data-inputmask="'mask' : '(999) 9999-9999'"  
      					value="${dto.inverter_phone}">
    						</div>
    					
    					
    					  <div class="form-group col-md-6" id="dateRangePicker">
                        <label for="inputEmail4"><spring:message code="inverter.b9" text="defaul text"></spring:message></label>
                       <span><fmt:formatDate  value="${dto.inverter_reg_date}" pattern="yyyy-MM-dd HH:mm:ss" /></span>
                      </div>
                      
                           <div class="form-group col-md-12 ">
                        <label for="inputEmail4"><spring:message code="inverter.b11" text="defaul text"></spring:message></label>
                       <textarea class="form-control" id="history" name="history"   rows="5">${dto.history}</textarea> 
                      </div>
                           
			                      
                     <%--       <div class="form-group col-md-12">
                         <label for="inputEmail4">준공일자</label>
                       <fmt:formatDate  value="${dto.inverter_completion_date}" pattern="yyyy-MM-dd HH:mm:ss"/>
                      </div> --%>
                                           
		         <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-12">
                        <input class="btn btn-primary" type="button" value="수정" id="btnUpdate"/>
                         <a onClick="location.href='${path}/inverterBoard/Inverter_Board'" class="btn btn-primary">취소</a>
                        </div>
 							
                      </div>
                    </form>
                  </div>
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
	 </script>
        <!-- footer content -->
			
      </div>
    </div>

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
	
	
  </body>
</html>
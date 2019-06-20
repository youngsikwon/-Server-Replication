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
	<script type="text/javascript">
		$("option.selected", this).each(function () {
			var seelctVal = $(this).val();
			cate2
		})
		</script>
		 <!-- top navigation -->
        
        <div class="top_nav">
        
              <ul class="nav navbar-nav navbar-right">
              <li class="">
              </li>
              
                    <li class="">
                	<a  href="<c:url value="/inverterBoard/Inverter_insert?lang=en" />">
                	<img  src="${path}/image/USA.png">
                	</a>
                </li>
                <li class="">
                	<a  href="<c:url value="/inverterBoard/Inverter_insert?lang=ko" />">
                	<img  src="${path}/image/korean.png">
                	</a>
                </li>
              </ul> 

        </div>
        <!-- /top navigation -->
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3><spring:message code="inverter.insert" text="defaul text"></spring:message></h3>
              </div>
              
              <div class="clearfix"></div>

                 <!-- title- right -->
            </div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
            
                  
                  <form name="form1"  method="post" data-parsley-validate class="form-horizontal form-label-left">
                      
                           <div class="form-group col-md-6">
      					<label for="inputEmail4"><spring:message code="inverter.a2" text="defaul text"></spring:message></label>
      				    <select class="form-control"  id="t_group_id"  name="t_group_id" >
      				    <c:forEach var="row" items="${inverter_group_choice}" varStatus="i">
												<option value="${row.t_group_id}">군집 아이디 : ${row.t_group_id}</option>
												</c:forEach>
											</select>  
    						</div>
                           <div class="form-group col-md-6">
      					<label for="inputEmail4"><spring:message code="inverter.a1" text="defaul text"></spring:message></label>
      				    <select class="form-control"  id="inverter_name"  name="inverter_name" >
      				    <c:forEach var="row" items="${inverter_group_choice}" varStatus="i">
												<option value="${row.t_group_id}">군집명 : ${row.t_group_name}</option>
												</c:forEach>
											</select>  
    						</div>
    						
                      
    						
    						  <div class="form-group col-md-6">
      					<label style="margin-top: 4px;" for="inputEmail4"><spring:message code="inverter.a3" text="defaul text"></spring:message></label>
      					<input onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" id="inverter_id" name="inverter_id" required="required" class="form-control"  placeholder="인버터 아이디">
	    						<button type="button" class="idCheck">아이디 확인</button>
	    						 <p class="result">
						 		<span class="msg">아이디를 확인해주십시오.</span>
						 
						 </p>
	    						</div>
                		
                       <div class="form-group col-md-6">
      					<label for="inputEmail4" style="margin-top: 3px;"><spring:message code="inverter.a5" text="defaul text"></spring:message></label>
      					<input name="inverter_model" id="inverter_model" class="form-control" required="required"  placeholder="인버터 모델명">
    						</div>
    						
    							<div class="form-group col-md-12">
    						</div>
    						
                       <div class="form-group col-md-6">
      					<label for="inputEmail4" style="margin-top: 3px;"><spring:message code="inverter.a4" text="defaul text"></spring:message></label>
      					<input name="inverter_capacity" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" id="inverter_capacity" class="form-control" required="required" placeholder="인버터 용량">
    						</div>
    						
                       <div class="form-group col-md-6">
      					<label for="inputEmail4" style="margin-top: 3px;"><spring:message code="inverter.a6" text="defaul text"></spring:message></label>
      					<input name="inverter_manager" id="inverter_manager" class="form-control" required="required"  placeholder="담당자">
    						</div>
    				
    						
    						
    				<div class="form-group col-md-6">
      					<label for="inputEmail4"><spring:message code="inverter.a8" text="defaul text"></spring:message></label>
      					<input name="inverter_owner" id="inverter_owner" class="form-control"  required="required" placeholder="소유주"  type="text">
    						</div>
    						
                       <div class="form-group col-md-6">
      					<label for="inputEmail4"><spring:message code="inverter.a9" text="defaul text"></spring:message></label>
      					<input name="inverter_builder" id="inverter_builder" class="form-control" required="required" placeholder="시공사"   type="text">
    						</div>
    						
                        <div class="form-group col-md-6">
      					<label for="inputEmail4"><spring:message code="inverter.a10" text="defaul text"></spring:message></label>
      					<input name="inverter_phone" id="inverter_phone" class="form-control" required="required" placeholder="010-0000-0000"   data-inputmask="'mask' : '(999) 9999-9999'">
    						</div>
    					
    						
                        <div class="form-group col-md-12 ">
                        <label for="inputEmail4"><spring:message code="inverter.a11" text="defaul text"></spring:message></label>
                       <textarea class="form-control col-sm-5" id="history" name="history"   rows="5"></textarea> 
                      </div>
            
            
			        <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-12">
                                       <button class="btn btn-primary" id="addBtn" value="확인" disabled="disabled"><spring:message code="inverter.a12" text="defaul text"></spring:message></button>
                            <a onClick="location.href='${path}/inverterBoard/Inverter_Board'" class="btn btn-primary"><spring:message code="inverter.a13" text="defaul text"></spring:message></a> 
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
	</div>
        </div>
	 <script type="text/javascript">
	$(document).ready(function () {
		//상품 등록 유효성 검사
		  $("#addBtn").click(function(){
			  var inverter_name = $("#inverter_name").val();
			  var inverter_type = $("#inverter_type").val();
			  var inverter_capacity = $("#inverter_capacity").val();
			  var inverter_phone = $("#inverter_phone").val();
			  var inverter_builder = $("#inverter_builder").val();
			  var inverter_manager = $("#inverter_manager").val();
			  var inverter_owner = $("#inverter_owner").val();
			  
			  if(inverter_type==""){
				  alert("모델명을 입력하세요.");
				  inverter_type.focus();
				  return false;
				  	
			  }else if(inverter_name ==""){
				  alert("군집을 선택하세요.");
				  inverter_name.focus();
				  return false;
			  }else if(inverter_capacity == ""){
				  alert("용량을 입력하세요.");
				  inverter_capacity.focus();
				  return false;
			  }else if(inverter_phone == ""){
				  alert("핸드폰 번호를 입력하세요");
				  inverter_phone.focus();
				  return false;
			  }else if(inverter_builder == ""){
				  alert("시공사를 입력하세요");
				  inverter_builder.focus();
				  return false;
			  }else if(inverter_manager == ""){
				  alert("관리자를 입력하세요");
				  inverter_manager.focus();
				  return false;
			  }else if(inverter_owner == ""){
				  alert("소유주 번호를 입력하세요");
				  inverter_owner.focus();
				  return false;
			  }
			  //확인 대화 상자
			  if(confirm("등록하시겠습니까?")){
				  alert("등록이 완료 되었습니다.")
				  document.form1.action="${path}/inverterBoard/insert";
				  document.form1.submit();
			  }
		  });		
	});
	</script>
	
	<script> 
$(".idCheck").click(function(){
 
 var query = {inverter_id : $("#inverter_id").val()};
 
 $.ajax({
  url : "idCheck",
  type : "post",
  data : query,
  success : function(data) {
  
   if(data == 1) {
    $(".result .msg").text("사용 불가");
    $(".result .msg").attr("style", "color:#f00");    
    $("#addBtn").attr("disabled", "disabled");
   } else {
    $(".result .msg").text("인버터 아이디 사용 가능");
    $(".result .msg").attr("style", "color:#00f");
    
    $("#addBtn").removeAttr("disabled");
   }
  }
 });  // ajax 끝
});
</script>
        <!-- footer content -->
        <jsp:include page="/WEB-INF/views/popup/groupModel.jsp">
		<jsp:param name="formId" value="inputForm"/>
	</jsp:include>

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
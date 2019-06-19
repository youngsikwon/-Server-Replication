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
	$(document).ready(function () {
		//상품 등록 유효성 검사
		  $("#btnUpdate").click(function(){
			  //확인 대화 상자
			  if(confirm("수정하시겠습니까?")){
				  alert("수정이 완료 되었습니다.")
				   document.form1.action="${path}/trackerBoard/update";
				  document.form1.submit();
			  }
		  });
		
	});
	</script>
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
          <div class="page-title">
              <div class="title_left">
                    <h3><spring:message code="tracker.view" text="defaul text"></spring:message></h3>
              </div>
				<div class="clearfix"></div>
				
                  </div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
            
                  
                  <form name="form1"  method="post" data-parsley-validate class="form-horizontal form-label-left">
                      
                      
                            <div class="form-group col-md-6">
                        <label for="inputEmail4"><spring:message code="tracker.b1" text="defaul text"></spring:message></label>
                          <input type="text" name="tracker_id" id="tracker_id"  class="form-control" required="required" class="form-control"
                          	value="${dto.tracker_id}" readonly="readonly"/>
                      </div>
                      
                  <div class="form-group col-md-6">
						 <label for="inputEmail4"><spring:message code="tracker.b0" text="defaul text"></spring:message></label>	
                          <input type="text" name="tracker_name" id="tracker_name"  class="form-control" required="required" class="form-control"
                          	value="${dto.tracker_name}" readonly="readonly"/>
                      </div>
    						
    						
                 	 <div class="form-group col-md-6">
                        <label for="inputEmail4"><spring:message code="tracker.b2" text="defaul text"></spring:message></label>
                          <input type="text" name="tracker_model" id="tracker_model"  class="form-control" required="required" class="form-control"
                          	value="${dto.tracker_model}"/> <!-- readonly = readonly 봉인 구문 -->
                      </div>
    						
    			  <div class="form-group col-md-6">
                         <label for="inputEmail4"><spring:message code="tracker.b3" text="defaul text"></spring:message></label>
                          <input  class="form-control" type="text"  class="form-control"  name="tracker_capacity" id="tracker_capacity"
                          value="${dto.tracker_capacity}">
                      </div>
    						
               <div class="form-group col-md-6">
                        <label for="inputEmail4"><spring:message code="tracker.b8" text="defaul text"></spring:message></label>
                          <input class="form-control" type="text"  class="form-control" name="tracker_builder" id="tracker_builder"
                          value="${dto.tracker_builder}">
                      </div>
                 		
                     <div class="form-group col-md-6">
                        <label for="inputEmail4"><spring:message code="tracker.b4" text="defaul text"></spring:message></label>
                          <input class="form-control" type="text" name="tracker_manager" id="tracker_manager"
                          value="${dto.tracker_manager}">
                      </div>
    				   
    				       <div class="form-group col-md-6">
                        <label for="inputEmail4"><spring:message code="tracker.b7" text="defaul text"></spring:message></label>
                          <input class="form-control" type="text"  name="tracker_owner" id="tracker_owner" 
                          value="${dto.tracker_owner}">
                      </div>
    						
    					
    					        	<div class="form-group col-md-6">
      					<label for="inputEmail4"><spring:message code="tracker.b5" text="defaul text"></spring:message></label>
      					<input name="tracker_phone" id="tracker_phone" class="form-control"   data-inputmask="'mask' : '(999) 9999-9999'" 
      					value="${dto.tracker_phone}">
    						</div>
    						
                      
                            <div class="form-group col-md-12" id="dateRangePicker">
                        <label for="inputEmail4"><spring:message code="tracker.b10" text="defaul text"></spring:message></label>
                         <span><fmt:formatDate  value="${dto.tracker_reg_date}"  pattern="yyyy-MM-dd HH:mm:ss"/></span>
                      </div>
                                                       	
    				 <div class="form-group col-md-12 ">
                        <label for="inputEmail4"><spring:message code="tracker.a12" text="defaul text"></spring:message></label>
                       <textarea class="form-control" id="history" name="history"   rows="5">${dto.history}</textarea> 
                      </div>
    				   
                      
    						
          
			      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-12">
                        <input class="btn btn-primary" type="button" value="수정" id="btnUpdate"/>
                         <a onClick="location.href='${path}/trackerBoard/Tracker_Board'" class="btn btn-primary">취소</a>
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
	

        <!-- footer content -->

  

  <!-- jQuery -->
	<script src="${vendors}/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
	<script src="${vendors}/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
	<script src="${vendors}/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
	<script src="${vendors}/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
	<script src="${vendors}/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
	<script src="${vendors}/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
	<script src="${vendors}/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
	<script src="${vendors}/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
	<script src="${vendors}/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- Flot -->
	<script src="${vendors}/skycons/skycons.js"></script>
	<!-- jQuery Sparklines -->
    <script src="${vendors}/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
    <!-- easy-pie-chart -->
    <script src="${vendors}/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
    <!-- Datatables -->
    
    <script src="${vendors}/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="${vendors}/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="${vendors}/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="${vendors}/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="${vendors}/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="${vendors}/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="${vendors}/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="${vendors}/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="${vendors}/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="${vendors}/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="${vendors}/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="${vendors}/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="${vendors}/jszip/dist/jszip.min.js"></script>
    <script src="${vendors}/pdfmake/build/pdfmake.min.js"></script>
    <script src="${vendors}/pdfmake/build/vfs_fonts.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="${build}/js/custom.min.js"></script>

  </body>
</html>
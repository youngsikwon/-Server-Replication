<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/include/common.jsp"%>
<!DOCTYPE html>
<html lang="en">
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>태양광모니터링시스템</title>

    <!-- Bootstrap -->
		<link rel="stylesheet" type="text/css" href="${vendors}/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- bootstrap toggle -->
		<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
    <!-- Font Awesome -->
		<link rel="stylesheet" type="text/css" href="${vendors}/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
		<link rel="stylesheet" type="text/css" href="${vendors}/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
		<link rel="stylesheet" type="text/css" href="${vendors}/iCheck/skins/flat/green.css" rel="stylesheet">

    <!-- bootstrap-progressbar -->
		<link rel="stylesheet" type="text/css" href="${vendors}/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
		<link rel="stylesheet" type="text/css" href="${vendors}/jqvmap/dist/jqvmap.min.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
		<link rel="stylesheet" type="text/css" href="${vendors}/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
		<link rel="stylesheet" type="text/css" href="${build}/css/custom.min.css" rel="stylesheet">
		
		 <!-- Datatables -->
    <link href="${vendors}/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="${vendors}/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="${vendors}/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="${vendors}/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="${vendors}/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
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
              <div class="profile_pic" style="margin-top: 80px;">
                <img src="${path}/image/admin.png" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info" style="margin-top: 80px;">
                   <h2 style="margin-bottom: 10px; margin-top: 15px;">       
                <c:choose>
	<c:when test="${sessionScope.user_id == null }">
	</c:when>
	<c:otherwise>
		${sessionScope.user_name}님
		<a type="button" class="" href="${path}/User_auth/logout.do">로그아웃</a>
	</c:otherwise>
</c:choose></h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

          

           <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                 <ul class="nav side-menu">
                                    <li><a href="${path}/User_View/User_index?t_group_id=400"><i class="fa fa-home"></i><h4><spring:message code="part.H1" text="default text"></spring:message></h4></a>
                  </li>
                  
  					 <li><a><i class="fa fa-table"></i> <h4><spring:message code="part.H2" text="default text"></spring:message></h4> <span class="fa fa-chevron-down"></span></a>
  					 
                    <ul class="nav child_menu">
                     <li><a href="${path}/User_groupBoard/Group_Board"><h4><spring:message code="part.H7" text="default text"></spring:message></h4></a></li>
                      <li><a href="${path}/User_trackerBoard/Tracker_Board"><h4><spring:message code="part.H8" text="default text"></spring:message></h4></a></li>
                      <li><a href="${path}/User_inverterBoard/Inverter_Board"><h4><spring:message code="part.H9" text="default text"></spring:message></h4></a></li>
                    </ul>
                  </li>
                 </ul>
              </div>
            </div>
        </div>
        </div>
           <!-- sidebar menu -->
              <!-- top navigation -->
        
        <div class="top_nav">
        
              <ul class="nav navbar-nav navbar-right">
              <li class="">
              </li>
              
           <li class="">
                	<a  href="<c:url value="/View/Details?lang=en" />">
                	<img  src="${path}/image/USA.png">
                	</a>
                </li>
                <li class="">
                	<a  href="<c:url value="/View/Details?lang=ko" />">
                	<img  src="${path}/image/korean.png">
                	</a>
                </li>
              </ul> 

        </div>
        <!-- /top navigation -->
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
   

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                  <h2><spring:message code="part.H8" text="default text"></spring:message></h2>
         
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  <form action="delete" method="post">
                    <table id="datatable" class="table table-striped table-bordered">
                     <thead>
                        <tr bgcolor="#FFFFFF" onmouseover="this.style.backgroundColor='#E1FFFF'"
                        onmouseout="this.style.backgroundColor='#FFFFFF'">
                  		   <th align="center"><spring:message code="part.F1" text="default text"></spring:message></th>
                  		   <th align="center"><spring:message code="part.F2" text="default text"></spring:message></th>
                           <th align="center"><spring:message code="part.F3" text="default text"></spring:message></th>
                           <th align="center"><spring:message code="part.F4" text="default text"></spring:message></th>
                           <th align="center"><spring:message code="part.F5" text="default text"></spring:message></th>
                           <th align="center"><spring:message code="part.F6" text="default text"></spring:message></th>
                           <th align="center"><spring:message code="part.F7" text="default text"></spring:message></th>
                           <th align="center"><spring:message code="part.F8" text="default text"></spring:message></th>
                        </tr>
                      </thead>
              <tbody> 
                 <c:forEach var="row" items="${list}">
                        <tr bgcolor="#FFFFFF" onmouseover="this.style.backgroundColor='#E1FFFF'"
                        onmouseout="this.style.backgroundColor='#FFFFFF'">
                          <td align="center">${row.tracker_idx}</td>
                          <td align="center">${row.tracker_id}</td>
                          <td align="center">${row.tracker_name}</td>
                          <td align="center">${row.tracker_type}</td>
                          <td align="center">${row.tracker_capacity}</td>
                          <td align="center">${row.tracker_manager}</td>
                          <td align="center">${row.tracker_phone}</td>
                          <td align="center">
                        <fmt:formatDate value="${row.tracker_reg_date}" pattern="yyyy-MM-dd HH:mm:ss"/>
                           </td>
                        </tr>
                         </c:forEach> 
                      </tbody>
                    </table>
        			</form>
                  </div>
                </div>
              </div>
                  </div><!-- Row -->
                </div>
              </div>
            </div>
          </div>
        <!-- /page content -->
<!-- 체크박스 스크립트 -->
		<script type="text/javascript">
		$(document).ready(function(){
		    //최상단 체크박스 클릭
		    $("#checkall").click(function(){
		        //클릭되었으면
		        if($("#checkall").prop("checked")){
		            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
		            $("input[name=chk]").prop("checked",true);
		            //클릭이 안되있으면
		        }else{
		            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
		            $("input[name=chk]").prop("checked",false);
		        }
		    })
		})
		</script>
		<!-- 체크박스 스크립트 -->
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
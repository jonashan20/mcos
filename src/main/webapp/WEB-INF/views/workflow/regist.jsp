<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>index</title>

<!-- Custom fonts for this template-->
 <link href="/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
 <link
     href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
     rel="stylesheet">

 <!-- Custom styles for this template-->
 <link href="/resources/admin/css/sb-admin-2.min.css" rel="stylesheet">

</head>
<script> // 카테고리 선택시 나타나는 효과ex)파일 업로드 , 달력
function categoriesChangeEvent(x) {
	if (x == "vacation"){
		alert ("휴가 잘가");
			document.all.id_textarea.placeholder="휴가 계획을 간단히 적어주세요";
			document.all.div_supply.style.display="none";
			document.all.div_trip.style.display="";
			document.all.div_price.style.display="none";
			document.all.price.value="0";
		}else if(x == "supply") {
			document.all.div_supply.style.display="";
			document.all.div_price.style.display="";
			document.all.id_textarea.placeholder="*상품 링크나 자료를 첨부할 수 있으면 첨부해주세요."
			document.all.div_price.style.display="";
			document.all.id_textarea.value="*상품 링크나 자료를 첨부할 수 있으면 첨부해주세요.\n\
				\n\
[작성예]\n\
품명 : HDMI케이블\n\
상품정보 : https://ex.ex\n\
수량 : 2 \n\
단가 : 10,000원\n\
금액 : 20,000원\n\
사유 : 회의시 필요";
			} else if(x == "quit"){
				alert ("퇴직서를 제출하세요");
				document.all.div_supply.style.display="none";
				document.all.div_trip.style.display="none";
				document.all.div_price.style.display="none";
				document.all.price.value="0";
				document.all.id_textarea.value="사직이유 :\n\
\n\
\n\
상기본인은 위와 같은 사정으로 인하여 2021년    월    일부로 사직하고자 하니 선처하여 주시기 바랍니다.";
				} else if((x=="businessTrip")||(x=="foodFee")) {
					document.all.id_textarea.placeholder="*상품 링크나 자료를 첨부할 수 있으면 첨부해주세요."
					document.all.div_supply.style.display="";
					document.all.div_trip.style.display="none";
					document.all.div_price.style.display="none";
					document.all.price.value="0";
					document.all.id_textarea.value="[작성예]\n\
출장지역 : 서울 강남구 남부순환로 어디어디\n\
출장일 : 2021-01-01(금) ~ 2021-01-04(수) 3일\n\
출장목적 : 이러한 이유로 출장을 다녀왔습니다.\n\
청구금액 : 200,000원";
				}

	
}
</script>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
             <img src="/resources/admin/img/mainlogo.png"  alt="Logo" style="width: 90px; transform: rotate(15deg);">
                <div class="sidebar-brand-text mx-3">MCOS</div>
                <div onclick location.href="index.jsp" class="sidebar-brand-text mx-3"></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="index.html">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>HOME</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading" name="adminSetting" value="adminSetting" style="display:<sec:authentication property="principal.username" var="userid" />
            <c:if test="${userid eq '1'}">
			block
			</c:if>
			<c:if test="${userid != '1'}">
			none
			</c:if> ">
                관리자모드
            <li class="nav-item" name="adminSetting">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>관리</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">관리자모드</h6>
                        <a class="collapse-item" href="/workflow/workflowAdmin">워크플로우</a>
                    </div>
                </div>
            </li>
            </div>
           

            <!-- Divider -->

            <!-- Heading -->
           <div class="sidebar-heading">
                메뉴
            </div>

             <li class="nav-item">
                <a class="nav-link" href="workflow2">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>워크플로우</span></a>
            </li>
            

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            <!-- Sidebar Message -->
            <div class="sidebar-card">
                <img class="sidebar-card-illustration mb-2" src="/resources/admin/img/undraw_rocket.svg" alt="">
                <p class="text-center mb-2"><strong>SB Admin Pro</strong> is packed with premium features, components, and more!</p>
                <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to Pro!</a>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                  <!--   
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="검색어를 입력하세요."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form> -->
					
					<!-- search{s} -->
		<div class="form-group row justify-content-center">
			<div class="w100" style="padding-right:10px">
				<select class="form-control form-control-sm" name="searchType" id="searchType">
					<option value="title">제목</option>
					<option value="content">본문</option>
					<option value="userid">작성자</option>
				</select>
			</div>
			<div class="w300" style="padding-right:10px">
				<input type="text" class="form-control form-control-sm" name="keyword" id="keyword" value="${pagination.keyword}">
			</div>
			<div>
				<button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>
			</div>
		</div>
		<!-- search{e} -->
					
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->

                        <!-- Nav Item - Messages -->

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                             
                                </span>
                                <img class="img-profile rounded-circle"
                                    src="/resources/admin/img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    프로필
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    세팅
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="/logout" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    로그아웃
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
                    </div>


                    <div class="row">

                        <!-- Content Column -->

                        <div class="col-lg-12">

                            <!-- Illustrations -->
                            <div class="box box-primary">
                                <div class="obx-header with-border">
                                    <h3 class="m-0 font-weight-bold text-primary">워크플로우 신청</h3>
                                </div>
                                <div class="box-body">
                            <div class="table-responsive">
                               <form method="post" novalidate> 
									<p><label>카테고리</label>
									<select type="text" name ="category" id="categoriesItems" class="form-control" 
									style="width: 200px; height: 30px;" onchange="categoriesChangeEvent(this.value)">
									<option value="" ></option>
									<option value="vacation" >휴가신청</option>
									<option value="supply" >구매신청</option>
									<option value="quit"  >퇴직신청</option>
									<option value="businessTrip" >출장비신청</option>
									<option value="foodFee" >식비신청</option>
									</select></p>
									<p><label>제목</label><input class="form-control" type="text" name ="title"></p>
									<p><label>작성자</label><sec:authorize access="isAuthenticated()">
						                   <sec:authentication property="principal.username" var="userid" />
						                   <input class="form-control" type="text" id="userid" name="userid" value="${userid}" readonly>
						            </sec:authorize></p>

									<div id="div_trip" style="display:none;">
									<label for="start">Start date:</label>
									<input type="date" id="startday" name="startday"
									       value="2021-05-01"
									       min="2021-05-01" max="2021-12-31">
									<label for="start">End date:</label>
									<input type="date" id="endday" name="endday"
									       value="2021-05-02"
									       min="2021-05-02" max="2021-12-31">
									</div>
									
									<p><label>내용</label></p>
									<p><textarea class="form-control" id="id_textarea" rows="15" cols="65" name="content" placeholder=""></textarea>
									<div id="div_supply" style="display:none;"><input type="file" id="docFile" name="docfile"></div>
									<div id="div_price" style="display:none;">가격<input type="number" id="price" name="price" value="0"></div>
									<div class="box-footer">
										<div class="float-right">
											<button type="submit" class="btn btn-success"><i class="fa fa-save"></i>등록</button>
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />  
										</div>
									</div>
								</form>
                           </div>
                        </div>
                            </div>


                        </div>
                    </div>
                    <!-- Content Row -->

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
	
	
    <!-- Bootstrap core JavaScript-->
     <script src="/resources/admin/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/admin/js/sb-admin-2.min.js"></script>


</body>

</html>
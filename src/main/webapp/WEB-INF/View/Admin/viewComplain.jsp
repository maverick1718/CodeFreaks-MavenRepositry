<!DOCTYPE html>
<!-- saved from url=(0058)http://CodeFreaks.coderthemes.com/purple/table-datatable.html -->
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>
<%@  taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html
	class=" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="description"
	content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
<link rel="shortcut icon"
	href="http://CodeFreaks.coderthemes.com/purple/assets/images/favicon_1.ico">
<title>CodeFreaks - Responsive Admin Dashboard Template</title>
<!-- DataTables -->
<link
	href="resources/css/jquery.dataTables.min.css"
	rel="stylesheet" type="text/css">
<link
	href="resources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="resources/css/core.css"
	rel="stylesheet" type="text/css">
<link
	href="resources/css/icons.css"
	rel="stylesheet" type="text/css">
<link
	href="resources/css/components.css"
	rel="stylesheet" type="text/css">
<link
	href="resources/css/pages.css"
	rel="stylesheet" type="text/css">
<link
	href="resources/css/menu.css"
	rel="stylesheet" type="text/css">
<link
	href="resources/css/responsive.css"
	rel="stylesheet" type="text/css">
<script async=""
	src="./CodeFreaks - Responsive Admin Dashboard Template_files/"></script>
<script
	src="resources/js/modernizr.min.js"></script>
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '//www.google-analytics.com/analytics.js',
			'ga');

	ga('create', 'UA-65046120-1', 'auto');
	ga('send', 'pageview');
</script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.resources/js/1.3.0/respond.min.js"></script>
        <![endif]-->
</head>
<body class="fixed-left widescreen" cz-shortcut-listen="true">
	<!-- Begin page -->
	<div id="wrapper">
		<!-- Top Bar Start -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- Top Bar End -->
		
		<!-- ========== Left Sidebar Start ========== -->
		<jsp:include page="menu.jsp"></jsp:include>
		<!-- Left Sidebar End -->
		
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">
					<!-- Page-Title -->
					<div class="row">
						<div class="col-sm-12">
							<h4 class="pull-left page-title">Manage  Complains</h4>
							<ol class="breadcrumb pull-right">
								<li><a
									href="index.jsp">CodeFreaks</a></li>
								<li>Manage Complains</li>
								<li class="active">View Complain</li>
							</ol>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-default">
								<div class="panel-heading">	
									<h3 class="panel-title">View Complain</h3>
								</div>0
								<div class="panel-body">
									<div class="row">
										<div class="col-md-12 col-sm-12 col-xs-12">
											<div id="datatable_wrapper"
												class="dataTables_wrapper form-inline dt-bootstrap no-footer">
												
												<div class="row">
													<div class="col-sm-12">
														<table id="datatable"
															class="table table-striped table-bordered dataTable no-footer"
															role="grid" aria-describedby="datatable_info">
															<thead>
																<tr role="row">
																	<th class="sorting_asc" tabindex="0"
																		aria-controls="datatable" rowspan="1" colspan="1"
																		aria-sort="ascending"
																		aria-label="Name: activate to sort column descending"
																		style="width: 40px;">Complain Id</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="datatable" rowspan="1" colspan="1"
																		aria-label="Position: activate to sort column ascending"
																		style="width: 40px;">Author</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="datatable" rowspan="1" colspan="1"
																		aria-label="Office: activate to sort column ascending"
																		style="width: 40px;">Email</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="datatable" rowspan="1" colspan="1"
																		aria-label="Office: activate to sort column ascending"
																		style="width: 50px;">ComplainCategory</th>	
																	<th class="sorting" tabindex="0"
																		aria-controls="datatable" rowspan="1" colspan="1"
																		aria-label="Office: activate to sort column ascending"
																		style="width: 100px;">CategoryDescription</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="datatable" rowspan="1" colspan="1"
																		aria-label="Start date: activate to sort column ascending"
																		style="width: 70px;">Date</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="datatable" rowspan="1" colspan="1"
																		aria-label="Salary: activate to sort column ascending"
																		style="width: 60px;">Active</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="datatable" rowspan="1" colspan="1"
																		aria-label="Salary: activate to sort column ascending"
																		style="width: 80px;">Operation</th>
																</tr>
															</thead>
															<tbody>
															
																<tr role="row" class="odd">
																	<td class="sorting_1 ">+++</td>
																	<td>author</td>
																	
																	<td>email</td>
																	
																	<td>category</td>
																	<td>complain description</td>
																	<td>date</td>
																	<td>active</td>
																	<td>
																		<a href="${pageContext.request.contextPath}/editCategory.html?categoryID=${category.categoryID}">
																			<i class="md md-create"></i>
																		</a>
																		<a href="${pageContext.request.contextPath}/deleteCategory.html?categoryID=${category.categoryID}">
																			<i class="md md-delete"></i>
																		</a>
																		
																	</td>
																</tr>
																<tr role="row" class="odd">
																	<td class="sorting_1 ">+++</td>
																	<td>author2</td>
																	
																	<td>email</td>
																	
																	<td>category</td>
																	<td>complain description</td>
																	<td>date</td>
																	<td>active</td>
																	<td>
																		<a href="${pageContext.request.contextPath}/editCategory.html?categoryID=${category.categoryID}">
																			<i class="md md-create"></i>
																		</a>
																		<a href="${pageContext.request.contextPath}/deleteCategory.html?categoryID=${category.categoryID}">
																			<i class="md md-delete"></i>
																		</a>
																		
																	</td>
																</tr>
											
															</tbody>
														</table>
													</div>
												</div>
												
											</div>
										</div>	
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- End Row -->
				</div>
				<!-- container -->
			</div>
			<!-- content -->
			<footer class="footer text-right">2015 © CodeFreaks.</footer>
		</div>
		<!-- ============================================================== -->
		<!-- End Right content here -->
		<!-- ============================================================== -->
		
	</div>
	<!-- END wrapper -->
	<script>var resizefunc = [];</script>
	<!-- jQuery  -->
	<script
		src="resources/js/jquery.min.js"></script>
	<script
		src="resources/js/bootstrap.min.js"></script>
	<script
		src="resources/js/detect.js"></script>
	<script
		src="resources/js/fastclick.js"></script>
	<script
		src="resources/js/jquery.slimscroll.js"></script>
	<script
		src="resources/js/jquery.blockUI.js"></script>
	<script
		src="resources/js/waves.js"></script>
	<script
		src="resources/js/wow.min.js"></script>
	<script
		src="resources/js/jquery.nicescroll.js"></script>
	<script
		src="resources/js/jquery.scrollTo.min.js"></script>
	<script
		src="resources/js/jquery.app.js"></script>
	<div id="ascrail2000" class="nicescroll-rails"
		style="width: 7px; z-index: 99; cursor: default; position: fixed; top: 70px; height: 599px; display: block; opacity: 0;">
		<div
			style="position: relative; top: 0px; float: right; width: 5px; height: 594px; border: 1px solid rgb(255, 255, 255); border-radius: 0px; background-color: rgb(157, 158, 165); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails"
		style="height: 7px; z-index: 99; top: 662px; position: fixed; cursor: default; display: none; width: 233px; opacity: 0;">
		<div
			style="position: relative; top: 0px; height: 5px; width: 240px; border: 1px solid rgb(255, 255, 255); border-radius: 0px; background-color: rgb(157, 158, 165); background-clip: padding-box;"></div>
	</div>
	<script
		src="resources/js/jquery.dataTables.min.js"></script>
	<script
		src="resources/js/dataTables.bootstrap.js"></script>
	<script type="text/javascript">$(document).ready(function() {
                $('#datatable').dataTable();
            } );</script>
</body>
</html>
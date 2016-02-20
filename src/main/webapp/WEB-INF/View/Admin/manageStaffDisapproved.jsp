<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="description"
	content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
<link rel="shortcut icon" href="assets/images/favicon_1.ico">
<title>CodeFreaks - Responsive Admin Dashboard Template</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="resources/css/core.css" rel="stylesheet" type="text/css">
<link href="resources/css/icons.css" rel="stylesheet" type="text/css">
<link href="resources/css/components.css" rel="stylesheet" type="text/css">
<link href="resources/css/pages.css" rel="stylesheet" type="text/css">
<link href="resources/css/menu.css" rel="stylesheet" type="text/css">
<link href="resources/css/responsive.css" rel="stylesheet" type="text/css">
<style type="text/css">

</style>
<script src="resources/js/modernizr.min.js"></script>
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


<body class="fixed-left">
	
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
					
					
					
					<!-- Page-Title start -->
					<div class="row">
						<div class="col-sm-12">
							<h4 class="pull-left page-title">Manage Staff</h4>
							<ol class="breadcrumb pull-right">
								<li><a href="#">CodeFreaks</a></li>
								<li class="active">Manage Staff</li>
							</ol>
						</div>
					</div>
					<!-- Page-Title end -->
					
					
					<!-- panel start -->
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">Approved</h3>
								</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-md-12 col-sm-12 col-xs-12">
											<div id="datatable_wrapper"
												class="dataTables_wrapper form-inline dt-bootstrap no-footer">
												<div class="row">
													<div class="col-sm-6">
														<div class="dataTables_length" id="datatable_length">
															<label> Show <select name="datatable_length"
																aria-controls="datatable" class="form-control input-sm">
																	<option value="10">10</option>
																	<option value="25">25</option>
																	<option value="50">50</option>
																	<option value="100">100</option>
															</select> entries
															</label>
														</div>
													</div>
													<div class="col-sm-6">
														<div id="datatable_filter" class="dataTables_filter">
															<label> Search: <input type="search"
																class="form-control input-sm" placeholder=""
																aria-controls="datatable" />
															</label>
														</div>
													</div>
												</div>
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
																		style="width: 70px;">Staff id</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="datatable" rowspan="1" colspan="1"
																		aria-label="Position: activate to sort column ascending"
																		style="width: 150px;">Staff Name</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="datatable" rowspan="1" colspan="1"
																		aria-label="Position: activate to sort column ascending"
																		style="width: 150px;">View</th>
																	
																	<th class="sorting" tabindex="0"
																		aria-controls="datatable" rowspan="1" colspan="1"
																		aria-label="Salary: activate to sort column ascending"
																		style="width: 100px;">Date</th>
																	
																	<th class="sorting" tabindex="0"
																		aria-controls="datatable" rowspan="1" colspan="1"
																		aria-label="Salary: activate to sort column ascending"
																		style="width: 70px;">Approve</th>
																	
																	
																</tr>
															</thead>
															<tbody>
																<tr role="row" class="odd">
																	<td class="sorting_1">1</td>
																	<td>class</td>
																	<td><a href="managestaff_approved_view.jsp">View</a></td>
																	
																	<td></td>
																	
																	<td><a href="#"><i class="md md-clear"></i></a></td>
																
																</tr>
																<tr role="row" class="even">
																	<td class="sorting_1">2</td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	
																	
																</tr>
																
															</tbody>
														</table>
													</div>
												</div>
												<div class="row">
													<div class="col-sm-6">
														<div class="dataTables_info" id="datatable_info"
															role="status" aria-live="polite">Showing 1 to 10 of
															57 entries</div>
													</div>
													<div class="col-sm-6">
														<div class="dataTables_paginate paging_simple_numbers"
															id="datatable_paginate">
															<ul class="pagination">
																<li class="paginate_button previous disabled"
																	aria-controls="datatable" tabindex="0"
																	id="datatable_previous"><a href="#">Previous</a></li>
																<li class="paginate_button active"
																	aria-controls="datatable" tabindex="0"><a href="#">1</a>
																</li>
																<li class="paginate_button " aria-controls="datatable"
																	tabindex="0"><a href="#">2</a></li>
																<li class="paginate_button " aria-controls="datatable"
																	tabindex="0"><a href="#">3</a></li>
																<li class="paginate_button " aria-controls="datatable"
																	tabindex="0"><a href="#">4</a></li>
																<li class="paginate_button " aria-controls="datatable"
																	tabindex="0"><a href="#">5</a></li>
																<li class="paginate_button " aria-controls="datatable"
																	tabindex="0"><a href="#">6</a></li>
																<li class="paginate_button next"
																	aria-controls="datatable" tabindex="0"
																	id="datatable_next"><a href="#">Next</a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- panel end -->					


					
					
					

				</div>
			</div>
		</div>
		
		<!-- ============================================================== -->
		<!-- End right Content here -->
		<!-- ============================================================== -->
		
	</div>
	<!-- End page -->


				<script>var resizefunc = [];</script>
	<!-- Main  -->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/detect.js"></script>
	<script src="resources/js/fastclick.js"></script>
	<script src="resources/js/jquery.slimscroll.js"></script>
	<script src="resources/js/jquery.blockUI.js"></script>
	<script src="resources/js/waves.js"></script>
	<script src="resources/js/wow.min.js"></script>
	<script src="resources/js/jquery.nicescroll.js"></script>
	<script src="resources/js/jquery.scrollTo.min.js"></script>
	<script src="resources/js/jquery.app.js"></script>
</body>
</html>
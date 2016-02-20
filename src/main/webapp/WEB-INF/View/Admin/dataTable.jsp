<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="description"
	content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
<link rel="shortcut icon" href=img/favicon_1.ico">
<title>CodeFreaks - Responsive Admin Dashboard Template</title>
<!-- DataTables -->
<link href="resources/js/jquery.dataTables.min.css"
	rel="stylesheet" type="text/css">
<link href="resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="resources/css/core.css" rel="stylesheet" type="text/css">
<link href="resources/css/icons.css" rel="stylesheet" type="text/css">
<link href="resources/css/components.css" rel="stylesheet" type="text/css">
<link href="resources/css/pages.css" rel="stylesheet" type="text/css">
<link href="resources/css/menu.css" rel="stylesheet" type="text/css">
<link href="resources/css/responsive.css" rel="stylesheet" type="text/css">
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
	})(window, document, 'script', 'resources/js/analytics.js',
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
		<div class="topbar">
			<!-- LOGO -->
			<div class="topbar-left">
				<div class="text-center">
					<a href="index.html" class="logo"><i class="md md-terrain"></i>
						<span>CodeFreaks</span></a>
				</div>
			</div>
			<!-- Button mobile view to collapse sidebar menu -->
			<div class="navbar navbar-default" role="navigation">
				<div class="container">
					<div class="">
						<div class="pull-left">
							<button class="button-menu-mobile open-left">
								<i class="fa fa-bars"></i>
							</button>
							<span class="clearfix"></span>
						</div>
						<form class="navbar-form pull-left" role="search">
							<div class="form-group">
								<input type="text" class="form-control search-bar"
									placeholder="Type here for search...">
							</div>
							<button type="submit" class="btn btn-search">
								<i class="fa fa-search"></i>
							</button>
						</form>
						<ul class="nav navbar-nav navbar-right pull-right">
							<li class="dropdown hidden-xs"><a href="#" data-target="#"
								class="dropdown-toggle waves-effect" data-toggle="dropdown"
								aria-expanded="true"><i class="md md-notifications"></i> <span
									class="badge badge-xs badge-danger">3</span></a>
							<ul class="dropdown-menu dropdown-menu-lg">
									<li class="text-center notifi-title">Notification</li>
									<li class="list-group">
										<!-- list item-->
										<a href="javascript:void(0);" class="list-group-item"><div
												class="media">
												<div class="pull-left">
													<em class="fa fa-user-plus fa-2x text-info"></em>
												</div>
												<div class="media-body clearfix">
													<div class="media-heading">New user registered</div>
													<p class="m-0">
														<small>You have 10 unread messages</small>
													</p>
												</div>
											</div></a>
									<!-- list item--> <a href="javascript:void(0);"
										class="list-group-item"><div class="media">
												<div class="pull-left">
													<em class="fa fa-diamond fa-2x text-primary"></em>
												</div>
												<div class="media-body clearfix">
													<div class="media-heading">New settings</div>
													<p class="m-0">
														<small>There are new settings available</small>
													</p>
												</div>
											</div></a>
									<!-- list item--> <a href="javascript:void(0);"
										class="list-group-item"><div class="media">
												<div class="pull-left">
													<em class="fa fa-bell-o fa-2x text-danger"></em>
												</div>
												<div class="media-body clearfix">
													<div class="media-heading">Updates</div>
													<p class="m-0">
														<small>There are <span class="text-primary">2</span>
															new updates available
														</small>
													</p>
												</div>
											</div></a>
									<!-- last list item --> <a href="javascript:void(0);"
										class="list-group-item"><small>See all
												notifications</small></a>
									</li>
								</ul></li>
							<li class="hidden-xs"><a href="#" id="btn-fullscreen"
								class="waves-effect"><i class="md md-crop-free"></i></a></li>
							<li class="hidden-xs"><a href="#"
								class="right-bar-toggle waves-effect"><i class="md md-chat"></i></a></li>
							<li class="dropdown"><a href=""
								class="dropdown-toggle profile" data-toggle="dropdown"
								aria-expanded="true"><img
									src="img/avatar-1.jpg" alt="user-img"
									class="img-circle"></a>
							<ul class="dropdown-menu">
									<li><a href="javascript:void(0)"><i
											class="md md-face-unlock"></i> Profile</a></li>
									<li><a href="javascript:void(0)"><i
											class="md md-settings"></i> Settings</a></li>
									<li><a href="javascript:void(0)"><i class="md md-lock"></i>
											Lock screen</a></li>
									<li><a href="javascript:void(0)"><i
											class="md md-settings-power"></i> Logout</a></li>
								</ul></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</div>
		</div>
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
							<h4 class="pull-left page-title">Datatable</h4>
							<ol class="breadcrumb pull-right">
								<li><a href="#">CodeFreaks</a></li>
								<li><a href="#">Tables</a></li>
								<li class="active">Datatable</li>
							</ol>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">Datatable</h3>
								</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-md-12 col-sm-12 col-xs-12">
											<table id="datatable"
												class="table table-striped table-bordered">
												<thead>
													<tr>
														<th>Name</th>
														<th>Position</th>
														<th>Office</th>
														<th>Age</th>
														<th>Start date</th>
														<th>Salary</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Tiger Nixon</td>
														<td>System Architect</td>
														<td>Edinburgh</td>
														<td>61</td>
														<td>2011/04/25</td>
														<td>$320,800</td>
													</tr>
													<tr>
														<td>Garrett Winters</td>
														<td>Accountant</td>
														<td>Tokyo</td>
														<td>63</td>
														<td>2011/07/25</td>
														<td>$170,750</td>
													</tr>
													<tr>
														<td>Ashton Cox</td>
														<td>Junior Technical Author</td>
														<td>San Francisco</td>
														<td>66</td>
														<td>2009/01/12</td>
														<td>$86,000</td>
													</tr>
													<tr>
														<td>Cedric Kelly</td>
														<td>Senior Javascript Developer</td>
														<td>Edinburgh</td>
														<td>22</td>
														<td>2012/03/29</td>
														<td>$433,060</td>
													</tr>
													<tr>
														<td>Airi Satou</td>
														<td>Accountant</td>
														<td>Tokyo</td>
														<td>33</td>
														<td>2008/11/28</td>
														<td>$162,700</td>
													</tr>
													<tr>
														<td>Brielle Williamson</td>
														<td>Integration Specialist</td>
														<td>New York</td>
														<td>61</td>
														<td>2012/12/02</td>
														<td>$372,000</td>
													</tr>
													<tr>
														<td>Zorita Serrano</td>
														<td>Software Engineer</td>
														<td>San Francisco</td>
														<td>56</td>
														<td>2012/06/01</td>
														<td>$115,000</td>
													</tr>
														<tr>
														<td>Shad Decker</td>
														<td>Regional Director</td>
														<td>Edinburgh</td>
														<td>51</td>
														<td>2008/11/13</td>
														<td>$183,000</td>
													</tr>
													<tr>
														<td>Michael Bruce</td>
														<td>Javascript Developer</td>
														<td>Singapore</td>
														<td>29</td>
														<td>2011/06/27</td>
														<td>$183,000</td>
													</tr>
													<tr>
														<td>Donna Snider</td>
														<td>Customer Support</td>
														<td>New York</td>
														<td>27</td>
														<td>2011/01/25</td>
														<td>$112,000</td>
													</tr>
												</tbody>
											</table>
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
		<!-- Right Sidebar -->
		<div class="side-bar right-bar nicescroll">
			<h4 class="text-center">Chat</h4>
			<div class="contact-list nicescroll">
				<ul class="list-group contacts-list">
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="img/avatar-1.jpg" alt="">
							</div>
							<span class="name">Chadengle</span> <i
							class="fa fa-circle online"></i></a> <span class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="img/avatar-2.jpg" alt="">
							</div>
							<span class="name">Tomaslau</span> <i class="fa fa-circle online"></i></a>
						<span class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="img/avatar-3.jpg" alt="">
							</div>
							<span class="name">Stillnotdavid</span> <i
							class="fa fa-circle online"></i></a> <span class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="img/avatar-4.jpg" alt="">
							</div>
							<span class="name">Kurafire</span> <i class="fa fa-circle online"></i></a>
						<span class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="img/avatar-5.jpg" alt="">
							</div>
							<span class="name">Shahedk</span> <i class="fa fa-circle away"></i></a>
						<span class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="img/avatar-6.jpg" alt="">
							</div>
							<span class="name">Adhamdannaway</span> <i
							class="fa fa-circle away"></i></a> <span class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="img/avatar-7.jpg" alt="">
							</div>
							<span class="name">Ok</span> <i class="fa fa-circle away"></i></a> <span
						class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="img/avatar-8.jpg" alt="">
							</div>
							<span class="name">Arashasghari</span> <i
							class="fa fa-circle offline"></i></a> <span class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="img/avatar-9.jpg" alt="">
							</div>
							<span class="name">Joshaustin</span> <i
							class="fa fa-circle offline"></i></a> <span class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="img/avatar-10.jpg" alt="">
							</div>
							<span class="name">Sortino</span> <i class="fa fa-circle offline"></i></a>
						<span class="clearfix"></span></li>
				</ul>
			</div>
		</div>
		<!-- /Right-bar -->
	</div>
	<!-- END wrapper -->
	<script>var resizefunc = [];</script>
	<!-- jQuery  -->
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
	<script src="resources/js/jquery.dataTables.min.js"></script>
	<script src="resources/js/dataTables.bootstrap.js"></script>
	<script type="text/javascript">$(document).ready(function() {
                $('#datatable').dataTable();
            } );</script>
</body></html>
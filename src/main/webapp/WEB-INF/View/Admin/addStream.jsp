<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>
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
							<h4 class="pull-left page-title">Manage Stream</h4>
							<ol class="breadcrumb pull-right">
								<li><a href="index.jsp">CodeFreaks</a></li>
								<li><a href="managecategory.jsp">Manage Stream</a></li>
								<li class="active">Add Stream</li>
							</ol>
						</div>
					</div>
					<!-- Page-Title end -->
					
					
					


					<!--  page body start -->
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-default">
								
								
								<div class="panel-heading">
									<h3 class="panel-title">Add New Stream</h3>
								</div>
								
								
								<div class="panel-body">
								
								
									<form:form role="form" action="addStream.htm" method="POST" modelAttribute="addstreamMA" >
										<div class="form-group">
										
									
											<label for="exampleInputEmail1">Stream :</label> 
											<form:input  class="form-control"  placeholder="Enter Stream Name" path="streamName"/>
										</div>
										<form:hidden path="streamID"/>
										<br>
											<div class="form-group">
											<div class="checkbox checkbox-primary"></div>
											<button class="btn btn-purple waves-effect waves-light"
												type="submit">Add Stream</button>
									</div>
									</form:form>
								</div>
								
								
								
								
							</div>
						</div>
					</div>
					<!--  page body end  -->
					
					
					

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
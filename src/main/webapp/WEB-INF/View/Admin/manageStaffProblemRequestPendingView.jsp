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
.md-add{
font-size: 18px;

}
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
							<h4 class="pull-left page-title">Manage Staff Problems</h4>
							<ol class="breadcrumb pull-right">
								<li><a href="index.jsp">CodeFreaks</a></li>
								<li>Manage Staff Problems</li>
								
							</ol>
						</div>
					</div>
					<!-- Page-Title end -->
					
					
					


					<!--  panel start  -->
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">View problem</h3>
								</div>
								
								
								<!-- panel-body start -->
								<div class="panel-body">
									<form role="form">
										
										<div class="form-group">
											<label for="">Category :</label>
											<select class="form-control">
												<option>Fetch Category</option>
												
											</select>
										</div>

										<div class="form-group">
											<label for="">Type :</label>
											<select class="form-control">
												<option>Easy</option>
												<option>Medium</option>
												<option>Hard</option>
											</select>
										</div>

										<div class="form-group">
											<label for="exampleInputEmail1">Problem Name :</label> <input
												id="exampleInputEmail1" class="form-control" type="email"
												placeholder="Enter Problem Name">
										</div>

										<div class="form-group">
											<label for="description">Description :</label>
											
											<textarea class="form-control" rows="5" placeholder="Enter Problem Description"></textarea>
											
										</div>

										<div class="form-group">
											<label for="exampleInputEmail1">Sample I/P :</label> 
											<textarea id="exampleInputEmail1" rows="10" class="form-control" placeholder="Enter Sample I/P"></textarea>
										</div>
										
										<div class="form-group">
											<label for="exampleInputEmail1">Sample O/P :</label> 
											<textarea id="exampleInputEmail1" rows="10" class="form-control" placeholder="Enter Sample O/P"></textarea>
										</div>
										
										<div class="form-group">
											<label for="exampleInputEmail1">Flow of program :</label> 
											<textarea id="exampleInputEmail1" rows="5" class="form-control" placeholder="Enter Flow of program"></textarea>
										</div>
										
										<div class="form-group">
											<label for="exampleInputEmail1">Solution Code :</label> 
											<textarea id="exampleInputEmail1" rows="10" class="form-control" placeholder="Enter Solution Code"></textarea>
										</div>
										
										<div class="form-group">
											<label for="exampleInputEmail1">Testcase Code :</label> 
											<textarea id="exampleInputEmail1" rows="10" class="form-control" placeholder="Enter Testcase Code"></textarea>
										</div>
										
										<div class="form-group">
											<label>Marks :</label>
											<input class="form-control" type="number" placeholder="Enter Marks">
										</div>
										
										
										
										<br>
										
										<button class="btn btn-purple waves-effect waves-light"
												type="submit">Approve
										</button>
										
										<button class="btn btn-purple waves-effect waves-light"
												type="submit">Disapprove
										</button>
									</form>
								</div>
								<!-- panel-body end ->
								
							
							</div>
						</div>
					</div>
					<!--  panel end  -->
					
					
					

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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="left side-menu">
		<div class="sidebar-inner slimscrollleft" >
				<div class="user-details">
					<div class="pull-left">
						<img src="resources/img/avatar-1.jpg" alt=""
							class="thumb-md img-circle">
					</div>
					<div class="user-info">
						<div class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"
								aria-expanded="false">John Doe <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="javascript:void(0)"><i
										class="md md-face-unlock"></i> Profile
										<div class="ripple-wrapper"></div></a></li>
								<li><a href="javascript:void(0)"><i
										class="md md-settings"></i> Settings</a></li>
								<li><a href="javascript:void(0)"><i class="md md-lock"></i>
										Lock screen</a></li>
								<li><a href="javascript:void(0)"><i
										class="md md-settings-power"></i> Logout</a></li>
							</ul>
						</div>
						<p class="text-muted m-0">Administrator</p>
					</div>
				</div>


				<!--- Divider -->
				<div id="sidebar-menu">
					<ul>
		
						<li>
							<a href="index.html" class="waves-effect active"><i class="md md-home"></i><span>Dashboard</span>
							</a>
						</li>
						
						
						<li class="has_sub">
							<a href="#" class="waves-effect subdrop">
							<i class="md md-dns"></i> 
							<span>Manage Category</span> 
							<span class="pull-right">
								<i class="md md-add"></i>
							</span>
							</a>
							
							<ul class="list-unstyled" style="display:default;">
								<li><a href="addCategory.html">Add Category</a></li>
								<li><a href="searchCategory.html">Search Category</a></li>
							</ul>
						</li>
						
						<li class="has_sub">
							<a href="#" class="waves-effect subdrop">
							<i class="md md-mail"></i> 
							<span>Manage Problems</span> 
							<span class="pull-right">
								<i class="md md-add"></i>
							</span>
							</a>
							
							<ul class="list-unstyled" style="display:default;">
								<li><a href="addProblem.html">Add Problem</a></li>
								<li><a href="searchProblem.html">Search Problem</a></li>
							</ul>
						</li>
						
						<li class="has_sub">
							<a href="#" class="waves-effect subdrop">
							<i class="md md-mail"></i> 
							<span>Manage Staff</span> 
							<span class="pull-right">
								<i class="md md-add"></i>
							</span>
							</a>
							
							<ul class="list-unstyled" style="display:default;">
								<li><a href="manageStaffRequestPending.html">Request Pending</a></li>
								<li><a href="manageStaffApproved.html">Approved</a></li>
								<li><a href="manageStaffDisapproved.html">Disapproved</a></li>
							</ul>
						</li>
						
						<li class="has_sub">
							<a href="#" class="waves-effect subdrop">
							<i class="md md-mail"></i> 
							<span>Manage Staff Problems</span> 
							<span class="pull-right">
								<i class="md md-add"></i>
							</span>
							</a>
							
							<ul class="list-unstyled" style="display:default;">
								<li><a href="manageStaffProblemRequestPending.html">Request Pending</a></li>
								<li><a href="manageStaffProblemApproved.html">Approved</a></li>
								<li><a href="manageStaffProblemDisapproved.html">Disapproved</a></li>
							</ul>
						</li>
						
						<li class="has_sub">
							<a href="#" class="waves-effect subdrop">
							<i class="md md-mail"></i> 
							<span>Manage Comments</span> 
							<span class="pull-right">
								<i class="md md-add"></i>
							</span>
							</a>
							
							<ul class="list-unstyled" style="display:default;">
								<li><a href="allComments.html">All Comments</a></li>
								<li><a href="deletedComments.html">Deleted</a></li>
							</ul>
						</li>
						
						<li>
							<a href="manageFeedback.html" class="waves-effect"><i class="md md-messenger"></i><span>Manage Feedback</span>
							</a>
						</li>
						
						<li class="has_sub">
							<a href="#" class="waves-effect subdrop">
							<i class="md md-mail"></i> 
							<span>Manage Complains</span> 
							<span class="pull-right">
								<i class="md md-add"></i>
							</span>
							</a>
							
							<ul class="list-unstyled" style="display:default;">
								<li><a href="addComplainCategory.html">Add Complain Category</a></li>
								<li><a href="viewComplainCategory.html">View Complain Category </a></li>
								<li><a href="viewComplain.html">View Complains</a></li>
							</ul>
						</li>
						
						<li class="has_sub">
							<a href="#" class="waves-effect subdrop">
							<i class="md md-mail"></i> 
							<span>Manage Country</span> 
							<span class="pull-right">
								<i class="md md-add"></i>
							</span>
							</a>
							
							<ul class="list-unstyled" style="display:default;">
								<li><a href="addCountry.html">Add Country</a></li>
								<li><a href="searchCountry.html">Search Country</a></li>
							</ul>
						</li>
							<li class="has_sub">
							<a href="#" class="waves-effect subdrop">
							<i class="md md-mail"></i> 
							<span>Manage streams</span> 
							<span class="pull-right">
								<i class="md md-add"></i>
							</span>
							</a>
							
							<ul class="list-unstyled" style="display:default;">
								<li><a href="addStream.html">Add Stream</a></li>
								<li><a href="viewStream.html">View Stream </a></li>
							</ul>
						</li>
						</li>
							<li class="has_sub">
							<a href="#" class="waves-effect subdrop">
							<i class="md md-mail"></i> 
							<span>Manage degree</span> 
							<span class="pull-right">
								<i class="md md-add"></i>
							</span>
							</a>
							
							<ul class="list-unstyled" style="display:default;">
								<li><a href="addDegree.html">Add Degree</a></li>
								<li><a href="viewDegree.html">View Degree </a></li>
							</ul>
						</li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
			</div>
		
</body>
</html>
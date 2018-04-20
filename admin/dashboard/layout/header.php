<!DOCTYPE html>
<html>

	<head>

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!-- judul -->
		<title>Panel Admin</title>
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<!-- Bootstrap 3.3.5 -->
	    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
	    <!-- Font Awesome -->
	    <link rel="stylesheet" href="../../bootstrap/css/font-awesome.min.css">
	    <!-- Ionicons -->
	    <link rel="stylesheet" href="../../bootstrap/css/ionicons.min.css">
		<!-- Select2 -->
  		<link rel="stylesheet" href="../../plugins/select2/select2.min.css">
		<!-- bootstrap datepicker -->
  		<link rel="stylesheet" href="../../plugins/datepicker/datepicker3.css">
	    <!-- iCheck for checkboxes and radio inputs -->
	    <link rel="stylesheet" href="../../plugins/iCheck/all.css">
		<!-- sweetalert -->
	    <link rel="stylesheet" href="../../plugins/sweetalert/sweetalert.css">
	    <!-- Theme style -->
	    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
		<!-- css ane -->
	    <link rel="stylesheet" href="../../dist/css/css_me.css">
	    <!-- icon -->
	    <link rel="icon" href="../../dist/img/m.png">
	    <!-- DataTables -->
	    <link rel="stylesheet" href="../../plugins/datatables/dataTables.bootstrap.css">
	    <!-- skin -->
	    <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">
	    <!-- fancy box -->
	    <link rel="stylesheet" href="../../dist/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
	    <!-- summernote -->
		<link rel="stylesheet" href="../../dist/css/summernote.css">
		<!-- style -->
		<style media="screen">
			.skin-blue .main-header .navbar{
				background-color: rgb(55, 54, 54);
			}
			.box.box-solid.box-default>.box-header{
			    background-color: rgb(55, 54, 54);
			}
			@media (max-width: 767px){
				.skin-blue .main-header .navbar .dropdown-menu li a:hover{
				    background: rgba(33, 33, 33, 0.61);
				}
			}
			.nav-tabs-custom>.nav-tabs>li.active {
			    border-top-color: rgb(55, 54, 54);
			}
			.nav-tabs-custom>.nav-tabs>li>a:hover {
			    color: black;
			}
			.nav-tabs-custom {
			    margin-bottom: 0px;
			    box-shadow: 0 1px 1px 1px rgba(0,0,0,0.2);
			}
			.bg-default{
				background-color: rgb(55, 54, 54);
				color: white;
			}
			.bg-default i{
				color: white;
			}
		</style>
	</head>

	<body class="hold-transition skin-blue layout-top-nav">
        <!--<div class="loading"></div>-->
		<div class="wrapper">
			<header class="main-header">
				<nav class="navbar navbar-fixed-top">
					<div class="navbar-header">
						<a href="home" class="navbar-brand"><b>MONITORING DRIVER</b></a>
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
							<i class="fa fa-bars"></i>
						</button>
					</div>
					<div class="collapse navbar-collapse pull-left" id="navbar-collapse">
						<ul class="nav navbar-nav">
							<li><a href="home"><span class="fa fa-home"></span> Home</a></li>
							<?php
	                            if (isset($_SESSION['level'])) {
	                                if ($_SESSION['level'] == 'super admin') {
	                        ?>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="fa fa-cogs"></span> Management <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu" style="background-color: rgb(55, 54, 54);border-color: rgb(55, 54, 54);">
									<li><a href="index.php?page=user"><span class="fa fa-cog"></span> Manage Admin</a></li>
									<li><a href="index.php?page=driver"><span class="fa fa-cog"></span> Manage Driver</a></li>
								</ul>
							</li>
							<?php }} ?>
							<li><a href="index.php?page=driver_standby"><span class="fa fa-info-circle"></span> Driver Standby</a></li>
							<li><a href="index.php?page=driver_temporary"><span class="fa fa-info-circle"></span> Driver Temporary</a></li>
							<li><a href="index.php?page=contact"><span class="fa fa-mobile-phone"></span> Contact</a></li>
						</ul>
					</div>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="fa fa-user-circle"></span> <?php echo $name ?> </a>
								<ul class="dropdown-menu" role="menu" style="background-color: rgb(55, 54, 54);border-color: rgb(55, 54, 54);">
									<div class="widget-user-image">
	        							<a class="fancybox" href="../../dist/img/user.jpg">
	        								<img class="profile-user-img img-responsive img-circle" style="height:70px;width:70px;" src="../../dist/img/user.jpg" alt="User profile picture">
	        							</a>
		    						</div>
		    						<p class="profile-username text-center" style="color:white;font-size:18px"><b><?php echo $name ?></b></p>
		                            <h5 class="text-muted text-center" style="color:white;"><b><?php echo $level ?></b></h5>
		                            <h2 class="text-center" id="time" style="color:white;"></h2>
									<li><a title="Logout" href="../logout.php" style="border-top:2px solid white;"><span class="fa fa-sign-out"></span> Logout</a></li>
								</ul>
							</li>
                        </ul>
                    </div>
				</nav>
			</header>
			<!-- end header -->

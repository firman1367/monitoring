<?php
	session_start();
	include ('admin/config/koneksi.php');
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Monitoring Driver</title>
		<meta http-equiv="refresh" content="300" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.5 -->
	    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	    <!-- Font Awesome -->
	    <link rel="stylesheet" href="bootstrap/css/font-awesome.min.css">
	    <!-- Theme style -->
	    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
	    <!-- Ionicons -->
	    <link rel="stylesheet" href="bootstrap/css/ionicons.min.css">
        <!-- skin -->
        <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
        <!-- css ane -->
	    <link rel="stylesheet" href="dist/css/css_me.css">
	    <!-- icon -->
		<link rel="icon" type="image/png" href="dist/img/m.png">
	    <!-- DataTables -->
	    <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
        <style media="screen">
			.skin-blue .main-header .navbar{
				background-color: rgb(55, 54, 54);
			}
			.box.box-solid.box-default>.box-header{
			    background-color: rgb(55, 54, 54);
			}
            .navbar-brand{
                padding: 0px;
            }
            .navbar-fixed-top {
                border-width: 0 0 0px;
            }
            .nav-tabs-custom>.nav-tabs>li.active {
			    border-top-color: rgb(55, 54, 54);
			}
            .nav-tabs-custom>.tab-content {
                padding: 10px;
            }
			.nav-tabs-custom>.nav-tabs>li>a:hover {
			    color: black;
			}
			.nav-tabs-custom {
                margin-bottom: 0px;
			    box-shadow: 0 1px 1px 1px rgba(0,0,0,0.1);
			}
            /*loading */
            .loading {

                position: fixed;
                left: 0px;
                top: 0px;
                width: 100%;
                height: 100%;
                z-index: 9999;
                background: url(admin/dashboard/loading/loading3.gif) center no-repeat #fff;

            }
            .bg-default{
				background-color: rgb(55, 54, 54);
				color: white;
			}
			.bg-default i{
				color: white;
			}
            .tab_con{
                margin-top: 12px;
                margin-bottom: 12px;
                font-weight: bold;
                font-size: 14px;
                line-height: 2;
            }
            @media screen and (max-width: 767px){
                .table-responsive {
                    border: 1px solid white;
                }
            }
        </style>
    </head>
    <body class="hold-transition skin-blue layout-top-nav">
		<?php
			include ('date/fungsi_date.php');
			include ('date/day.php');
		?>
        <div class="loading"></div>
        <div class="wrapper">
            <header class="main-header">
				<nav class="navbar navbar-fixed-top">
					<div class="navbar-header">
						<a href="index.php"><img class="navbar-brand" src="dist/img/MUKTI.jpg"></a>
					</div>
				</nav>
			</header>
            <div class="content-wrapper">
                <div class="container">
                    <section class="content">
                        <div class="col-md-6">
                            <div class="box box-solid no-border">
                                <div class="box-body">
                                    <div class="col-lg-4 col-xs-6">
                                        <div class="small-box bg-default" style="margin-bottom:3px;">
                                            <div class="inner">
                                                <?php
                                                    $standby = mysqli_query($koneksi,("SELECT COUNT(id_standby) AS total_standby FROM tb_driver_standby"));
                                                    $data = mysqli_fetch_array($standby);
                                                ?>
                                                <h3 class="text-center"><?php echo $data['total_standby'] ?></h3>

                                                <p class="text-center">Driver Standby</p>
                                            </div>
                                            <p class="small-box-footer"><i class="fa fa-info-circle"></i> Information</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-xs-6">
                                        <div class="small-box bg-default" style="margin-bottom:3px;">
                                            <div class="inner">
                                                <?php
                                                    $temporary = mysqli_query($koneksi,("SELECT COUNT(id_temporary) AS total_temporary FROM tb_driver_temporary"));
                                                    $data = mysqli_fetch_array($temporary);
                                                ?>
                                                <h3 class="text-center"><?php echo $data['total_temporary'] ?></h3>

                                                <p class="text-center">Driver Temporary</p>
                                            </div>
                                            <p class="small-box-footer"><i class="fa fa-info-circle"></i> Information</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-xs-6">
                                        <div class="small-box bg-default" style="margin-bottom:3px;">
                                            <div class="inner">
                                                <?php
                                                    $temporary = mysqli_query($koneksi,("SELECT COUNT(id_employe_driver) AS total_driver FROM tb_driver"));
                                                    $data = mysqli_fetch_array($temporary);
                                                ?>
                                                <h3 class="text-center"><?php echo $data['total_driver'] ?></h3>

                                                <p class="text-center">Total Driver</p>
                                            </div>
                                            <p class="small-box-footer"><i class="fa fa-info-circle"></i> Information</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="box box-solid no-border">
                                <div class="box-body">
                                    <div class="col-lg-6 col-xs-6">
                                        <div class="table-responsive">
                                            <?php
                                                $query  = mysqli_query($koneksi,("SELECT * FROM tb_contact"));
                                                $data   = mysqli_fetch_array($query);
                                            ?>
                                            <table class="tab_con">
                                                <tr>
                                                    <td width="80">Telp</td>
                                                    <td width="10">:</td>
                                                    <td><?php echo $data['telp'] ?></td>
                                                </tr>
                                                <tr>
                                                    <td>CCMS</td>
                                                    <td width="10px">:</td>
                                                    <td><?php echo $data['ccms'] ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Driv. Co.</td>
                                                    <td width="10px">:</td>
                                                    <td><?php echo $data['driver_co'] ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Dispatcher</td>
                                                    <td width="10px">:</td>
                                                    <td><?php echo $data['dispatcher'] ?></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-xs-6">
                                        <img src="dist/img/m_2.jpg" style="max-width:100%;width:250px;height:140px;">
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="box box-default box-solid no-border">
                                <div class="box-header with-border" style="color:white;">
                                    <i class="fa fa-th"></i>
                                    <h3 class="box-title"><?php echo $hariini ?>, <?php echo(DateToIndo(date('Y m d')));?> - DATA DRIVER STANDBY AND TEMPORARY</h3>
                                    <div class="box-tools">
                                        <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="hide"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="close"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>
                                <div class="box-body">
                                    <div class="nav-tabs-custom">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="#tab_1" data-toggle="tab"><i class="fa fa-bar-chart"></i> Data Driver Standby</a></li>
                                            <li><a href="#tab_2" data-toggle="tab"><i class="fa fa-bar-chart"></i> Data Driver Temporary</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="tab_1">
                                                <div class="table-responsive">
                                                    <table id="example2" class="table table-hover table-striped" >
                                                        <thead>
                                                            <tr style="background-color: rgb(55, 54, 54);color:white;">
                                                                <th class="text-center">No.</th>
                                                                <th class="text-center">Driver Name</th>
                                                                <th class="text-center">Domicile</th>
                                                                <th class="text-center">Phone Number</th>
                                                                <th class="text-center">Date</th>
                                                                <th class="text-center">Remark</th>
                                                                <th class="text-center">Next Dispatch</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <?php
                                                                $nomer = 1;
																$query = mysqli_query($koneksi,("SELECT a.username_employe, a.domicile, a.phone_number1 , b.date, b.date2, b.remark, b.next_dispatch, b.id_standby
							                                                                     FROM tb_driver_standby AS b
							                                                                     JOIN tb_driver AS a USING(id_employe_driver)
							                                                                     ORDER BY b.id_standby ASC"));
                                                                foreach($query as $data){
                                                            ?>
                                                            <tr>
                                                                <td class="text-center"><?php echo $nomer++; ?></td>
                                                                <td><?php echo $data['username_employe'] ?></td>
                                                                <td><?php echo $data['domicile'] ?></td>
                                                                <td><?php echo $data['phone_number1'] ?></td>
																<td class="text-center">
																	<?php
																		if ($data['date2']=="0000-00-00") {
																			echo $data['date'];
																		}else{
																			echo $data['date']." s.d ".$data['date2'];
																		}
																	?>
																</td>
                                                                <td><?php echo $data['remark'] ?></td>
                                                                <td><?php echo $data['next_dispatch'] ?></td>
                                                            </tr>
                                                            <?php
                                                                }
                                                            ?>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="tab_2">
                                                <div class="table-responsive">
                                                    <table id="example4" class="table table-hover table-striped">
                                                        <thead>
                                                            <tr style="background-color: rgb(55, 54, 54);color:white;">
                                                                <th class="text-center">No.</th>
                                                                <th class="text-center">Driver Name</th>
                                                                <th class="text-center">Domicile</th>
                                                                <th class="text-center">Phone Number</th>
                                                                <th class="text-center">Date</th>
                                                                <th class="text-center">Remark</th>
                                                                <th class="text-center" width="20%">Next Dispatch</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <?php
                                                                $nomer = 1;
                                                                /*$query = mysqli_query($koneksi,("SELECT a.date, a.remark, a.next_dispatch, a.id_temporary, b.username_employe, b.domicile, b.phone_number
                                                                                                 FROM tb_driver_temporary AS a
                                                                                                 JOIN tb_driver AS b USING(id_employe_driver)
                                                                                                 ORDER BY a.id_temporary ASC"));*/
																$query = mysqli_query($koneksi,("SELECT * FROM tb_driver_temporary"));
                                                                foreach($query as $data){
                                                            ?>
                                                            <tr>
                                                                <td class="text-center"><?php echo $nomer++; ?></td>
                                                                <td><?php echo $data['username_driver'] ?></td>
                                                                <td><?php echo $data['domicile'] ?></td>
                                                                <td><?php echo $data['phone_number'] ?></td>
                                                                <td><?php echo $data['date'] ?></td>
                                                                <td><?php echo $data['remark'] ?></td>
                                                                <td><?php echo $data['next_dispatch'] ?></td>
                                                            </tr>
                                                            <?php
                                                                }
                                                            ?>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
            <footer class="main-footer">
                <div class="container">
                    <strong><center>Copyright &copy; 2017</center></strong>
                </div>
            </footer>
        </div>

        <!-- jQuery 2.1.4 -->
        <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <!-- Bootstrap 3.3.5 -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <!-- SlimScroll -->
        <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <script src="dist/js/docs.js"></script>

        <!-- AdminLTE App -->
        <script src="dist/js/app.min.js"></script>
        <!-- DataTables -->
        <script src="plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
        <!-- animasi loading -->
        <script>
            $(window).load(function() {
                $(".loading").fadeOut(1200);
            });
        </script>
        <script>
        $(function () {
            $("#example1").DataTable();
            $('#example2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": true,
                "ordering": false,
                "info": false,
                "autoWidth": false,
                "iDisplayLength": 25
            });
            $('#example3').DataTable({
                "paging": true,
                "lengthChange": true,
                "searching": true,
                "ordering": true,
                "info": false,
                "autoWidth": false
            });
            $('#example4').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": true,
                "ordering": false,
                "info": false,
                "autoWidth": false,
                "iDisplayLength": 25
            });
        });
        </script>
    </body>
</html>

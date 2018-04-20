<div class="row">
    <div class="col-md-12">
        <div class="box box-default box-solid no-border">
            <div class="box-header with-border" style="color:white;">
                <i class="fa fa-home" ></i>
                <h3 class="box-title">Home</h3>
                <div class="box-tools">
                    <button class="btn btn-box-tool" data-toggle="tooltip" title="hide" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button class="btn btn-box-tool" data-toggle="tooltip" title="remove" data-widget="remove"><i class="fa fa-times"></i></button>
                </div>
            </div>
            <div class="box-body">
                <div class="row">
                    <div class="col-lg-6 col-xs-6">
                        <div class="small-box bg-default">
                            <div class="inner">
                                <?php
                                    $admin = mysqli_query($koneksi,("SELECT COUNT(id_user) AS total_admin FROM tb_user"));
                                    $data = mysqli_fetch_array($admin);
                                ?>
                                <h3><?php echo $data['total_admin'] ?></h3>

                                <p>Administrator</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="index.php?page=user" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xs-6">
                        <div class="small-box bg-default">
                            <div class="inner">
                                <?php
                                    $driver = mysqli_query($koneksi,("SELECT COUNT(id_employe_driver) AS total_driver FROM tb_driver"));
                                    $data = mysqli_fetch_array($driver);
                                ?>
                                <h3><?php echo $data['total_driver'] ?></h3>

                                <p>Driver</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="index.php?page=driver" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xs-6">
                        <div class="small-box bg-default" style="margin-bottom:3px;">
                            <div class="inner">
                                <?php
                                    $standby = mysqli_query($koneksi,("SELECT COUNT(id_standby) AS total_standby FROM tb_driver_standby"));
                                    $data = mysqli_fetch_array($standby);
                                ?>
                                <h3><?php echo $data['total_standby'] ?></h3>

                                <p>Driver Standby</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="index.php?page=driver_standby" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xs-6">
                        <div class="small-box bg-default" style="margin-bottom:3px;">
                            <div class="inner">
                                <?php
                                    $temporary = mysqli_query($koneksi,("SELECT COUNT(id_temporary) AS total_temporary FROM tb_driver_temporary"));
                                    $data = mysqli_fetch_array($temporary);
                                ?>
                                <h3><?php echo $data['total_temporary'] ?></h3>

                                <p>Driver Temporary</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="index.php?page=driver_temporary" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
                <!--
                <div id="peta" style="width:100%;height:500px;"></div>
                    <script type="text/javascript">

                        function init(){
                            var info_window = new google.maps.InfoWindow();

                            // menentukan level zoom
                            var zoom = 15;

                            // menentikan latitude dan longitude
                            var pos = new google.maps.LatLng(-6.2527231,106.8139986);

                            // menentukan opsi peta
                            var options = {
                                'center': pos,
                                'zoom': zoom,
                                'mapTypeId': google.maps.MapTypeId.TERRAIN
                            };

                            // membuat peta
                            var map = new google.maps.Map(document.getElementById('peta'), options);
                            info_window = new google.maps.InfoWindow({
                                'content': 'loading...'
                            });

                            // membuat marker
                            var marker = new google.maps.Marker({
                                position: pos,
                                title: 'You are here',
                                animation: google.maps.Animation.BOUNCE
                            });

                            // set marker di peta
                            marker.setMap(map);

                            // membuat event ketika marker di click
                            google.maps.event.addListener(marker, 'click', function(){
                                info_window.setContent('<b>'+ this.title +'</b>');
                                info_window.open(map, this);
                            });
                        }
                        google.maps.event.addDomListener(window, 'load', init);

                    </script> -->
            </div>
        </div>
    </div>
</div>

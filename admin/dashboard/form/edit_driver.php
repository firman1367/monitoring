<?php
    if (isset($_GET['id_employe_driver'])) {
        $id_employe_driver  = $_GET['id_employe_driver'];
        $query              = mysqli_query($koneksi,("SELECT * FROM tb_driver WHERE id_employe_driver = '$id_employe_driver'"));
        $data               = mysqli_fetch_array($query);
    }
?>
<div class="box box-default box-solid no-border">
    <div class="box-header with-border" style="color:white">
        <i class="fa fa-table"></i>
        <h3 class="box-title">Edit Data Driver - <?php echo $data[3] ?></h3>
        <div class="box-tools">
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="collapse" title="hide"><i class="fa fa-minus"></i></button>
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="remove" title="close"><i class="fa fa-times"></i></button>
        </div>
    </div>
    <div class="box-body">
        <!-- Custom Tabs -->
        <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#tab_1" data-toggle="tab"><i class="fa fa-wpforms"></i> Form Edit</a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="tab_1">
                    <form class="form-horizontal" action="function/edit.php?aksi=edit_driver" enctype="multipart/form-data" method="post">
                        <input class="form-control" type="hidden" name="id_employe_driver" value="<?php echo $data[0]; ?>">
                        <div class="form-group">
                            <label class="col-md-3 control-label">Code Driver</label>
                            <div class="col-md-6">
                                <input class="form-control" type="text" name="code_driver" value="<?php echo $data[1]; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">NIK</label>
                            <div class="col-md-6">
                                <input class="form-control" type="text" name="nik_employe" value="<?php echo $data[2]; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Driver Name</label>
                            <div class="col-md-6">
                                <input class="form-control" type="text" name="username_employe" value="<?php echo $data[3]; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Hire Date</label>
                            <div class="col-md-6">
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <?php
                                        if ($data[4] == "0000-00-00") {
                                    ?>
                                        <input type="text" name="hire_date" class="form-control pull-right" value="" id="datepicker">
                                    <?php
                                        }else{
                                    ?>
                                        <input type="text" name="hire_date" class="form-control pull-right" value="<?php echo $data[4]; ?>" id="datepicker">
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Transfer/New</label>
                            <div class="col-md-6">
                                <select class="form-control" name="type">
                                    <?php error_reporting(0);
        								if ($data[5]=="-") {
        									$a = "selected=selected";
        								}
                                        else if ($data[5]=="Transfer") {
        									$b = "selected=selected";
        								}
        								else if ($data[5]=="New") {
        									$c = "selected=selected";
        								}
        							?>
                                    <option value="-" <?php echo $a ?>>-</option>
                                    <option value="Transfer" <?php echo $b ?>>Transfer</option>
                                    <option value="New" <?php echo $c ?>>New</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Status Driver</label>
                            <div class="col-md-6">
                                <select class="form-control" name="status_driver">
                                    <?php error_reporting(0);
        								if ($data['driver_status']=="Corporate") {
        									$a = "selected=selected";
        								}
                                        else if ($data['driver_status']=="User") {
        									$b = "selected=selected";
        								}
        								else if ($data['driver_status']=="Family") {
        									$c = "selected=selected";
        								}
        								else if ($data['driver_status']=="Standby") {
        									$d = "selected=selected";
        								}
        								else if ($data['driver_status']=="Operasional") {
        									$e = "selected=selected";
        								}
        							?>
                                    <option value="Corporate" <?php echo $a ?>>Corporate</option>
                                    <option value="User" <?php echo $b ?>>User</option>
                                    <option value="Family" <?php echo $c ?>>Family</option>
                                    <option value="Standby" <?php echo $d ?>>Standby</option>
                                    <option value="Operasional" <?php echo $e ?>>Operasional</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Domicile</label>
                            <div class="col-md-6">
                                <input class="form-control" type="text" name="domicile" value="<?php echo $data[7]; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Date Working</label>
                            <div class="col-md-6">
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <?php
                                        if ($data[8] == "0000-00-00") {
                                    ?>
                                        <input type="text" name="date_working" class="form-control pull-right" value="" id="datepicker2">
                                    <?php
                                        }else{
                                    ?>
                                        <input type="text" name="date_working" class="form-control pull-right" value="<?php echo $data[8]; ?>" id="datepicker2">
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Company</label>
                            <div class="col-md-6">
                                <input class="form-control" type="text" name="company" value="<?php echo $data[9]; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Area</label>
                            <div class="col-md-6">
                                <select class="form-control" name="area">
                                    <?php error_reporting(0);
        								if ($data[10]=="0") {
        									$a = "selected=selected";
        								}
                                        else if ($data[10]=="1") {
        									$b = "selected=selected";
        								}
        								else if ($data[10]=="2") {
        									$c = "selected=selected";
        								}
                                        else if ($data[10]=="3") {
                                            $d = "selected=selected";
                                        }
        							?>
                                    <option value="0" <?php echo $a ?>>-</option>
                                    <option value="1" <?php echo $b ?>>1</option>
                                    <option value="2" <?php echo $c ?>>2</option>
                                    <option value="3" <?php echo $d ?>>3</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Phone Number 1</label>
                            <div class="col-md-6">
                                <input class="form-control" type="text" name="phone_number1" value="<?php echo $data[11]; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Phone Number 2</label>
                            <div class="col-md-6">
                                <input class="form-control" type="text" name="phone_number2" value="<?php echo $data[12]; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Keterangan</label>
                            <div class="col-md-6">
                                <textarea class="form-control" name="keterangan" rows="2"><?php echo $data[13] ?></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-3"></div>
                            <div class="col-md-6">
                                <button type="submit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-check-circle"></i> save</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <a href="index.php?page=driver" class="btn btn-default btn-sm" style="margin-top:10px;"><i class="fa fa-arrow-circle-left"></i> back</a>
    </div>
</div>

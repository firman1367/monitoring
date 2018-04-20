<?php
    if (isset($_GET['id_standby'])) {
        $id_standby     = $_GET['id_standby'];
        $query          = mysqli_query($koneksi,("SELECT a.username_employe, a.id_employe_driver, b.date, b.date2, b.remark, b.next_dispatch, b.id_standby
                                                  FROM tb_driver_standby AS b
                                                  JOIN tb_driver_dummy AS a USING(id_employe_driver)
                                                  WHERE id_standby = '$id_standby'"));
        $data           = mysqli_fetch_array($query);
    }
?>
<div class="box box-default box-solid no-border">
    <div class="box-header with-border" style="color:white;">
        <i class="fa fa-table"></i>
        <h3 class="box-title">Edit Driver Standby - <?php echo $data['username_employe'] ?></h3>
        <div class="box-tools">
            <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="hide"><i class="fa fa-minus"></i></button>
            <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="close"><i class="fa fa-times"></i></button>
        </div>
    </div>
    <div class="box-body">
        <form class="form-horizontal" action="function/edit.php?aksi=edit_driver_standby" method="post" enctype="multipart/form-data">
            <input class="form-control" type="hidden" name="id_standby" value="<?php echo $data['id_standby'] ?>">
            <input class="form-control" type="hidden" name="id_employe_driver" value="<?php echo $data['id_employe_driver'] ?>">
            <div class="form-group">
                <label class="col-sm-3 control-label">Driver Name</label>
                <div class="col-md-6">
                    <select class="form-control select2" name="id_employe_driver" style="width: 100%;">
                        <?php
                            $query1 	=	mysqli_query($koneksi,("SELECT * FROM tb_driver"));

                            while ( $data1 = mysqli_fetch_array($query1) ) {

                                if ($data['username_employe'] == $data1['username_employe']) {
                                    echo "<option value = $data1[id_employe_driver] selected>$data1[username_employe]</option>";
                                }else{
                                    echo "<option value= $data1[id_employe_driver]>$data1[username_employe]</option>";
                                }
                            }
                        ?>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">Date</label>
                <div class="col-md-3">
                    <div class="input-group date">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                        </div>
                        <input type="text" name="date1" class="form-control pull-right" id="datepicker" value="<?php echo $data['date'] ?>">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="input-group date">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                        </div>
                        <?php
                            if ($data['date2']=="0000-00-00") {
                                echo "<input type='text' name='date2' class='form-control pull-right' id='datepicker2'>";
                            }else{
                                echo "<input type='text' name='date2' class='form-control pull-right' id='datepicker2' value='$data[date2]'>";
                            }
                        ?>

                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">Remark</label>
                <div class="col-md-6">
                    <input class="form-control" type="text" name="remark" value="<?php echo $data['remark'] ?>">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">Next Dispatch</label>
                <div class="col-md-6">
                    <input class="form-control" type="text" name="next_dispatch" value="<?php echo $data['next_dispatch'] ?>">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <button type="submit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-check-circle"></i> save</button>
                    <a href="javascript:history.back()" class="btn btn-default btn-flat btn-sm"><i class="fa fa fa-arrow-circle-left"></i> back</a>
                </div>
            </div>
        </form>
    </div>
</div>

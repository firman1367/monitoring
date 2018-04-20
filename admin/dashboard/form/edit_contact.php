<?php
    if (isset($_GET['id_contact'])) {
        $id_contact  = $_GET['id_contact'];
        $query              = mysqli_query($koneksi,("SELECT * FROM tb_contact WHERE id_contact = '$id_contact'"));
        $data               = mysqli_fetch_array($query);
    }
?>
<div class="box box-default box-solid no-border">
    <div class="box-header with-border" style="color:white">
        <i class="fa fa-table"></i>
        <h3 class="box-title">Edit Contact</h3>
        <div class="box-tools">
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="collapse" title="hide"><i class="fa fa-minus"></i></button>
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="remove" title="close"><i class="fa fa-times"></i></button>
        </div>
    </div>
    <div class="box-body">
        <form class="form-horizontal" action="function/edit.php?aksi=edit_contact" enctype="multipart/form-data" method="post">
            <input class="form-control" type="hidden" name="id_contact" value="<?php echo $data[0]; ?>">
            <div class="form-group">
                <label class="col-md-3 control-label">Telp</label>
                <div class="col-md-6">
                    <input class="form-control" type="text" name="telp" value="<?php echo $data[1]; ?>">
                </div>
                <div class="col-md-3 has-warning">
                    <label class="control-label" for="inputSuccess"><i class="fa fa-warning"></i> form edit</label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">CCMS</label>
                <div class="col-md-6">
                    <input class="form-control" type="text" name="ccms" value="<?php echo $data[2]; ?>">
                </div>
                <div class="col-md-3 has-warning">
                    <label class="control-label" for="inputSuccess"><i class="fa fa-warning"></i> form edit</label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">Driver. Co</label>
                <div class="col-md-6">
                    <input class="form-control" type="text" name="driver_co" value="<?php echo $data[3]; ?>">
                </div>
                <div class="col-md-3 has-warning">
                    <label class="control-label" for="inputSuccess"><i class="fa fa-warning"></i> form edit</label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">Dipatcher</label>
                <div class="col-md-6">
                    <input class="form-control" type="text" name="dispatcher" value="<?php echo $data[4]; ?>">
                </div>
                <div class="col-md-3 has-warning">
                    <label class="control-label" for="inputSuccess"><i class="fa fa-warning"></i> form edit</label>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <button type="submit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-check-circle"></i> save</button>
                </div>
            </div>
        </form><hr>
        <a href="javascript:history.back()" class="btn btn-default btn-sm"><i class="fa fa-arrow-circle-left"></i> back</a>
    </div>
</div>

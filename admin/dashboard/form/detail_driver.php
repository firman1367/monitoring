<?php

    $host   = "localhost";
    $user   = "root";
    $pw     = "";
    $db     = "db_monitoring";

    $koneksi    = mysqli_connect($host,$user,$pw);
    $select     = mysqli_select_db($koneksi,$db);

    if (isset($_GET['rowid'])) {
        $id_employe_driver  = $_GET['rowid'];
        $query              = mysqli_query($koneksi,("SELECT * FROM tb_driver WHERE id_employe_driver = '$id_employe_driver'"));
        $data               = mysqli_fetch_array($query);
    }
?>
<form role="form" class="form-horizontal">
    <div class="form-group">
        <label class="col-md-3 control-label">Code Driver</label>
        <div class="col-md-8">
            <input class="form-control" type="text" value="<?php echo $data[1]; ?>" disabled="disabled">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">NIK Driver</label>
        <div class="col-md-8">
            <input class="form-control" type="text" value="<?php echo $data[2]; ?>" disabled="disabled">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">Driver Name</label>
        <div class="col-md-8">
            <input class="form-control" type="text" value="<?php echo $data[3]; ?>" disabled="disabled">
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label">Hire Date</label>
        <?php
            if ($data[4]=="0000-00-00") {
                echo "<div class='col-md-8'>
                        <input type='text' value='-' class='form-control' disabled = ''>
                      </div>";
            }else{
        ?>
        <div class="col-md-8">
            <input type="text" value="<?php echo $data[4] ?>" class="form-control" disabled="disabled">
        </div>
        <?php } ?>
    </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label">Transfer/New</label>
        <div class="col-md-8">
            <input type="text" value="<?php echo $data[5] ?>" class="form-control" disabled="disabled">
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label">Status Driver</label>
        <div class="col-md-8">
            <input type="text" value="<?php echo $data[6] ?>" class="form-control" disabled="disabled">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">Domicile</label>
        <div class="col-md-8">
            <input class="form-control" type="text" value="<?php echo $data[7]; ?>" disabled="disabled">
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label">Date Working</label>
        <?php
            if ($data[8]=="0000-00-00") {
                echo "<div class='col-md-8'>
                        <input type='text' value='-' class='form-control' disabled = ''>
                      </div>";
            }else{
        ?>
        <div class="col-md-8">
            <input type="text" value="<?php echo $data[8] ?>" class="form-control" disabled="disabled">
        </div>
        <?php } ?>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label">Company</label>
        <div class="col-md-8">
            <input type="text" value="<?php echo $data[9] ?>" class="form-control" disabled="disabled">
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label">Area</label>
        <div class="col-md-8">
            <input type="text" value="<?php echo $data[10] ?>" class="form-control" disabled="disabled">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">Phone Number 1</label>
        <div class="col-md-8">
            <input class="form-control" type="text" value="<?php echo $data[11]; ?>" disabled="disabled">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">Phone Number 2</label>
        <div class="col-md-8">
            <input class="form-control" type="text" value="<?php echo $data[12]; ?>" disabled="disabled">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">Keterangan</label>
        <div class="col-md-8">
            <textarea class="form-control" rows="2" disabled="disabled"><?php echo $data[13] ?></textarea>
        </div>
    </div>
</form>

<?php

    $host   = "localhost";
    $user   = "root";
    $pw     = "";
    $db     = "db_monitoring";

    $koneksi    = mysqli_connect($host,$user,$pw);
    $select     = mysqli_select_db($koneksi,$db);

    if (isset($_GET['rowid'])) {
        $id_user  = $_GET['rowid'];
        $query              = mysqli_query($koneksi,("SELECT * FROM tb_user WHERE id_user = '$id_user'"));
        $data               = mysqli_fetch_array($query);
    }
?>
<form role="form" class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-3 control-label">Fullname</label>
        <div class="col-md-8">
            <input type="text" class="form-control" name="fullname" value="<?php echo $data['fullname'] ?>" disabled="disabled">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">E-mail</label>
        <div class="col-md-8">
            <input type="text" class="form-control" name="email" value="<?php echo $data['email'] ?>" disabled="disabled">
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label">Level</label>
        <div class="col-md-8">
            <input type="text" class="form-control" name="email" value="<?php echo $data['level'] ?>" disabled="disabled">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">Username</label>
        <div class="col-md-8">
            <input type="text" class="form-control" name="username" value="<?php echo $data['username'] ?>" disabled="disabled">
        </div>
    </div>
</form>

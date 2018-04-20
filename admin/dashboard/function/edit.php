<?php
    session_start();
    include("../../config/koneksi.php");

    $aksi       = $_GET['aksi'];

    if ($aksi == "edit_user") {
        $id_user    = $_POST['id_user'];
        $fullname   = $_POST['fullname'];
        $email      = $_POST['email'];
        $level      = $_POST['level'];
        $username   = $_POST['username'];

        mysqli_query($koneksi,("UPDATE tb_user SET email ='$email', level = '$level', fullname = '$fullname', username = '$username' WHERE id_user = '$id_user'")) or die(mysql_errno("gagal"));
        header("location:../index.php?page=user");
    }
    else if ($aksi == "edit_driver") {
        $id_driver  = $_POST['id_employe_driver'];
        $code       = $_POST['code_driver'];
        $nik        = $_POST['nik_employe'];
        $username   = $_POST['username_employe'];
        $hire_date  = $_POST['hire_date'];
        $type       = $_POST['type'];
        $status     = $_POST['status_driver'];
        $domicile   = $_POST['domicile'];
        $date_work  = $_POST['date_working'];
        $company    = $_POST['company'];
        $area       = $_POST['area'];
        $phone1     = $_POST['phone_number1'];
        $phone2     = $_POST['phone_number2'];
        $keterangan = $_POST['keterangan'];

        mysqli_query($koneksi,("UPDATE tb_driver SET code_driver = '$code', nik_employe = '$nik', username_employe = '$username', hire_date = '$hire_date',
                                       type = '$type', driver_status = '$status', domicile='$domicile', date_working = '$date_work', company = '$company', area = '$area',
                                       phone_number1 = '$phone1', phone_number2 = '$phone2', keterangan = '$keterangan'
                                       WHERE id_employe_driver = '$id_driver'")) or die(mysql_errno("gagal"));
        mysqli_query($koneksi,("INSERT INTO tb_driver_resume VALUES(NULL, '$id_driver','$type','$status',CURDATE(),'$company')")) or die(mysql_errno("gagal"));
        header("location:../index.php?page=driver");
    }

    else if ($aksi == "edit_pass") {
        $id_user        = $_POST['id_user'];
        $pass_old       = $_POST['pass_old'];
        $pass_old_2     = md5($pass_old);
        $pass_new       = $_POST['pass_new'];
        $pass_conf      = $_POST['pass_confirm'];
        $pass_conf_2    = md5($pass_conf);

        $query      = mysqli_query($koneksi,("SELECT * FROM tb_user WHERE id_user = '$id_user'"));
        $row        = mysqli_fetch_array($query);

        if ($pass_old_2 == $row['password']) {
            if ($pass_conf == $pass_new) {
                mysqli_query($koneksi,("UPDATE tb_user SET password = '$pass_conf_2' WHERE id_user = '$id_user'")) or die(mysql_errno());
                header("location:../index.php?page=user");
            }else {
                echo "gagal update";
            }
        }else{
            echo "gagal update";
        }
    }

    else if ($aksi == "edit_driver_standby") {
        $id_standby = $_POST['id_standby'];
        $id_employe = $_POST['id_employe_driver'];
        $date1      = $_POST['date1'];
        $date2      = $_POST['date2'];
        $remark     = $_POST['remark'];
        $dispatch   = $_POST['next_dispatch'];

        mysqli_query($koneksi,("UPDATE tb_driver_standby SET id_employe_driver = '$id_employe', date = '$date1', date2 = '$date2', remark = '$remark', next_dispatch = '$dispatch' WHERE id_standby = '$id_standby'")) or die(mysql_errno("gagal"));
        header("location:../index.php?page=driver_standby");
    }

    else if ($aksi == "edit_driver_temporary") {
        $id_temporary       = $_POST['id_temporary'];
        /*$id_employe       = $_POST['id_employe_driver'];*/
        $username_driver    = $_POST['username_driver'];
        $date               = $_POST['date'];
        $remark             = $_POST['remark'];
        $dispatch           = $_POST['next_dispatch'];

        mysqli_query($koneksi,("UPDATE tb_driver_temporary SET username_driver = '$username_driver', date = '$date', remark = '$remark', next_dispatch = '$dispatch' WHERE id_temporary = '$id_temporary'")) or die(mysql_errno("gagal"));
        header("location:../index.php?page=driver_temporary");
    }

    else if ($aksi == "edit_contact") {
        $id_contact = $_POST['id_contact'];
        $telp       = $_POST['telp'];
        $ccms       = $_POST['ccms'];
        $driver_co  = $_POST['driver_co'];
        $dispatcher = $_POST['dispatcher'];

        mysqli_query($koneksi,("UPDATE tb_contact SET telp = '$telp', ccms = '$ccms', driver_co = '$driver_co', dispatcher='$dispatcher' WHERE id_contact = '$id_contact'")) or die(mysql_errno("gagal"));
        header("location:../index.php?page=contact");
    }
?>

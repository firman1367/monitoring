<?php
    session_start();
    include ("../../config/koneksi.php");

    $aksi = $_GET['aksi'];

    if ($aksi == "tambah_user") {
        $fullname   = $_POST['fullname'];
        $email      = $_POST['email'];
        $level      = $_POST['level'];
        $username   = $_POST['username'];
        $password   = $_POST['password'];
        $password2  = md5($password);
        $query      = mysqli_query($koneksi,("SELECT username FROM tb_user WHERE username = '$username'"));
        $cek        = mysqli_num_rows($query);

        if ($cek > 0 ) {
            echo "<script language='javascript'>alert('data telah tersedia')</script>";
            echo "<script language='javascript'>window.location = '../index.php?page=user'</script>";
        }else {
            mysqli_query($koneksi,("INSERT INTO tb_user VALUES(NULL,'$email','$level','$fullname','$username','$password2')")) or die(mysql_errno("gagal"));
            header("location:../index.php?page=user");
        }
    }else if ($aksi == "tambah_driver") {
        $code       = $_POST['code_driver'];
        $nik        = $_POST['nik_employe'];
        $username   = $_POST['username'];
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

        $query      = mysqli_query($koneksi,("SELECT code_driver, username_employe FROM tb_driver WHERE username_employe = '$username'"));
        $cek        = mysqli_num_rows($query);

        if ($cek > 0) {
            echo "<script language='javascript'>alert('data telah tersedia')</script>";
            echo "<script language='javascript'>window.location = '../index.php?page=driver'</script>";
        }else {
            mysqli_query($koneksi,("INSERT INTO tb_driver VALUES(NULL, '$code', '$nik', '$username', '$hire_date', '$type', '$status', '$domicile', '$date_work' , '$company', '$area', '$phone1', '$phone2', '$keterangan')")) or die(mysql_errno("gagal"));
            header("location:../index.php?page=driver");
        }
    }else if ($aksi == "tambah_driver_standby") {
        $id_employe_driver  = $_POST['id_employe_driver'];
        $date1              = $_POST['date1'];
        $date2              = $_POST['date2'];
        $remark             = $_POST['remark'];
        $dispatch           = $_POST['next_dispatch'];

        mysqli_query($koneksi,("INSERT INTO tb_driver_standby VALUES(NULL,'$id_employe_driver','$date1','$date2','$remark','$dispatch',CURDATE())")) or die(mysql_errno("gagal"));
        header("location:../index.php?page=driver_standby");
    }else if ($aksi == "tambah_driver_temporary") {
        $username_employe   = $_POST['username_employe'];
        $date               = $_POST['date'];
        $remark             = $_POST['remark'];
        $dispatch           = $_POST['next_dispatch'];

        mysqli_query($koneksi,("INSERT INTO tb_driver_temporary VALUES(NULL,'$username_employe','$date','$remark','$dispatch',CURDATE())")) or die(mysql_errno("gagal"));
        header("location:../index.php?page=driver_temporary");
    }
?>

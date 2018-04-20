<?php
    session_start();
    include ("../../config/koneksi.php");

    //ambil variable
    $aksi               = $_GET['aksi'];
    $id_user            = $_GET['id_user'];
    $id_employe_driver  = $_GET['id_employe_driver'];
    $id_standby         = $_GET['id_standby'];
    $id_temporary       = $_GET['id_temporary'];

    if ($aksi == "del_user") {
        mysqli_query($koneksi,("DELETE FROM tb_user WHERE id_user = '$id_user'")) or die(mysql_errno("gagal"));
        header("location:../index.php?page=user");
    }else if ($aksi == "del_driver") {
        mysqli_query($koneksi,("DELETE FROM tb_driver WHERE id_employe_driver = '$id_employe_driver'")) or die(mysql_errno("gagal"));
        header("location:../index.php?page=driver");
    }else if ($aksi == "del_standby") {
        mysqli_query($koneksi,("DELETE FROM tb_driver_standby WHERE id_standby = '$id_standby'")) or die(mysql_errno("gagal"));
        header("location:../index.php?page=driver_standby");
    }else if ($aksi == "del_temporary") {
        mysqli_query($koneksi,("DELETE FROM tb_driver_temporary WHERE id_temporary = '$id_temporary'")) or die(mysql_errno("gagal"));
        header("location:../index.php?page=driver_temporary");
    }
?>

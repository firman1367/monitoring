<?php

    $host   = "localhost";
    $user   = "root";
    $pw     = "";
    $db     = "db_monitoring";

    $koneksi    = mysqli_connect($host,$user,$pw);
    $select     = mysqli_select_db($koneksi,$db);

    /*if ($select) {
        echo "Koneksi berhasil";
    }else {
        echo "koneksi gagal";
    }*/

?>

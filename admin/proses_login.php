<?php
    session_start();
    include ('config/koneksi.php');

    $username   = $_POST['username'];
    $password1  = $_POST['password'];
    $password2  = md5($password1);

    $query  = mysqli_query($koneksi,("SELECT * FROM tb_user WHERE username = '$username' AND password = '$password2'"));
    $cek    = mysqli_num_rows($query);
    $data   = mysqli_fetch_array($query);

    //isi
    $id_user    = $data['id_user'];
    $username   = $data['username'];
    $level      = $data['level'];

    if($cek){
        $_SESSION['username'] 	= $username;
		$_SESSION['password'] 	= $password;
		$_SESSION['id_user'] 	= $id;
        $_SESSION['level'] 	    = $level;
        $query2 = mysqli_query($koneksi,("INSERT INTO tb_log VALUES (NULL,'$id_user',NOW())"));
		header('location:dashboard/home');
	}else{
		echo "<script language='javascript'>alert('Silahkan isi data dengan benar')</script>";
  		echo "<script language='javascript'>window.location = 'index.php'</script>";
	}
?>

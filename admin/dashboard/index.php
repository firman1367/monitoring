<?php
    session_start();

    if (isset($_SESSION['level'])) {
        if ($_SESSION['level'] == 'super admin' OR 'admin') {
            include ('../config/koneksi.php');
            $level      = $_SESSION['level'];
            $username   = $_SESSION['username'];
            $name = strtoupper($username);
            $level = strtoupper($level);
            require_once('layout/header.php');
?>

    <div class="content-wrapper">
        <div class="container">
            <section class="content">
                <div class="col-md-12">
                    <!-- paging -->
                    <?php
                        if ($_GET["page"]=="home") {
                            include "home.php";
                        }else if ($_GET["page"]=="user") {
                            include "form/data_user.php";
                        }else if ($_GET["page"]=="edit_user") {
                            include "form/edit_user.php";
                        }else if ($_GET["page"]=="login_log") {
                            include "form/login_log.php";
                        }else if ($_GET["page"]=="driver") {
                            include "form/data_driver.php";
                        }else if ($_GET["page"]=="detail_driver") {
                            include "form/detail_driver.php";
                        }else if ($_GET["page"]=="edit_driver") {
                            include "form/edit_driver.php";
                        }else if ($_GET["page"]=="driver_standby") {
                            include "form/data_driver_standby.php";
                        }else if ($_GET["page"]=="edit_driver_standby") {
                            include "form/edit_driver_standby.php";
                        }else if ($_GET["page"]=="driver_temporary"){
                            include "form/data_driver_temporary.php";
                        }else if ($_GET["page"]=="edit_driver_temporary") {
                            include "form/edit_driver_temporary.php";
                        }else if ($_GET["page"]=="contact") {
                            include "form/contact.php";
                        }else if ($_GET["page"]=="edit_contact") {
                            include "form/edit_contact.php";
                        }else if ($_GET["page"]=="resume_driver") {
                            include "form/driver_resume.php";
                        }
                    ?>
                </div>
            </section>
        </div>
    </div>

    <!-- footer -->
    <?php require_once('layout/footer.php'); ?>
    <!-- end footer -->

<?php
        }
    }
    else {
        session_destroy();
        echo "<script language='javascript'>alert('Session anda telah berakhir')</script>";
  		echo "<script language='javascript'>window.location = '../index.php'</script>";
    }
?>

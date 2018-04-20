<?php
    if (isset($_GET['id_employe_driver'])) {
        $id_employe_driver = $_GET['id_employe_driver'];
        $query             = mysqli_query($koneksi,("SELECT a.username_employe, b.type, b.date_change, b.company
                                                     FROM tb_driver_resume AS b
                                                     INNER JOIN tb_driver AS a USING(id_employe_driver)
                                                     WHERE id_employe_driver = '$id_employe_driver'"));
        $data              = mysqli_fetch_array($query);
    }
?>
<div class="box box-default box-solid no-border">
    <div class="box-header with-border" style="color:white">
        <i class="fa fa-table"></i>
        <h3 class="box-title">Resume Driver - <?php echo $data[0] ?></h3>
        <div class="box-tools">
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="collapse" title="hide"><i class="fa fa-minus"></i></button>
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="remove" title="close"><i class="fa fa-times"></i></button>
        </div>
    </div>
    <div class="box-body">
        <table id="example4" class="table table-hover table-striped">
            <thead>
                <tr style="background-color: rgb(55, 54, 54);color:white;">
                    <th class="text-center">No.</th>
                    <th class="text-center">Username Driver</th>
                    <th class="text-center">Transfer/New</th>
                    <th class="text-center">Status Driver</th>
                    <th class="text-center">Date</th>
                    <th class="text-center">Company</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $no     = 1;
                    $query1 = mysqli_query($koneksi,("SELECT a.username_employe, b.type, b.driver_status, b.date_change, b.company
                                                      FROM tb_driver_resume AS b
                                                      INNER JOIN tb_driver AS a USING(id_employe_driver)
                                                      WHERE a.id_employe_driver = '$id_employe_driver'"));
                    foreach($query1 as $data1){
                ?>
                <tr>
                    <td><?php echo $no++ ?></td>
                    <td><?php echo $data1['username_employe'] ?></td>
                    <td><?php echo $data1['type'] ?></td>
                    <td><?php echo $data1['driver_status'] ?></td>
                    <td><?php echo $data1['date_change'] ?></td>
                    <td><?php echo $data1['company'] ?></td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</div>

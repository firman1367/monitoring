<div class="box box-default box-solid no-border">
    <div class="box-header with-border" style="color:white;">
        <i class="fa fa-phone-square"></i>
        <h3 class="box-title">Contact</h3>
        <div class="box-tools">
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="collapse" title="hide"><i class="fa fa-minus"></i></button>
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="collapse" title="close"><i class="fa fa-times"></i></button>
        </div>
    </div>
    <div class="box-body">
        <div class="table-responsive">
            <table class="table table-hover table-striped" style="margin-bottom:0px;">
                <thead>
                    <tr style="background-color: rgb(55, 54, 54);color:white;">
                        <th class="text-center" width="2%">No.</th>
                        <th class="text-center">Telp</th>
                        <th class="text-center">CCMS</th>
                        <th class="text-center" width="20%">Driver. Co.</th>
                        <th class="text-center" width="20%">Dispatcher</th>
                        <th class="text-center" width="3%">Option</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        $no     = 1;
                        $query  = mysqli_query($koneksi,("SELECT * FROM tb_contact"));
                        foreach($query as $data){
                    ?>
                    <tr>
                        <td class="text-center"><?php echo $no++ ?></td>
                        <td class="text-center"><?php echo $data['telp'] ?></td>
                        <td><?php echo $data['ccms'] ?></td>
                        <td><?php echo $data['driver_co'] ?></td>
                        <td><?php echo $data['dispatcher'] ?></td>
                        <td class="text-center">
                            <a href="?page=edit_contact&id_contact=<?php echo $data['id_contact']; ?>" class="edit" data-toggle="tooltip" data-placement="bottom" title="edit data" style="color:rgb(2, 124, 18);font-size:17px;float:left;"><i class="fa fa-pencil-square-o"></i></a>
                        </td>
                    </tr>
                    <?php
                        }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

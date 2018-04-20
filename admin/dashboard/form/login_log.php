<div class="box box-default box-solid no-border">
    <div class="box-header with-border" style="color:white;">
        <i class="fa fa-table"></i>
        <h3 class="box-title">Login Log</h3>
        <div class="box-tools">
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="collapse" title="hide"><i class="fa fa-minus"></i></button>
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="remove" title="close"><i class="fa fa-times"></i></button>
        </div>
    </div>
    <div class="box-body">
        <table id="example4" class="table table-hover table-striped">
            <thead>
                <tr style="background-color: rgb(55, 54, 54);color:white;">
                    <th width="1%" class="text-center">No.</th>
                    <th width="20%"><center>Fullname</center></th>
                    <th width="20%"><center>Login Log</center></th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $no = 1;
                    $query = mysqli_query($koneksi," SELECT a.fullname, b.login_log
                                          FROM tb_user AS a
                                          JOIN tb_log AS b USING(id_user)
                                          ORDER BY b.login_log DESC");
                    foreach ($query as $data) {
                ?>
                <tr>
                    <td class="text-center"><?php echo $no++; ?></td>
                    <td><?php echo $data['fullname']; ?></td>
                    <td><?php echo $data['login_log']; ?></td>
                </tr>
                <?php
                    }
                ?>
            </tbody>
        </table>

        <a href="javascript:history.back()" class="btn btn-default btn-sm" style="margin-top:10px;"><i class="fa fa-arrow-circle-left"></i> back</a></div>

        </div>
    </div>
</div>

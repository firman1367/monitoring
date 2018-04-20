<div class="box box-default box-solid no-border">
    <div class="box-header with-border" style="color:white;">
        <i class="fa fa-table"></i>
        <h3 class="box-title">Driver temporary</h3>
        <div class="box-tools">
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="collapse" title="hide"><i class="fa fa-minus"></i></button>
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="remove" title="close"><i class="fa fa-times"></i></button>
        </div>
    </div>
    <div class="box-body">
        <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
                <?php
                    if (isset($_SESSION['level'])) {
                        if ($_SESSION['level'] == 'super admin') {
                ?>
                <li class="active"><a href="#tab_1" data-toggle="tab"><i class="fa fa-wpforms"></i> Input Data</a></li>
                <li><a href="#tab_2" data-toggle="tab"><i class="fa fa-user"></i> Data Driver Temporary</a></li>
                <?php
                    }else{
                ?>
                <li class="active"><a href="#tab_1" data-toggle="tab"><i class="fa fa-user"></i> Data Driver Temporary</a></li>
                <?php }} ?>
            </ul>
            <div class="tab-content">
                <?php
                    if (isset($_SESSION['level'])) {
                        if ($_SESSION['level'] == 'super admin') {
                ?>
                <div class="tab-pane active" id="tab_1">
                    <form role="form" action="function/create.php?aksi=tambah_driver_temporary" class="form-horizontal" enctype="multipart/form-data" method="post">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Driver Name</label>
                            <div class="col-md-8">
                                <!--<select class="form-control select2" name="id_employe_driver" style="width: 100%;">
                                    <?php
                                        /*$query = mysqli_query($koneksi,("SELECT * FROM tb_driver"));
                                        foreach($query as $data){
                                    ?>
                                    <option value="<?php echo $data['id_employe_driver'] ?>"><?php echo $data['username_employe']; ?></option>
                                    <?php
                                        }*/
                                    ?>
                                </select>-->
                                <input class="form-control" type="text" name="username_employe" placeholder="input..">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Date</label>
                            <div class="col-md-8">
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" name="date" class="form-control pull-right" id="datepicker" placeholder="input..">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Remark</label>
                            <div class="col-md-8">
                                <input class="form-control" type="text" name="remark" placeholder="input..">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Next Dispatch</label>
                            <div class="col-md-8">
                                <input class="form-control" type="text" name="next_dispatch" placeholder="input..">
                            </div>
                        </div>
                        <div class="modal-footer" style="text-align:left;">
                            <button type="submit" class="btn btn-default btn-flat btn-sm" style="margin-right:5px;"><i class="fa fa-save"></i> Submit</button>
                            <button type="reset" class="btn btn-default btn-flat btn-sm"><i class="fa fa-history"></i> Reset</button>
                        </div>
                    </form>
                </div>
                <div class="tab-pane" id="tab_2">
                    <div class="table-responsive">
                        <table id="example2" class="table table-hover table-striped">
                            <thead>
                                <tr style="background-color: rgb(55, 54, 54);color:white;">
                                    <th class="text-center">No.</th>
                                    <th class="text-center">Driver Name</th>
                                    <th class="text-center">Date</th>
                                    <th class="text-center">Remark</th>
                                    <th class="text-center" width="20%">Next Dispatch</th>
                                    <th class="text-center" width="3%">Option</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $nomer = 1;
                                    /*$query = mysqli_query($koneksi,("SELECT a.date, a.remark, a.next_dispatch, a.id_temporary, b.username_employe
                                                                     FROM tb_driver_temporary AS a
                                                                     JOIN tb_driver AS b USING(id_employe_driver)
                                                                     ORDER BY a.id_temporary ASC"));*/
                                    $query = mysqli_query($koneksi,("SELECT * FROM tb_driver_temporary"));
                                    foreach($query as $data){
                                ?>
                                <tr>
                                    <td class="text-center"><?php echo $nomer++; ?></td>
                                    <td><?php echo $data['username_driver'] ?></td>
                                    <td><?php echo $data['date'] ?></td>
                                    <td><?php echo $data['remark'] ?></td>
                                    <td><?php echo $data['next_dispatch'] ?></td>
                                    <td class="text-center">
                                        <a href="?page=edit_driver_temporary&id_temporary=<?php echo $data['id_temporary'] ?>" class="edit" data-toggle="tooltip" data-placement="bottom" title="edit data" style="color:rgb(2, 124, 18);font-size:17px;float:left;"><i class="fa fa-pencil-square-o"></i></a>
                                        <a href="function/delete.php?aksi=del_temporary&id_temporary=<?php echo $data['id_temporary'] ?>" class="delete" data-toggle="tooltip" data-placement="bottom" title="delete data" style="color:red;font-size:17px;"><i class="fa fa-times"></i></a>
                                    </td>
                                </tr>
                                <?php
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <?php
                    }else{
                ?>
                <div class="tab-pane active" id="tab_1">
                    <div class="table-responsive">
                        <table id="example2" class="table table-hover table-striped">
                            <thead>
                                <tr style="background-color: rgb(55, 54, 54);color:white;">
                                    <th class="text-center">No.</th>
                                    <th class="text-center">Driver Name</th>
                                    <th class="text-center">Date</th>
                                    <th class="text-center">Remark</th>
                                    <th class="text-center" width="20%">Next Dispatch</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $nomer = 1;
                                    $query = mysqli_query($koneksi,("SELECT * FROM tb_driver_temporary"));
                                    foreach($query as $data){
                                ?>
                                <tr>
                                    <td class="text-center"><?php echo $nomer++; ?></td>
                                    <td><?php echo $data['username_driver'] ?></td>
                                    <td><?php echo $data['date'] ?></td>
                                    <td><?php echo $data['remark'] ?></td>
                                    <td><?php echo $data['next_dispatch'] ?></td>
                                </tr>
                                <?php
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <?php }} ?>
            </div>
        </div>
    </div>
</div>

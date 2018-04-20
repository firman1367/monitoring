<?php
    if (isset($_GET['id_user'])) {
        $id_user = $_GET['id_user'];
        $query  = mysqli_query($koneksi,("SELECT * FROM tb_user WHERE id_user='$id_user'"));
        $data   = mysqli_fetch_array($query);
    }
?>
<div class="box box-default box-solid no-border">
    <div class="box-header with-border" style="color:white;">
        <i class="fa fa-table"></i>
        <h3 class="box-title">Edit Data Admin - <?php echo $data[3] ?></h3>
        <div class="box-tools">
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="collapse" title="hide"><i class="fa fa-minus"></i></button>
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="remove" title="close"><i class="fa fa-times"></i></button>
        </div>
    </div>
    <div class="box-body">
        <!-- Custom Tabs -->
        <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#tab_1" data-toggle="tab"><i class="fa fa-wpforms"></i> Form Edit</a></li>
                <li><a href="#tab_2" data-toggle="tab"><i class="fa fa-lock"></i> Change Password</a></li>
                <!--<li><a href="#tab_3" data-toggle="tab"><i class="fa fa-user"></i> Data Admin</a></li>-->
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="tab_1">
                    <form class="form-horizontal" action="function/edit.php?aksi=edit_user" method="post" enctype="multipart/form-data">
                        <input class="form-control" type="hidden" name="id_user" value="<?php echo $data[0]; ?>">
                        <div class="form-group">
                            <label class="col-md-3 control-label">Fullname</label>
                            <div class="col-md-6">
                                <input class="form-control" type="text" name="fullname" value="<?php echo $data[3]; ?>">
                            </div>
                            <div class="col-md-3 has-warning">
                                <label class="control-label" for="inputSuccess"><i class="fa fa-warning"></i> form edit</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Email</label>
                            <div class="col-md-6">
                                <input class="form-control" type="text" name="email" value="<?php echo $data[1]; ?>" required>
                            </div>
                            <div class="col-md-3 has-warning">
                                <label class="control-label" for="inputSuccess"><i class="fa fa-warning"></i> form edit</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Level</label>
                            <div class="col-md-6">
                                <select class="form-control" name="level">
                                    <?php error_reporting(0);
        								if ($data['level']=="admin") {
        									$a = "selected=selected";
        								}
        								else if ($data['level']=="super admin") {
        									$b = "selected=selected";
        								}
                                    ?>
                                    <option value="admin" <?php echo $a ?>>admin</option>
                                    <option value="super admin" <?php echo $b ?>>super admin</option>
                                </select>
                            </div>
                            <div class="col-md-3 has-warning">
                                <label class="control-label" for="inputSuccess"><i class="fa fa-warning"></i> form edit</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">username</label>
                            <div class="col-md-6">
                                <input class="form-control" type="text" name="username" value="<?php echo $data[4]; ?>">
                            </div>
                            <div class="col-md-3 has-warning">
                                <label class="control-label" for="inputSuccess"><i class="fa fa-warning"></i> form edit</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-3"></div>
                            <div class="col-md-6">
                                <button type="submit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-check-circle"></i> save</button>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- /.tab-pane -->
                <div class="tab-pane" id="tab_2">
                    <form class="form-horizontal" action="function/edit.php?aksi=edit_pass" method="post" enctype="multipart/form-data">
                        <input class="form-control" type="hidden" name="id_user" value="<?php echo $data[0]; ?>">
                        <div class="form-group">
                            <label class="col-md-3 control-label">Old-Password</label>
                            <div class="col-md-6">
                                <input class="form-control" type="password" name="pass_old" placeholder="input.." required>
                            </div>
                            <div class="col-md-3 has-warning">
                                <label class="control-label" for="inputSuccess"><i class="fa fa-warning"></i> form edit</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">New-Password</label>
                            <div class="col-md-6">
                                <input class="form-control" type="password" name="pass_new" placeholder="input.." required>
                            </div>
                            <div class="col-md-3 has-warning">
                                <label class="control-label" for="inputSuccess"><i class="fa fa-warning"></i> form edit</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Confirm-Password</label>
                            <div class="col-md-6">
                                <input class="form-control" type="password" name="pass_confirm" placeholder="input.." required>
                            </div>
                            <div class="col-md-3 has-warning">
                                <label class="control-label" for="inputSuccess"><i class="fa fa-warning"></i> form edit</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-3"></div>
                            <div class="col-md-6">
                                <button type="submit" class="btn btn-default btn-flat btn-sm"><i class="fa fa-check-circle"></i> save</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="tab-pane" id="tab_3">
                    <div class="table-responsive">
                        <table class="table table-hover table-striped">
                            <thead>
                                <tr style="background-color: rgb(55, 54, 54);color:white;">
                                    <th width="8%"><center>No.</center></th>
                                    <th width="20%"><center>Email</center></th>
                                    <th width="20%"><center>Fullname</center></th>
                                    <th width="20%"><center>Username</center></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $no = 1;
                                    $query = mysqli_query($koneksi,"SELECT * FROM tb_user");
                                    foreach ($query as $data) {
                                ?>
                                <tr>
                                    <td class="text-center"><?php echo $no++; ?></td>
                                    <td><?php echo $data['email']; ?></td>
                                    <td><?php echo $data['fullname']; ?></td>
                                    <td><?php echo $data['username']; ?></td>
                                </tr>
                                <?php
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- /.tab-content -->
        </div>
        <!-- nav-tabs-custom -->
        <a href="javascript:history.back()" class="btn btn-default btn-sm" style="margin-top:10px;"><i class="fa fa-arrow-circle-left"></i> back</a>
    </div>
</div>

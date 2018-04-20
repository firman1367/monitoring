<div class="box box-default box-solid no-border">
    <div class="box-header with-border" style="color:white;">
        <i class="fa fa-table"></i>
        <h3 class="box-title">Data Admin</h3>
        <div class="box-tools">
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="collapse" title="hide"><i class="fa fa-minus"></i></button>
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="remove" title="close"><i class="fa fa-times"></i></button>
        </div>
    </div>
    <div class="box-body">
        <?php
            if (isset($_SESSION['level'])) {
                if ($_SESSION['level'] == 'super admin') {
        ?>
            <a class="btn btn-default btn-flat" data-toggle="modal" data-target="#create_user"><span class="fa fa-pencil"></span> Input Data</a>
            <a class="btn btn-default btn-flat" href="index.php?page=login_log"><span class="fa fa-file"></span> Login Log</a><hr>
        <?php }} ?>
        <div class="table-responsive">
            <table class="table table-hover table-striped">
                <thead>
                    <tr style="background-color: rgb(55, 54, 54);color:white;">
                        <th width="8%"><center>No.</center></th>
                        <th width="20%"><center>Email</center></th>
                        <th width="20%"><center>Fullname</center></th>
                        <?php
                            if (isset($_SESSION['level'])) {
                                if ($_SESSION['level'] == 'super admin') {
                        ?>
                        <th colspan="2" width="15%"><center>Option</center></th>
                        <?php }} ?>
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
                        <td><a href="#modal_user" data-toggle='modal' data-id="<?php echo $data['id_user']; ?>" style="color:black;font-weight:bold;"><span data-toggle="tooltip" data-placement="bottom" title="detail user"><?php echo $data['email']; ?></span></a></td>
                        <td><?php echo $data['fullname']; ?></td>
                        <?php
                            if (isset($_SESSION['level'])) {
                                if ($_SESSION['level'] == 'super admin') {
                        ?>
                        <td>
                            <center>
                                <a href="?page=edit_user&id_user=<?php echo $data['id_user']; ?>" class="edit" data-toggle="tooltip" data-placement="bottom" title="edit data" style="color:rgb(2, 124, 18);font-size:17px;"><i class="fa fa-pencil-square-o"></i></a>
							</center>
                        </td>
                        <td>
                            <center>
                                <a href="function/delete.php?aksi=del_user&id_user=<?php echo $data['id_user']; ?>" class="delete" data-toggle="tooltip" data-placement="bottom" title="delete data" style="color:red;font-size:17px;"><i class="fa fa-times"></i></a>
                            </center>
                        </td>
                        <?php }} ?>
                    </tr>
                    <?php
                        }
                    ?>
                </tbody>
            </table>
        </div>

        <div class="modal fade" id="modal_user" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="background-color:rgb(55, 54, 54);color:white;">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Detail User</h4>
                    </div>
                    <div class="modal-body">
                        <div class="fetched-data"></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- modal driver -->
        <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
        <script type="text/javascript">
        $(document).ready(function(){
            $('#modal_user').on('show.bs.modal', function (e) {
                var rowid = $(e.relatedTarget).data('id');
                //menggunakan fungsi ajax untuk pengambilan data
                $.ajax({
                    type : 'get',
                    url : 'form/detail_user.php',
                    data :  'rowid='+ rowid,
                    success : function(data){
                        $('.fetched-data').html(data);//menampilkan data ke dalam modal
                    }
                });
            });
        });
        </script>

        <!-- modal -->
        <div class="modal fade" id="create_user" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header" style="background-color:rgb(55, 54, 54);color:white;">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
                        <h4 class="modal-title" id="myModalLabel"><i class="fa fa-user-plus"></i> Add User</h3>
                    </div>
                    <div class="modal-body">
                        <form role="form" action="function/create.php?aksi=tambah_user" class="form-horizontal" enctype="multipart/form-data" method="post">
                            <div class="form-group">
								<label class="col-sm-3 control-label">Fullname</label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="fullname" placeholder="input.." required>
								</div>
							</div>
                            <div class="form-group">
								<label class="col-sm-3 control-label">E-mail</label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="email" placeholder="input.." required>
								</div>
							</div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">Level</label>
                                <div class="col-md-8">
                                    <select class="form-control" name="level">
                                        <option>admin</option>
                                        <option>super admin</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
								<label class="col-sm-3 control-label">Username</label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="username" placeholder="input.." required>
								</div>
							</div>
                            <div class="form-group">
								<label class="col-sm-3 control-label">Password</label>
								<div class="col-md-8">
									<input type="password" class="form-control" name="password" placeholder="input.." required>
								</div>
							</div>
                            <div class="modal-footer" style="text-align:left">
								<button type="submit" class="btn btn-default btn-flat btn-sm" style="margin-right:5px;"><i class="fa fa-save"></i> Submit</button>
								<button type="reset" class="btn btn-default btn-flat btn-sm"><i class="fa fa-history"></i> Reset</button>
							</div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

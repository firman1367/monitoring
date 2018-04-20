<?php
	if (isset($_POST['cari-driver'])) {
		include('driver_kategori.php');
	}else{
?>
<div class="box box-default box-solid no-border">
    <div class="box-header with-border" style="color:white;">
        <i class="fa fa-table"></i>
        <h3 class="box-title">Data Driver</h3>
        <div class="box-tools">
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="collapse" title="hide"><i class="fa fa-minus"></i></button>
            <button class="btn btn-box-tool" data-toggle="tooltip" data-widget="collapse" title="close"><i class="fa fa-times"></i></button>
        </div>
    </div>
    <div class="box-body">
        <?php
            if (isset($_SESSION['level'])) {
                if ($_SESSION['level'] == 'super admin') {
        ?>
        <a class="btn btn-default btn-flat" data-toggle="modal" data-target="#create_driver"><span class="fa fa-pencil"></span> Input Data Driver</a><hr>
        <form action="" method="post" class="form-horizontal" enctype="multipart/form-data">
            <div class="form-group">
                <label class="col-md-6 control-label" style="color:red;">*Cari Driver berdasarkan kategori</label>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Kategori</label>
                <div class="col-md-4">
                    <select class="form-control" name="status_driver">
						<option>Corporate</option>
						<option>User</option>
						<option>Family</option>
						<option>Standby</option>
						<option>Operasional</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-4">
                    <button type="submit" name="cari-driver" class="btn btn-default btn-flat btn-sm" style="margin-right:5px;"><i class="fa fa-search"></i> Search</button>
                </div>
            </div>
        </form><hr>
        <?php
            }else{
        ?>
        <form action="" method="post" class="form-horizontal" enctype="multipart/form-data">
            <div class="form-group">
                <label class="col-md-6 control-label" style="color:red;">*Cari Driver berdasarkan kategori</label>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Kategori</label>
                <div class="col-md-4">
                    <select class="form-control" name="status_driver">
						<option>Corporate</option>
						<option>User</option>
						<option>Family</option>
						<option>Standby</option>
						<option>Operasional</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-4">
                    <button type="submit" name="cari-driver" class="btn btn-default btn-flat btn-sm" style="margin-right:5px;"><i class="fa fa-search"></i> Cari</button>
                </div>
            </div>
        </form><hr>
        <?php }} ?>
        <div>
            <table id="example4" class="table table-hover table-striped">
                <thead style="font-size:12px;">
                    <tr style="background-color: rgb(55, 54, 54);color:white;">
                        <th class="text-center" width="5%">No.</th>
                        <th class="text-center" width="10%">Code Driver</th>
                        <th class="text-center">NIK</th>
                        <th class="text-center">Driver Name</th>
						<th class="text-center" width="10%">Hire</th>
						<th class="text-center" width="10%">Working</th>
						<th class="text-center">Transfer/New</th>
						<th class="text-center">Company</th>
                        <?php
                            if (isset($_SESSION['level'])) {
                                if ($_SESSION['level'] == 'super admin') {
                        ?>
                        <th class="text-center" width="15%">Option</th>
                        <?php
                            }}
                        ?>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        $no     = 1;
                        $query  = mysqli_query($koneksi,("SELECT * FROM tb_driver"));
                        foreach($query as $data){
                    ?>
                    <tr>
                        <td class="text-center" style="font-size:12px;"><?php echo $no++ ?></td>
                        <td class="text-center">
							<?php
								if ($data['code_driver'] == "") {
							?>
							<a href="#modal_driver" data-toggle='modal' data-id="<?php echo $data['id_employe_driver']; ?>" style="color:black;font-weight:bold;font-size:20px;"><span data-toggle="tooltip" data-placement="bottom" title="detail driver"><?php echo $data['code_driver'] ?>-</span></a>
							<?php
								}else{
							?>
							<a href="#modal_driver" data-toggle='modal' data-id="<?php echo $data['id_employe_driver']; ?>" style="color:black;font-weight:bold;font-size:12px;"><span data-toggle="tooltip" data-placement="bottom" title="detail driver"><?php echo $data['code_driver'] ?></span></a>
							<?php } ?>
						</td>
                        <td class="text-center" style="font-size:11px;"><?php echo $data['nik_employe'] ?></td>
                        <td style="font-size:11px;"><?php echo $data['username_employe'] ?></td>
						<td class="text-center" style="font-size:12px;">
							<?php
								if ($data['hire_date'] == "0000-00-00") {
									echo "-";
								}else{
									echo $data['hire_date'];
								}
							?>
						</td>
						<td class="text-center" style="font-size:12px;">
							<?php
								if ($data['date_working'] == "0000-00-00") {
									echo "-";
								}else{
									echo $data['date_working'];
								}
							?>
						</td>
						<td style="font-size:11px;"><?php echo $data['type'] ?></td>
						<td style="font-size:11px;"><?php echo $data['company'] ?></td>
                        <?php
                            if (isset($_SESSION['level'])) {
                                if ($_SESSION['level'] == 'super admin') {
                        ?>
                        <td class="text-center">
                            <a href="?page=edit_driver&id_employe_driver=<?php echo $data['id_employe_driver']; ?>" class="edit"><span class="btn btn-default btn-xs">edit</span></a>
							<a href="?page=resume_driver&id_employe_driver=<?php echo $data['id_employe_driver']; ?>" class="btn btn-default btn-xs" target="_blank">resume</a>
                            <a href="function/delete.php?aksi=del_driver&id_employe_driver=<?php echo $data['id_employe_driver']; ?>" class="delete"><span class="btn btn-default btn-xs">delete</span></a>
                        </td>
                        <?php
                            }}
                        ?>
                    </tr>
                    <?php
                        }
                    ?>
                </tbody>
            </table>
        </div>

        <div class="modal fade" id="modal_driver" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="background-color:rgb(55, 54, 54);color:white;">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Detail Driver</h4>
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
            $('#modal_driver').on('show.bs.modal', function (e) {
                var rowid = $(e.relatedTarget).data('id');
                //menggunakan fungsi ajax untuk pengambilan data
                $.ajax({
                    type : 'get',
                    url : 'form/detail_driver.php',
                    data :  'rowid='+ rowid,
                    success : function(data){
                        $('.fetched-data').html(data);//menampilkan data ke dalam modal
                    }
                });
            });
        });
        </script>

        <!-- modal -->
        <div class="modal fade" id="create_driver" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header" style="background-color:rgb(55, 54, 54);color:white;">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
                        <h4 class="modal-title" id="myModalLabel"><i class="fa fa-user-plus"></i> Add Driver</h4>
                    </div>
                    <div class="modal-body">
                        <form role="form" action="function/create.php?aksi=tambah_driver" class="form-horizontal" enctype="multipart/form-data" method="post">
                            <div class="form-group">
                                <label class="col-md-3 control-label">Code Driver</label>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" name="code_driver" placeholder="input..">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">NIK Driver</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" name="nik_employe" placeholder="input..">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Driver Name</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" name="username" placeholder="input.." required>
                                </div>
                            </div>
							<div class="form-group">
								<label class="col-md-3 control-label">Hire Date</label>
								<div class="col-md-8">
									<div class="input-group date">
	                                    <div class="input-group-addon">
	                                        <i class="fa fa-calendar"></i>
	                                    </div>
	                                    <input type="text" name="hire_date" class="form-control pull-right" id="datepicker">
	                                </div>
								</div>
							</div>
							<div class="form-group">
                                <label class="col-md-3 control-label">Transfer/New</label>
                                <div class="col-md-8">
                                    <select class="form-control" name="type">
										<option value="-">-- Select --</option>
										<option>Transfer</option>
										<option>New</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">Status Driver</label>
                                <div class="col-md-8">
                                    <select class="form-control" name="status_driver">
										<option value="-">-- Select --</option>
										<option>Corporate</option>
										<option>User</option>
										<option>Family</option>
										<option>Standby</option>
										<option>Operasional</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Domicile</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" name="domicile" placeholder="input..">
                                </div>
                            </div>
							<div class="form-group">
								<label class="col-md-3 control-label">Date Working</label>
								<div class="col-md-8">
									<div class="input-group date">
	                                    <div class="input-group-addon">
	                                        <i class="fa fa-calendar"></i>
	                                    </div>
	                                    <input type="text" name="date_working" class="form-control pull-right" id="datepicker2">
	                                </div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Company</label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="company" placeholder="input..">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Area</label>
								<div class="col-md-8">
									<select class="form-control" name="area">
										<option value="0">-- Select --</option>
										<option>1</option>
										<option>2</option>
										<option>3</option>
									</select>
								</div>
							</div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Phone Number 1</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" name="phone_number1" placeholder="input..">
                                </div>
                            </div>
							<div class="form-group">
                                <label class="col-sm-3 control-label">Phone Number 2</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" name="phone_number2" placeholder="input..">
                                </div>
                            </div>
							<div class="form-group">
                                <label class="col-sm-3 control-label">Keterangan</label>
                                <div class="col-md-8">
                                    <textarea class="form-control" name="keterangan" rows="2"></textarea>
                                </div>
                            </div>
                            <div class="modal-footer" style="text-align:left;">
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
<?php } ?>

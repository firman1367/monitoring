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
        <div class="form-horizontal">
            <form action="" method="post" class="form-horizontal" enctype="multipart/form-data">
                <div class="form-group">
                    <label class="col-md-6 control-label" style="color:red;">*Cari Driver berdasarkan kategori</label>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label">Kategori</label>
                    <div class="col-md-10">
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
            <div class="form-group" style="font-size:20px;">
                <label class="col-md-2 control-label">Kategori</label>
                <?php
                    $kategori   = $_POST['status_driver'];
                    $query      = mysqli_query($koneksi,("SELECT * FROM tb_driver WHERE driver_status = '$kategori'"));
                    $data       = mysqli_fetch_array($query);
                ?>
                <label class="col-md-6 control-label">: Driver <?php echo $data['driver_status']; ?></label>
            </div><hr>
            <div>
                <table id="example4" class="table table-hover table-striped">
                    <thead style="font-size:12px;">
                        <tr style="background-color: rgb(55, 54, 54);color:white;">
                            <th class="text-center" width="5%">No.</th>
                            <th class="text-center">Code Driver</th>
                            <th class="text-center">NIK</th>
                            <th class="text-center">Driver Name</th>
    						<th class="text-center" width="10%">Hire Date</th>
    						<th class="text-center">Date Working</th>
    						<th class="text-center">Transfer/New</th>
    						<th class="text-center">Company</th>
                            <th class="text-center">Phone Number</th>
                            <?php
                                if (isset($_SESSION['level'])) {
                                    if ($_SESSION['level'] == 'super admin') {
                            ?>
                            <th class="text-center" width="1%">Option</th>
                            <?php
                                }}
                            ?>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $no     = 1;
                            $query  = mysqli_query($koneksi,("SELECT * FROM tb_driver  WHERE driver_status = '$kategori' ORDER BY AREA ASC "));
                            foreach($query as $data){
                        ?>
                        <tr>
                            <td class="text-center" style="font-size:11px;"><?php echo $no++ ?></td>
                            <td class="text-center">
    							<?php
    								if ($data['code_driver'] == "") {
    							?>
    							<a href="#modal_driver" data-toggle='modal' data-id="<?php echo $data['id_employe_driver']; ?>" style="color:black;font-weight:bold;font-size:20px;"><span data-toggle="tooltip" data-placement="bottom" title="detail driver"><?php echo $data['code_driver'] ?>-</span></a>
    							<?php
    								}else{
    							?>
    							<a href="#modal_driver" data-toggle='modal' data-id="<?php echo $data['id_employe_driver']; ?>" style="color:black;font-weight:bold;font-size:11px;"><span data-toggle="tooltip" data-placement="bottom" title="detail driver"><?php echo $data['code_driver'] ?></span></a>
    							<?php } ?>
    						</td>
                            <td class="text-center" style="font-size:11px;"><?php echo $data['nik_employe'] ?></td>
                            <td style="font-size:11px;"><?php echo $data['username_employe'] ?></td>
    						<td class="text-center" style="font-size:11px;">
    							<?php
    								if ($data['hire_date'] == "0000-00-00") {
    									echo "-";
    								}else{
    									echo $data['hire_date'];
    								}
    							?>
    						</td>
    						<td class="text-center" style="font-size:11px;">
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
                            <td style="font-size:11px;"><?php echo $data['phone_number1'] ?></td>
                            <?php
                                if (isset($_SESSION['level'])) {
                                    if ($_SESSION['level'] == 'super admin') {
                            ?>
                            <td class="text-center">
                                <a href="?page=edit_driver&id_employe_driver=<?php echo $data['id_employe_driver']; ?>" class="edit" data-toggle="tooltip" data-placement="bottom" title="edit data" style="color:rgb(2, 124, 18);font-size:17px;float:left;"><i class="fa fa-pencil-square-o"></i></a>
                                <a href="function/delete.php?aksi=del_driver&id_employe_driver=<?php echo $data['id_employe_driver']; ?>" class="delete" data-toggle="tooltip" data-placement="bottom" title="delete data" style="color:red;font-size:17px;"><i class="fa fa-times"></i></a>
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

        </div><hr>
        <a href="index.php?page=driver" class="btn btn-default btn-sm"><i class="fa fa-arrow-circle-left"></i> back</a>
    </div>
</div>

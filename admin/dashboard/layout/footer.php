<footer class="main-footer">
    <div class="container">
        <strong><center>Copyright &copy; 2017</center></strong>
    </div>
</footer>
</div><!-- wrapper -->

<!-- jQuery 2.1.4 -->
<script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/app.min.js"></script>
<!-- SlimScroll -->
<script src="../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../../plugins/fastclick/fastclick.min.js"></script>
<script src="../../dist/js/docs.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo1.js"></script>
<!-- Select2 -->
<script src="../../plugins/select2/select2.full.min.js"></script>
<!-- bootstrap datepicker -->
<script src="../../plugins/datepicker/bootstrap-datepicker.js"></script>
<script>
//Date picker
   $('#datepicker').datepicker({
     autoclose: true,
     format: 'yyyy-mm-dd',
   });
</script>
<script>
//Date picker
   $('#datepicker2').datepicker({
     autoclose: true,
     format: 'yyyy-mm-dd',
   });
</script>
<script>
  $(function () {
    //Initialize Select2 Elements
    $(".select2").select2();
});
</script>
<!-- DataTables -->
<script src="../../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../../plugins/datatables/dataTables.bootstrap.min.js"></script>
<script>
$(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": true,
        "ordering": false,
        "info": false,
        "autoWidth": false,
        "iDisplayLength": 25
    });
    $('#example3').DataTable({
        "paging": true,
        "lengthChange": true,
        "searching": true,
        "ordering": true,
        "info": false,
        "autoWidth": false
    });
    $('#example4').DataTable({
        "paging": false,
        "lengthChange": false,
        "searching": true,
        "ordering": false,
        "iDisplayLength": 50,
        "info": false,
        "autoWidth": false,
        "scrollY":"500px",
        "scrollCollapse": true
    });
});
</script>
<!-- Fancy Box -->
<script type="text/javascript" src="../../dist/fancybox/jquery.fancybox.pack.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $(".fancybox").fancybox()
});
</script>
<!-- summernote -->
<script src="../../dist/css/summernote.js"></script>
<script>
$(document).ready(function() {
    $('#summernote').summernote({
        height: 190,
        type: "POST",
        toolbar: [
            ['style', ['style']], // no style button
            ['style', ['bold', 'italic', 'underline', 'clear']],
            ['fontsize', ['fontsize']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['height', ['height']],
            //['insert', ['picture', 'link']], // no insert buttons
            //['table', ['table']], // no table button
            ['help', ['help']] //no help button
        ]
    });
});
</script>
<!-- sweetalert -->
<script type="text/javascript" src="../../plugins/sweetalert/sweetalert.min.js"></script>
<script>
        jQuery(document).ready(function($){
            $('.delete').on('click',function(){
                var getLink = $(this).attr('href');
                swal({
                        title: "Are you sure?",
                        text: "You will not be able to recover this imaginary file!",
                        html: true,
                        type: "warning",
                        confirmButtonColor: "#DD6B55",
                        confirmButtonText: "Yes, delete it!",
                        closeOnConfirm: false,
                        closeOnCancel: false,
                        showCancelButton: true,
                        },function(isConfirm){
                          if (isConfirm) {
                              swal("Deleted!", "Your imaginary file has been deleted.", "success");
                              window.setTimeout(function(){
                              window.location.href = getLink
                            } ,1500);
                          } else {
                            swal("Cancelled", "Your imaginary file is safe :)", "error");
                        }
                    });
                return false;
            });
        });
    </script>

    <script>
        jQuery(document).ready(function($){
            $('.edit').on('click',function(){
               var getLink = $(this).attr('href');
                swal({
                        title: ' Alert',
                        text: 'Edit Data?',
                        type: "warning",
                        html: true,
                        confirmButtonColor: '#39be5a',
                        closeOnConfirm: false,
                        closeOnCancel: false,
                        showCancelButton: true,
                        },function(isConfirm){
                          if (isConfirm) {
                            window.location.href = getLink
                          } else {
                            swal("Cancelled", "Your imaginary file is safe :)", "error");
                        }
                    });
                return false;
            });
        });
    </script>
<!-- animasi loading -->
<script>
    $(window).load(function() {
        $(".loading").fadeOut(1200);
    });
</script>
<!-- time -->
<script type="text/javascript">
    $(function() {
        startTime();
        $(".center").center();
        $(window).resize(function() {
            $(".center").center();
        });
    });

    /*  */
    function startTime()
    {
        var today = new Date();
        var h = today.getHours();
        var m = today.getMinutes();
        var s = today.getSeconds();

        // add a zero in front of numbers<10
        m = checkTime(m);
        s = checkTime(s);

        //Check for PM and AM
        var day_or_night = (h > 11) ? "PM" : "AM";

        //Convert to 12 hours system
        if (h > 12)
            h -= 12;

        //Add time to the headline and update every 500 milliseconds
        $('#time').html(h + ":" + m + ":" + s + " " + day_or_night);
        setTimeout(function() {
            startTime()
        }, 500);
    }

    function checkTime(i)
    {
        if (i < 10)
        {
            i = "0" + i;
        }
        return i;
    }

    /* CENTER ELEMENTS IN THE SCREEN */
    jQuery.fn.center = function() {
        this.css("position", "absolute");
        this.css("top", Math.max(0, (($(window).height() - $(this).outerHeight()) / 2) +
                $(window).scrollTop()) - 30 + "px");
        this.css("left", Math.max(0, (($(window).width() - $(this).outerWidth()) / 2) +
                $(window).scrollLeft()) + "px");
        return this;
    }
</script>
</body>

</html>

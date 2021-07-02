<!DOCTYPE html>
<?php
session_start();

	if(!isset($_SESSION['username']))
				{
						header("Location: ../login.php");
				}

			if(!isset($_SESSION['username']) && $_SESSION['role'] == 4)
			{

				header("Location: ../login.php");
			}
			elseif(isset($_SESSION['username']) && $_SESSION['role'] == 2)
			{

				echo "<script>window.open('../403.html','_self')</script>";

			}
			elseif(isset($_SESSION['username']) && $_SESSION['role'] == 1)
			{

				echo "<script>window.open('../403.html','_self')</script>";

			}
			elseif(isset($_SESSION['username']) && $_SESSION['role'] == 3)
			{

				echo "<script>window.open('../403.html','_self')</script>";

			}


include('function/function.php');
include('connection.php');

?>

<?php

$connect = new PDO("mysql:host=localhost;dbname=u712261449_evacuationcent", "u712261449_evacuati", "rodny123");
function fill_unit_select_box($connect)
{
	$user = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";

	$uquery = $connect->prepare($user);
	$uquery->execute();
	$rslt = $uquery->fetchAll();
	foreach($rslt as $rows){
	$bid = $rows['b_id'];
	$volunteerid = $rows['user_id'];
 $output = '';
 $query = "SELECT * FROM constituents where cons_stat='1' and b_id='$bid' and volunteer_id ='$volunteerid'";
 $statement = $connect->prepare($query);
 $statement->execute();
 $result = $statement->fetchAll();
 foreach($result as $row)
 {
  $output .= '<option value="'.$row["cons_add"].'">'.$row["cons_add"].'</option>';
 }
 return $output;
}
}
?>


<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="img/logo.png">
    <title>Evacuation Monitoring</title>
    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../plugins/bower_components/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />
    <!-- Menu CSS -->
    <link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- animation CSS -->
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="css/colors/default.css" id="theme" rel="stylesheet">
	<!-- toast CSS -->
    <link href="../plugins/bower_components/toast-master/css/jquery.toast.css" rel="stylesheet">
    <!-- morris CSS -->
    <link href="../plugins/bower_components/morrisjs/morris.css" rel="stylesheet">
    <!-- chartist CSS -->
    <link href="../plugins/bower_components/chartist-js/dist/chartist.min.css" rel="stylesheet">
    <link href="../plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css" rel="stylesheet">
    <!-- Calendar CSS -->
    <link href="../plugins/bower_components/calendar/dist/fullcalendar.css" rel="stylesheet" />
	<!--alerts CSS -->
    <link href="../plugins/bower_components/sweetalert/sweetalert.css" rel="stylesheet" type="text/css">





    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header">
    <!-- ============================================================== -->
    <!-- Preloader -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
        </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Wrapper -->
    <!-- ============================================================== -->
    <div id="wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header">
                <div class="top-left-part">
                    <!-- Logo -->
                    <a class="logo" href="index.php">
                        <!-- Logo icon image, you can use font-icon also --><b>
                        <!--This is dark logo icon--><img src="img/logo.png" alt="home" class="dark-logo" /><!--This is light logo icon--><img src="img/logo.png" alt="home" class="light-logo" />
                     </b>
                        <!-- Logo text image you can use text also --><span class="hidden-xs">
                        <!--This is dark logo text--><img src="img/logotext.png" alt="home" class="dark-logo" /><!--This is light logo text--><img src="img/newlog.png" alt="home" class="light-logo" />
                     </span> </a>
                </div>
                <!-- /Logo -->
                <!-- Search input and Toggle icon -->
                <ul class="nav navbar-top-links navbar-left">
                    <li><a href="javascript:void(0)" class="open-close waves-effect waves-light"><i class="ti-menu"></i></a></li>
                 </ul>
                <ul class="nav navbar-top-links navbar-right pull-right">


				<li class="dropdown">
                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="true"><b class="hidden-xs"><?php echo $_SESSION['username'];?></b><span class="caret"></span> </a>
                        <ul class="dropdown-menu dropdown-user animated flipInY">




							<li><a href="#" data-toggle="modal" data-target="#accsetting"><i class="ti-settings"></i> Account Setting</a></li>
                            <li role="separator" class="divider"></li>

                          <?php

				if(!isset($_SESSION['username']))
				{

				}
				else
				{
					echo "
					 <li><a href='../logout.php'><i class='fa fa-power-off'></i> Logout</a></li>
					";
				}

				?>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>

                    <li class="dropdown">








                        <!-- /.dropdown-user -->
                    </li>


                    <!-- /.dropdown -->
                </ul>
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
        <!-- End Top Navigation -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
          <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <div class="sidebar-head">
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">Navigation
                        </span></h3>
                </div>
                <div class="user-profile">

                </div>
                <ul class="nav" id="side-menu">
                    <li> <a href="index.php" class="waves-effect"><i class="mdi mdi-av-timer fa-fw" data-icon="v"></i> <span class="hide-menu"> Dashboard </span></a>

                    </li>

                    <li class="devider"></li>
                    <li> <a href="#" class="waves-effect" data-toggle="modal" data-target="#missing"><i class="mdi mdi-account-multiple-plus fa-fw"></i><span class="hide-menu">Add Missing</span></a></li>
                    <li class="devider"></li>

                    <li> <a href="#" class="waves-effect" data-toggle="modal" data-target="#rescued"><i class="mdi mdi-account-multiple-plus fa-fw"></i><span class="hide-menu">Add Rescued</span></a>

                    </li>

                    <li class="devider"></li>
			 <li> <a href="editcons.php" class="waves-effect"><i class="icon-settings fa-fw"></i><span class="hide-menu">Manage Constituents</span></a></li>
			 <li class="devider"></li>
                </ul>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Left Sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page Content -->
        <!-- ============================================================== -->






	   <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">DASHBOARD</h4>
                    </div>

                    <!-- /.col-lg-12 -->
                </div>



				<div class="sttabs tabs-style-bar">
				<nav>
                                        <ul>

                                            <li class="tab-current"><a href="#section-bar-1" class="icon-location-pin"><span>&nbsp;Add Family Member</span></a></li>

                                        </ul>

                                    </nav>


                                    <div class="content-wrap">
									<div class="form-group">



						   <section id="section-bar-1" class="content-current">
						   <h4>Head of the family: <?php selecthead(); ?></h4>
						   <div class="table-responsive">

							 <form method="POST" id="insert_form" enctype="multipart/form-data">

							 <span id="error"></span>
							 <table class="table" id="item_table">
							 <tr>
							   <th>Name</th>
							   <th>Middle name</th>
							   <th>Last name</th>
							   <th>Age</th>
							   <th>Gender</th>
							   <th><button type="button" name="add" class="btn btn-success btn-sm add"><span class="glyphicon glyphicon-plus">Add</span></button></th>
							  </tr>


							</table>

							<input id="update" type="submit" name="submit" value="Submit" class="btn btn-info btn-outline btn-rounded waves-effect waves-light" >
						</form>
										</div>
							</section>

                                    </div>
                                    <!-- /content -->
                                </div>
				 </div>

                <!-- /.row -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->

                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>

        </div>

		   <!-- /.container-fluid -->
            <footer class="footer text-center">&copy; Evacuation Monitoring </footer>
        <!-- /#page-wrapper -->
    </div>

    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.min.js"></script>
    <script src="../plugins/bower_components/datatables/jquery.dataTables.min.js"></script>
    <!-- start - This is for export functionality only -->

	 <!--Counter js -->
    <script src="../plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>
    <script src="../plugins/bower_components/counterup/jquery.counterup.min.js"></script>
    <!-- chartist chart -->
    <script src="../plugins/bower_components/chartist-js/dist/chartist.min.js"></script>
    <script src="../plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.min.js"></script>
    <!-- Sparkline chart JavaScript -->
    <script src="../plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
	<!--Style Switcher -->
    <script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>

	<script>
$(document).ready(function(){

 $(document).on('click', '.add', function(){
  var html = '';
  html += '<tr>';
  html += '<td><input type="text" name="cons_name[]" class="form-control cons_name" pattern="[a-zA-Z ]*$" title="use letters only" required /></td>';
  html += '<td><input type="text" name="cons_midname[]" class="form-control cons_midname" pattern="[a-zA-Z ]*$" title="use letters only" /></td>';
  html += '<td><input type="text" name="cons_lname[]" class="form-control cons_lname" pattern="[a-zA-Z ]*$" title="use letters only"  required /></td>';
  html += '<td><input type="text" name="cons_age[]" class="form-control cons_age" onkeyup="numbers(this)" maxlength="2" required /></td>';
  html += '<td><select name="cons_gender[]" class="form-control cons_gender" required ><option value="">Select</option><option>Male</option><option>Female</option></select></td>';
  html += '<td><button type="button" name="remove" class="btn btn-danger btn-sm remove"><span class="glyphicon glyphicon-minus"></span></button>';
  html += '<td><select style="display:none" name="b_id[]" class="form-control b_id"><?php echo bid($connect); ?></select></td>';
  html += '<td><select style="display:none" name="c_id[]" class="form-control c_id"><?php echo cid($connect); ?></select></td>';
  html += '<td><select style="display:none" name="p_id[]" class="form-control p_id"><?php echo pid($connect); ?></select></td>';
  html += '<td><select style="display:none" name="r_id[]" class="form-control r_id"><?php echo rid($connect); ?></select></td>';
  html += '<td><select style="display:none" name="cons_fid[]" class="form-control cons_fid"><?php echo fid($connect); ?></select></td>';
  html += '<td><select style="display:none" name="cons_add[]" class="form-control cons_add"><?php echo fill_unit_select_box($connect); ?></select></td></tr>';
  $('#item_table').append(html);
 });

 $(document).on('click', '.remove', function(){
  $(this).closest('tr').remove();
 });

 $('#insert_form').on('submit', function(event){
  event.preventDefault();
  var error = '';
  $('.cons_name').each(function(){
   var count = 1;

   count = count + 1;
  });

  $('.cons_midname').each(function(){
   var count = 1;

   count = count + 1;
  });

  $('.cons_lname').each(function(){
   var count = 1;

   count = count + 1;
  });

  $('.cons_age').each(function(){
   var count = 1;

   count = count + 1;
  });

  $('.cons_gender').each(function(){
   var count = 1;

   count = count + 1;
  });

  $('.cons_add').each(function(){
   var count = 1;

   count = count + 1;
  });

  $('.b_id').each(function(){
   var count = 1;

   count = count + 1;
  });

   $('.c_id').each(function(){
   var count = 1;

   count = count + 1;
  });

  $('.p_id').each(function(){
   var count = 1;

   count = count + 1;
  });

   $('.r_id').each(function(){
   var count = 1;

   count = count + 1;
  });

   $('.con_fid').each(function(){
   var count = 1;

   count = count + 1;
  });

  var form_data = $(this).serialize();
  if(error == '')
  {


   $.ajax({
    url:"insert.php",
    method:"POST",
    data:form_data,
    success:function(data)
    {

     if(data == 'ok')
     {
      $('#item_table').find("tr:gt(0)").remove();
      $('#error').html('<div class="alert alert-success">Successfully Family Member Inserted</div>');


	  swal(
				{
					type: "success",
					title: "successfully inserted",


				},
				function()
				{
				  window.location.href = "index.php";
				}
				);

	  $.ajax({
     url:'update.php',
     method:'POST',

    });

     }
    }
   });
  }
  else
  {
   $('#error').html('<div class="alert alert-danger">'+error+'</div>');
  }



 });

});
</script>

   <script>
	function letters(input)
	{
		var regex = /[^a-z]/gi;
		input.value = input.value.replace(regex, "");
	}
	function numbers(input)
	{

		var regex = /[^0-9]/g;
		input.value = input.value.replace(regex, "");
	}
</script>
    <!--Style Switcher -->
    <script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
	 <!-- Sweet-Alert  -->
    <script src="../plugins/bower_components/sweetalert/sweetalert.min.js"></script>
    <script src="../plugins/bower_components/sweetalert/jquery.sweet-alert.custom.js"></script>

</body>

</html>

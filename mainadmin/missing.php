<!DOCTYPE html>
<?php
session_start();

			if(!isset($_SESSION['username']))
				{
						header("Location: ../login.php");
				}
				if(!isset($_SESSION['username']) && $_SESSION['role'] == 1)
			{

				header("Location: ../login.php");
			}
			elseif(isset($_SESSION['username']) && $_SESSION['role'] == 2)
			{

				echo "<script>window.open('../403.html','_self')</script>";

			}
			elseif(isset($_SESSION['username']) && $_SESSION['role'] == 3)
			{

				echo "<script>window.open('../403.html','_self')</script>";

			}elseif(isset($_SESSION['username']) && $_SESSION['role'] == 4)
			{

				echo "<script>window.open('../403.html','_self')</script>";

			}


include('function/function.php');
include('connection.php'); ?>
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
<style> select {text-transform:uppercase} </style>


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

        <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">Navigation</span></h3>

    </div>

    <div class="user-profile">



    </div>

    <ul class="nav" id="side-menu">

        <li> <a href="index.php" class="waves-effect"><i class="mdi mdi-av-timer fa-fw" data-icon="v"></i> <span class="hide-menu"> Dashboard </span></a>



        </li>



        <li class="devider"></li>



        <li> <a href="#" class="waves-effect"><i class="mdi mdi-bookmark-plus fa-fw"></i> <span class="hide-menu">Add area<span class="fa arrow"></span></span></a>

            <ul class="nav nav-second-level">

                <li><a href="#" data-toggle="modal" data-target="#Region"><i data-icon="&#xe026;" class="linea-icon linea-basic fa-fw"></i> <span class="hide-menu">Region</span></a>

            </li>

                <li><a href="#" data-toggle="modal" data-target="#province"><i data-icon="&#xe025;" class="linea-icon linea-basic fa-fw"></i> <span class="hide-menu">Province</span></a></li>

                <li><a href="#" data-toggle="modal" data-target="#mcity"><i class="ti-layout-menu fa-fw"></i> <span class="hide-menu">City/Municipalities</span></a></li>



            </ul>

        </li>

        <li class="devider"></li>

        <li> <a href="#" class="waves-effect"><i class="wi wi-thunderstorm fa-fw"></i> <span class="hide-menu">Add Disaster<span class="fa arrow"></span></span></a>

            <ul class="nav nav-second-level">

                <li><a href="#" data-toggle="modal" data-target="#disaster"><i data-icon="&#xe026;" class="linea-icon linea-basic fa-fw"></i> <span class="hide-menu">Disaster</span></a></li>

                <li><a href="#" data-toggle="modal" data-target="#typhoon"><i data-icon="&#xe026;" class="wi wi-sleet fa-fw"></i> <span class="hide-menu">Typhoon name</span></a></li>

            </ul>

        <li class="devider"></li>  <li> <a href="typhoons.php" class="waves-effect"><i class="ti-lock fa-fw"></i> <span class="hide-menu">Disable typhoon name</span></a>
   <li class="devider"></li>

        <li> <a href="#" class="waves-effect" data-toggle="modal" data-target="#cityadmin"><i class="mdi mdi-account-multiple-plus fa-fw"></i> <span class="hide-menu">Add City admin</span></a>



        </li>





        <li class="devider"></li>

        <li> <a href="users.php" class="waves-effect"><i class="ti-settings fa-fw"></i> <span class="hide-menu">Manage Account</span></a>





        </li>

        <li class="devider"></li>

<li> <a href="javascript:void(0)" class="waves-effect" data-toggle="modal" data-target="#backres"><i class="ti-settings fa-fw"></i> <span class="hide-menu">Backup and restore</span></a></li>

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
                        <h4 class="page-title">DASHBOARD</h4> </div>

                    <!-- /.col-lg-12 -->
                </div>


				 <div class="row">
                    <div class="col-md-12 col-lg-4">
                        <div class="white-box analytics-info">
                            <div class="row">
                                <h3 class="box-title">Total Evacuees</h3>
                                <ul class="list-inline two-part">

                                    <li>
                                        <div id="sparklinedash">
                                            <a href="index.php" class="btn btn-primary btn-outline btn-rounded waves-effect waves-light" type="button"><span class="btn-label"><i class="ti-id-badge"></i></span>View</a></div>
                                    </li>
                                    <li class="text-right">
                                        <span class="counter text-primary">
                                        <?php
								global $con;
								$sql="SELECT * from evacuees where stat_id !=1";
								if ($result=mysqli_query($con,$sql))
									{// Return the number of rows in result set
										$rowcount=mysqli_num_rows($result);
										echo $rowcount;
									// Free result set
										mysqli_free_result($result);
									}
								?>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-4">
                        <div class="white-box analytics-info">
                            <div class="row">
                                <h3 class="box-title">missing</h3>
                                <ul class="list-inline two-part">

                                    <li>
                                        <div id="sparklinedash">
                                            <a href="missing.php" class="btn btn-danger btn-outline btn-rounded waves-effect waves-light" type="button"><span class="btn-label"><i class="ti-help-alt"></i></span>View</a></div>
                                    </li>
                                    <li class="text-right">
                                        <span class="counter text-danger">
                                        <?php
								global $con;
								$sql="SELECT * from missing where statusid=1";
								if ($result=mysqli_query($con,$sql))
									{// Return the number of rows in result set
										$rowcount=mysqli_num_rows($result);
										echo $rowcount;
									// Free result set
										mysqli_free_result($result);
									}
								?>
                                        </span>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-4">
                        <div class="white-box analytics-info">
                            <div class="row">
                                <h3 class="box-title">rescued</h3>
                            <ul class="list-inline two-part">

                                    <li>
                                        <div id="sparklinedash">
                                            <a href="rescued.php" class="btn btn-info btn-outline btn-rounded waves-effect waves-light" type="button"><span class="btn-label"><i class="ti-map-alt"></i></span>View</a></div>
                                    </li>
                                    <li class="text-right">
                                        <span class="counter text-info">
                                        <?php
								global $con;
								$sql="SELECT * from rescued where statusid=1";
								if ($result=mysqli_query($con,$sql))
									{// Return the number of rows in result set
										$rowcount=mysqli_num_rows($result);
										echo $rowcount;
									// Free result set
										mysqli_free_result($result);
									}
								?>
                                        </span>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>





                <!-- /row -->
				<div class="sttabs tabs-style-bar">
                                    <nav>
                                        <ul>
                                            <li class="tab-current"><a href="#section-bar-1" class="mdi mdi-account-multiple-outline"><span>&nbsp;Missing reports</span></a></li>
											 <li class=""><a href="#section-bar-2" class="mdi mdi-account-multiple-outline"><span>&nbsp;Missing person</span></a></li>

                                          </ul>
                                    </nav>
                                    <div class="content-wrap">


												<!-- barangay -->
										     <!-- barangay -->
											   <!-- barangay -->

										 <section id="section-bar-1" class="content-current">

										<div class="table-responsive">
                                <table id="myTable" class="table table-striped display">
                                    <thead>
                                        <tr >
                                            <th>Barangay</th>
                                            <th>Total Missing</th>
                                            <th>Male</th>
                                            <th>Female</th>

                                        </tr>

                                    </thead>
                                    <tbody>



									<?php


									global $con;

									$sql = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";

										$query = $con->query($sql);
										while($row = $query->fetch_assoc()){

										$cid = $row['c_id'];

									$result = mysqli_query($con, "SELECT
                                    ct.cities as city,
                                    count(ms.missing_id) as missing,
									COUNT(CASE WHEN UPPER(ms.gender) = 'Male' THEN 1 END) Male,
									COUNT(CASE WHEN UPPER(ms.gender) = 'Female' THEN 1 END) Female
									FROM city ct
									INNER JOIN missing ms on ms.c_id=ct.c_id
                                    where ms.statusid=1 GROUP BY ct.cities");

										}
									while ($row = mysqli_fetch_assoc($result)):

										?>


									<tr >

									<td><?php echo $row['city'];?></td>
									<td><?php echo $row['missing'];?></td>
									<td><?php echo $row['Male'];?></td>
									<td><?php echo $row['Female'];?></td>
									</tr>
									<?php endwhile; ?>




                                    </tbody>
                                </table>
									</div>


                                         </section>

                                        <section id="section-bar-2" class="">

										<div class="table-responsive">
										<table id="myTable1" class="table table-striped display">
                                    <thead>
                                       <tr align="center">
									<th>Image</th>
									<th>Full Name</th>

									<th>Age</th>
									<th>Gender</th>
                                    <th>Relative contact#</th>
                                    <th>City</th>
									<th>View</th>
									</tr>

                                    </thead>
                                    <tbody>



					<?php
							function _decrypt($message, $hmac = FALSE)
								{
								date_default_timezone_set('UTC');
								$secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';
								$encryptionMethod = 'AES-256-CBC';
								$iv = base64_decode(substr($message, 0, 24));
								return openssl_decrypt(substr($message, 24), $encryptionMethod, $secret, 0, $iv);
								}
									$secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';

									global $con;


									$result = mysqli_query($con, "select
									ms.missing_id as misid,
									ms.image as img,
									ms.name as fname,
									ms.midname as midname,
									ms.lastname as lname,
                                    ms.age as ages,
                                    ms.contact as num,
									ms.gender as genders,
									ms.description as descript,
									ct.cities as citys,
									us.contact as citynum
									from missing ms
									LEFT JOIN users us on us.c_id=ms.c_id
                                    LEFT JOIN city ct on ct.c_id=ms.c_id
                                    where ms.statusid=1
                                    group by ms.missing_id");

									while ($row = mysqli_fetch_assoc($result)):


									?>




									<tr >

									<td><?php echo "<img src='../missingrescuedimage/".$row['img']."' width='60' height='60'>" ?></td>

									<td style="text-transform:uppercase"> <?php echo _decrypt($row['fname'],$secret);?>&nbsp<?php echo _decrypt($row['midname'],$secret);?> &nbsp<?php echo _decrypt($row['lname'],$secret);?> </td>
                                    <td><?php echo $row['ages'];?></td>
									<td style="text-transform:uppercase"><?php echo $row['genders'];?></td>
									<td><?php echo _decrypt($row['num'],$secret);?></td>
                                    <td style="text-transform:uppercase"><?php echo $row['citys'];?></td>
									<td>
										<?php echo "<a href='#missing_".$row['misid']."' class='btn btn-info btn-sm' data-toggle='modal'><span class='glyphicon glyphicon-edit'></span> View</a>"; ?>

									</td>
									</tr>
									<?php
									include('view.php');
									endwhile; ?>




                                    </tbody>
                                </table>
										</div>

                                         </section>
										   <!-- volunteer -->
										     <!-- volunteer -->
											   <!-- volunteer -->
                                    </div>
                                    <!-- /content -->
                 </div>



				</div>


				 <!-- modal -->

				 <!-- /.modal -->
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->
            <footer class="footer text-center">&copy; Evacuation Monitoring </footer>
        </div>

        <!-- /#page-wrapper -->
      <?php include('modaladd.php'); ?>
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
	<script src="js/cbpFWTabs.js"></script>
    <script type="text/javascript">
    (function() {
        [].slice.call(document.querySelectorAll('.sttabs')).forEach(function(el) {
            new CBPFWTabs(el);
        });
    })();
    </script>






    <!-- end - This is for export functionality only -->
    <script>
    $(document).ready(function() {
        $('#myTable').DataTable();
  $('#myTable1').DataTable();
        $(document).ready(function() {
            var table = $('#example').DataTable({
                "columnDefs": [{
                    "visible": false,
                    "targets": 2
                }],
                "order": [
                    [2, 'asc']
                ],
                "displayLength": 25,
                "drawCallback": function(settings) {
                    var api = this.api();
                    var rows = api.rows({
                        page: 'current'
                    }).nodes();
                    var last = null;
                    api.column(2, {
                        page: 'current'
                    }).data().each(function(group, i) {
                        if (last !== group) {
                            $(rows).eq(i).before('<tr class="group"><td colspan="5">' + group + '</td></tr>');
                            last = group;
                        }
                    });
                }
            });
            // Order by the grouping
            $('#example tbody').on('click', 'tr.group', function() {
                var currentOrder = table.order()[0];
                if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {
                    table.order([2, 'desc']).draw();
                } else {
                    table.order([2, 'asc']).draw();
                }
            });
        });
    });
    $('#example23').DataTable({
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    });
    </script>
    <!--Style Switcher -->
    <script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
	 <!-- Sweet-Alert  -->
    <script src="../plugins/bower_components/sweetalert/sweetalert.min.js"></script>
    <script src="../plugins/bower_components/sweetalert/jquery.sweet-alert.custom.js"></script>



<script>
$(document).ready(function(){
    $('#country').on('change', function(){
        var countryID = $(this).val();
        if(countryID){
            $.ajax({
                type:'POST',
                url:'ajaxData.php',
                data:'country_id='+countryID,
                success:function(html){
                    $('#state').html(html);
                    $('#city').html('<option value="">Select province first</option>');
                }
            });
        }else{
            $('#state').html('<option value="">Select region first</option>');
            $('#city').html('<option value="">Select province first</option>');
        }
    });

    $('#state').on('change', function(){
        var stateID = $(this).val();
        if(stateID){
            $.ajax({
                type:'POST',
                url:'ajaxData.php',
                data:'state_id='+stateID,
                success:function(html){
                    $('#city').html(html);
                }
            });
        }else{
            $('#city').html('<option value="">Select province first</option>');
        }
    });
});
</script>

<script type="text/javascript">
function change_region()
{
	var xmlhttp=new XMLHttpRequest();
	xmlhttp.open("GET","city.php?region="+document.getElementById("idregion").value,false);
	xmlhttp.send(null);
	document.getElementById("idprov").innerHTML=xmlhttp.responseText;

}
</script>

</body>

</html>
